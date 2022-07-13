# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Benchmark for Quantum Fourier Transform"""

import os
import random
import pytest
from applications import backends, run_qiskit_circuit
import numpy as np

# Importing standard Qiskit libraries
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister

DIRECTORY = "qasm/qft"
QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), DIRECTORY)
SECRET_INT = random.randint(1, 20)


def generate_ft_circuit_1(integer_value):
    binary = format(integer_value, "b")
    qubits = QuantumRegister(len(binary))
    bits = ClassicalRegister(len(binary))
    qc = QuantumCircuit(qubits, bits, name="main")
    for digit, number in enumerate(binary):
        if number == "1":
            qc.x((len(qubits) - 1) - digit)
    qc.barrier()
    # Let's try and recreate the quantum Fourier Transform SubCircuit
    for qubit in range(len(qubits) - 1, -1, -1):
        qc.h(qubit)
        if not qubit == 0:
            for subqubit in range(len(qubits) - 1, qubit - 1, -1):
                qc.crz(np.pi / np.power(2, subqubit - (qubit - 1)), subqubit - 1, subqubit)
    qc.barrier()
    # We can continue implementing our gates:
    for qubit in range(len(qubits)):
        qc.rz(np.pi / np.power(2, qubit), qubit)
    qc.barrier()
    # Finally we the QFT circuit backwards by negating previous rotations.
    for qubit in range(len(qubits)):
        if not qubit == 0:
            for subqubit in range(qubit, len(qubits)):
                qc.crz((-1) * np.pi / np.power(2, subqubit - (qubit - 1)), subqubit - 1, subqubit)
        qc.h(qubit)
    qc.barrier()
    # We can now measure and return the circuit
    for qubit in range(len(qubits)):
        qc.measure(qubit, qubit)
    return qc


def generate_ft_circuit_2(integer_value):
    binary = format(integer_value, "b")
    qubits = QuantumRegister(len(binary))
    bits = ClassicalRegister(len(binary))
    qc = QuantumCircuit(qubits, bits, name="main")
    for qubit in range(len(qubits)):
        qc.h(qubit)
    qc.barrier()
    for qubit in range(len(qubits)):
        qc.rz(integer_value * np.pi / np.power(2, qubit), qubit)
    qc.barrier()
    for qubit in range(len(qubits)):
        if not qubit == 0:
            for subqubit in range(qubit, len(qubits)):
                qc.crz((-1) * np.pi / np.power(2, subqubit - (qubit - 1)), subqubit - 1, subqubit)
        qc.h(qubit)
    qc.barrier()
    for qubit in range(len(qubits)):
        qc.measure(qubit, qubit)
    return qc


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("method", ["1", "2"])
def bench_qiskit_ft(benchmark, optimization_level, backend, method):
    shots = 65536
    binary = format(SECRET_INT, "b")
    binary_1 = format((SECRET_INT + 1) % (2 ** (len(binary))), "b").zfill(len(binary))
    expected_counts = {binary_1: shots} if method == "1" else {binary: shots}
    if method == "1":
        benchmark.name = "Quantum Fourier Transform v1"
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"ft_1_{SECRET_INT}.qasm"))
    else:
        benchmark.name = "Quantum Fourier Transform v2"
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"ft_2_{SECRET_INT}.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    generate_ft_circuit_1(SECRET_INT).qasm(
        filename=os.path.join(QASM_DIR, f"ft_1_{SECRET_INT}.qasm")
    )
    generate_ft_circuit_2(SECRET_INT).qasm(
        filename=os.path.join(QASM_DIR, f"ft_2_{SECRET_INT}.qasm")
    )
