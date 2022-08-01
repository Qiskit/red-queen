# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0 License.
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

# github repository:
# https://github.com/SRI-International/QC-App-Oriented-Benchmarks/blob/6cec5c69cd928b96efcf27b8e72b2573ea4c3802/grovers/qiskit/grovers_benchmark.py
# Variable names from functions were modified to comply with pylint recommendations, and original benchmark
# code was ommited as only grover's search algorithm's circuit construction was the only code needed
"""
Grover's Search Benchmark Program - Qiskit
"""
import os

import pytest

import numpy as np
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from red_queen.games.applications import backends, run_qiskit_circuit

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")


_USE_MCX_SHIM = False
QUBIT_COUNT = 4
SECRET_STATE = 12


np.random.seed(0)


############### Circuit Definition


def grovers_search(num_qubits, marked_item):
    """This function creates the grovers search algorithm circuit"""
    quantum_c = None
    n_iterations = int(np.pi * np.sqrt(2**num_qubits) / 4)
    # allocate qubits
    q_r = QuantumRegister(num_qubits)
    c_r = ClassicalRegister(num_qubits)
    q_c = QuantumCircuit(q_r, c_r, name="main")

    # Start with Hadamard on all qubits
    for i_qubit in range(num_qubits):
        q_c.h(q_r[i_qubit])

    # loop over the estimated number of iterations
    for _ in range(n_iterations):

        # q_c.barrier()
        # add the grover oracle
        q_c.append(add_grover_oracle(num_qubits, marked_item).to_instruction(), q_r)

        # add the diffusion operator
        q_c.append(add_diffusion_operator(num_qubits).to_instruction(), q_r)

    # q_c.barrier()

    # measure all qubits
    q_c.measure(q_r, c_r)

    # save smaller circuit example for display
    if quantum_c is None or num_qubits <= 5:
        if num_qubits < 9:
            quantum_c = q_c

    # return a handle on the circuit
    return q_c


############## Grover Oracle


def add_grover_oracle(num_qubits, marked_item):
    """This line of code creates the oracles needed for grover's circuit"""
    grover_oracle = None
    marked_item_bits = format(marked_item, f"0{num_qubits}b")[::-1]

    q_r = QuantumRegister(num_qubits)
    q_c = QuantumCircuit(q_r, name="oracle")

    for (q_var, bit) in enumerate(marked_item_bits):
        if not int(bit):
            q_c.x(q_var)

    q_c.h(num_qubits - 1)

    if _USE_MCX_SHIM:
        add_mcx(q_c, list(range(num_qubits - 1)), num_qubits - 1)
    else:
        q_c.mcx(list(range(num_qubits - 1)), num_qubits - 1)

    q_c.h(num_qubits - 1)

    # q_c.barrier()

    for (q_var, bit) in enumerate(marked_item_bits):
        if not int(bit):
            q_c.x(q_var)

    if grover_oracle is None or num_qubits <= 5:
        if num_qubits < 9:
            grover_oracle = q_c

    return q_c


############## Grover Diffusion Operator


def add_diffusion_operator(num_qubits):
    """This function creates the diffusion operator for grover's circuit"""
    diffusion_operator = None
    q_r = QuantumRegister(num_qubits)
    q_c = QuantumCircuit(q_r, name="diffuser")

    for i_qubit in range(num_qubits):
        q_c.h(q_r[i_qubit])
    for i_qubit in range(num_qubits):
        q_c.x(q_r[i_qubit])
    q_c.h(num_qubits - 1)

    if _USE_MCX_SHIM:
        add_mcx(q_c, list(range(num_qubits - 1)), num_qubits - 1)
    else:
        q_c.mcx(list(range(num_qubits - 1)), num_qubits - 1)

    q_c.h(num_qubits - 1)

    # q_c.barrier()

    for i_qubit in range(num_qubits):
        q_c.x(q_r[i_qubit])
    for i_qubit in range(num_qubits):
        q_c.h(q_r[i_qubit])

    if diffusion_operator is None or num_qubits <= 5:
        if num_qubits < 9:
            diffusion_operator = q_c

    return q_c


############### MCX shim

# single cx / cu1 unit for mcx implementation
def add_cx_unit(q_c, cxcu1_unit, controls, target):
    """This function creates the MCX shim for grover's circuit"""
    num_controls = len(controls)
    i_qubit = cxcu1_unit[1]
    j_qubit = cxcu1_unit[0]
    theta = cxcu1_unit[2]

    if j_qubit is not None:
        q_c.cx(controls[j_qubit], controls[i_qubit])
    q_c.cu1(theta, controls[i_qubit], target)

    i_qubit = i_qubit - 1
    if j_qubit is None:
        j_qubit = i_qubit + 1
    else:
        j_qubit = j_qubit - 1

    if theta < 0:
        theta = -theta

    new_units = []
    if i_qubit >= 0:
        new_units += [[j_qubit, i_qubit, -theta]]
        new_units += [[num_controls - 1, i_qubit, theta]]

    return new_units


# mcx recursion loop
def add_cxcu1_units(q_c, cxcu1_units, controls, target):
    """This function recursively creates the MCX shim for grover's circuit"""
    new_units = []
    for cxcu1_unit in cxcu1_units:
        new_units += add_cx_unit(q_c, cxcu1_unit, controls, target)
    cxcu1_units.clear()
    return new_units


def add_mcx(q_c, controls, target):
    """mcx gate implementation: brute force and inefficent
    start with a single CU1 on last control and target
    and recursively expand for each additional control"""
    num_controls = len(controls)
    theta = np.pi / 2**num_controls
    q_c.h(target)
    cxcu1_units = [[None, num_controls - 1, theta]]
    while len(cxcu1_units) > 0:
        cxcu1_units += add_cxcu1_units(q_c, cxcu1_units, controls, target)
    q_c.h(target)


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_grovers(benchmark, optimization_level, backend):
    """This code is what is used to benchmark grover's search algorithm"""
    shots = 70000
    expected_counts = {format(SECRET_STATE, "b").zfill(QUBIT_COUNT): shots}
    benchmark.name = "Grover's Search Algorithm"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "grover.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    # saved circuits for display
    grovers_search(QUBIT_COUNT, SECRET_STATE).qasm(filename=os.path.join(QASM_DIR, "grover.qasm"))
