# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

# Copyright 2022 SRI-International organization

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# GitHub links:
#   - Circuit: https://github.com/SRI-International/QC-App-Oriented-Benchmarks/
#       blob/master/hamiltonian-simulation/qiskit/hamiltonian_simulation_benchmark.py
#   - Pre-calculated data: https://github.com/SRI-International/QC-App-Oriented-Benchmarks/
#       blob/master/hamiltonian-simulation/_common/precalculated_data.json
# Changes made:
#   - Changes have been made to the circuit-generating functions to include numpy.
#   - The version with individual xx, yy and zz_gates was used.
#   - Other changes have been made for this code to work with red-queen.

"""Benchmark Hamiltonian Simulation Circuit"""

import os

import pytest

import numpy as np

from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister

from red_queen.games.applications import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
NUM_QUBITS = 8

# Pre-calculated data from git repository
H_X = [
    -0.3841300947500583,
    0.03878295861060144,
    0.5365953230759468,
    0.5784414723417195,
    0.7411241249516469,
    -0.6241572167558622,
    -0.4609895087661635,
    -0.007615718024277518,
    0.4782434942274214,
    -0.6100960167167189,
    -0.6405095065481761,
    0.07765251715030663,
    -0.4344687907780449,
    0.5218797389241974,
    -0.46061411670810526,
    -0.41296098137198967,
    0.9248110232255489,
    0.8264286523422202,
    0.1363496908115518,
    -0.029015291992941616,
]
H_Z = [
    0.13788044023849122,
    -0.8680715448211151,
    0.7762213398005142,
    0.8593163543481379,
    0.35938408275225986,
    0.08855163284966783,
    -0.6243013156839929,
    0.2365269243700283,
    -0.2517444632292354,
    0.867164336543846,
    0.296282404856135,
    0.3435823547580954,
    0.8631471356486622,
    0.3399761708363991,
    -0.5357509772547095,
    -0.4883312979088732,
    -0.5500163526392827,
    -0.8385986892423059,
    -0.6319995154933682,
    0.44989873651812795,
]
K = 3
W = 10
T = 0.01


# xx gate
def xx_gate(angle):
    qc = QuantumCircuit(2, name="xx")
    for i in range(2):
        qc.h(i)
    qc.cx(0, 1)
    qc.rz(np.pi * angle, 1)
    qc.cx(0, 1)
    for i in range(2):
        qc.h(i)

    return qc


# yy gate
def yy_gate(angle):
    qc = QuantumCircuit(2, name="yy")
    for i in range(2):
        qc.s(i)
    for i in range(2):
        qc.h(i)
    qc.cx(0, 1)
    qc.rz(np.pi * angle, 1)
    qc.cx(0, 1)
    for i in range(2):
        qc.h(i)
    for i in range(2):
        qc.sdg(i)

    return qc


# zz_gate
def zz_gate(angle):
    qc = QuantumCircuit(2, name="zz")
    qc.cx(0, 1)
    qc.rz(np.pi * angle, 1)
    qc.cx(0, 1)

    return qc


# Hamiltonian simulation circuit generator, where:
#    n = number of qubits
#    k_order = trotterization order (number of trotter steps)
#    time = time the simulation runs.
#    w = strength of disorder
#    h_x and h_z = disordered fields.
def hamiltonian_sim(n: int, k_order: int, time, w: int, h_x, h_z):
    qr = QuantumRegister(n)
    cr = ClassicalRegister(n)
    qc = QuantumCircuit(qr, cr, name="Hamiltonian")
    angle = time / k_order

    # Create binary state of "10101010..."
    for i in range(0, n, 2):
        qc.x(qr[i])
    qc.barrier()

    # Apply k amount of trotterization steps
    for i in range(k_order):

        # Pauli spin
        for j in range(n):
            qc.rx(2 * angle * w * h_x[j], qr[j])
        for j in range(n):
            qc.rz(2 * angle * w * h_z[j], qr[j])
        qc.barrier()

        # Apply xx_gate:
        for j in range(2):
            for k in range(j % 2, n - 1, 2):
                qc.append(xx_gate(angle).to_instruction(), [qr[k], qr[(k + 1) % n]])

        # Apply yy_gate:
        for j in range(2):
            for k in range(j % 2, n - 1, 2):
                qc.append(yy_gate(angle).to_instruction(), [qr[k], qr[(k + 1) % n]])

        # Apply zz_gate:
        for j in range(2):
            for k in range(j % 2, n - 1, 2):
                qc.append(zz_gate(angle).to_instruction(), [qr[k], qr[(k + 1) % n]])

        qc.barrier()

    # Measure all qubits
    for qubit in range(n):
        qc.measure(qr[qubit], cr[qubit])

    return qc


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_ft(benchmark, optimization_level, backend):
    shots = 65536
    # Generate binary string based on number of qubits
    binary_string = ""
    for i in range(NUM_QUBITS):
        binary_string += "1" if i % 2 == 0 else "0"
    binary_string = binary_string[::-1]
    expected_counts = {binary_string: shots}
    benchmark.name = "Hamiltonian Simulation"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "hamiltonian_sim.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    hamiltonian_sim(NUM_QUBITS, K, T, W, H_X[:NUM_QUBITS], H_Z[:NUM_QUBITS]).qasm(
        filename=os.path.join(QASM_DIR, "hamiltonian_sim.qasm")
    )
