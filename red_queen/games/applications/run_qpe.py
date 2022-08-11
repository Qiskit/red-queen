# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

# My code was inspired from the paper cited above. It provided a lot of directionality for the
# structure of the code, however nothing is directly copied from it.
# Paper- https://arxiv.org/pdf/2110.03137.pdf
# GitHub- https://github.com/SRI-International/QC-App-Oriented-Benchmarks

"""Quantum Phase Estimation"""

import os
import math
import pytest
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from applications import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
SECRET_ANGLE = 1 / 8
NUMQUBITS = 4

# This will convert the fraction into binary for the secret angle
# Code taken from https://www.codespeedy.com/convert-decimal-fraction-to-binary-in-python/
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


# The inverse QFT function was taken from the qiskit textbook from the section discussing
# Quantum Phase Estimation

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

    for j in range(cqubits):
        qc.cp(phase_ * repetition, j, cqubits)
        repetition *= 2

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
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "qpe.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    quantum_phase_estimation(NUMQUBITS, SECRET_ANGLE).qasm(
        filename=os.path.join(QASM_DIR, "qpe.qasm")
    )
