# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------


"""
My code was inspired from the paper cited above. It provided a lot of directionality for the
structure of the code, however nothing is directly copied from it. 
https://arxiv.org/pdf/2110.03137.pdf
 
 """

"""Quantum Phase Estimation"""

import os
import math
import pytest
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from applications import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm/qpe/")
SECRET_ANGLE = 1 / 8
NUMQUBITS = 3

# qpe3 = Quantum_Phase_Estimation(NUMQUBITS,SECRET_ANGLE)
# aer_sim = Aer.get_backend('aer_simulator')
# shots = 4096
# t_qpe3 = transpile(qpe3, aer_sim)
# qobj = assemble(t_qpe3, shots=shots)
# results = aer_sim.run(qobj).result()
# answer = results.get_counts()


# This will convert the fraction into binary for the secret angle
def fraction_bin(num, precision=10):
    binary = ""
    while precision and num != 0:
        num *= 2
        bit = int(num)
        if bit == 1:
            num -= bit
            binary += "1"
        else:
            binary += "0"
        precision -= 1
    return binary


""" The inverse QFT function was taken from the qiskit textbook from the section discussing 
Quantum Phase Estimation """

# Inverse QFT Function
def qft_dagger(qc, n):
    """n-qubit QFTdagger the first n qubits in circ"""
    # Don't forget the Swaps!
    for qubit in range(n // 2):
        qc.swap(qubit, n - qubit - 1)
    for j in range(n):
        for m in range(j):
            qc.cp(-math.pi / float(2 ** (j - m)), m, j)
        qc.h(j)


# Construct the phase gates and include matching gate representation as readme circuit
# def CPhase(angle, exponent):

#     qc = QuantumCircuit(1, name=f"U^{exponent}")
#     qc.cp(angle*exponent, 0)
#     phase_gate = qc.to_gate().control(1)

#     return phase_gate, qc


def quantum_phase_estimation(num_of_qubits, angle):

    cqubits = num_of_qubits - 1  # there is one less for the counting qubits

    # setting up the circuit
    qr = QuantumRegister(num_of_qubits)
    cr = ClassicalRegister(cqubits)
    qc = QuantumCircuit(qr, cr)

    # initialize the state
    qc.x(cqubits)

    # next apply the Hadmard gate to put the qubits in superposition
    for qubit in range(cqubits):
        qc.h(qr[qubit])

    # next apply the controlled unitary operation. this applies a phase to only the |1> state.
    repetition = 1

    # Phase of QFT
    phase_ = 2 * math.pi * angle

    # gate_qc = QuantumCircuit(1)
    # gate_qc.p(math.pi / 4, 0)
    # phase_gate = gate_qc.to_gate().control(1)

    # qc = QuantumCircuit(1)
    # qc.append(phase_gate, 0)

    # gate_qc = QuantumCircuit(1)
    # gate_qc.p(math.pi / 8)
    # phase_gate = gate_qc.to_gate().control(1)

    # qc = QuantumCircuit(1)
    # qc.append(phase_gate, 0)
    # #qc.qasm()

    for j in range(cqubits):
        # cp,Pgate= CPhase(Phase, repetition)
        # qc.append(cu, [j, cqubits])
        qc.cp(phase_ * repetition, j, cqubits)
        repetition *= 2

    # define your Unitary gate
    # Pgate,U = CPhase(Phase, repetition)

    qc.barrier()

    # Now apply the inverse QFT
    qft_dagger(qc, cqubits)

    # Lastly measure it
    qc.measure([qr[m] for m in range(cqubits)], list(range(cqubits)))

    return qc


# Benchmarking


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_bv(benchmark, optimization_level, backend):
    shots = 65536
    expected_counts = {fraction_bin(SECRET_ANGLE): shots}
    benchmark.name = "Quantum Phase Estimation"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"qpe{NUMQUBITS}.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    quantum_phase_estimation(NUMQUBITS, SECRET_ANGLE).qasm(
        filename=os.path.join(QASM_DIR, f"qpe{NUMQUBITS}.qasm")
    )

    # Quantum_Phase_Estimation(i, SECRET_ANGLE).qasm(filename=os.path.join(QASM_DIR, f"qpe{i}.qasm"))
