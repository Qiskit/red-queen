import os

import pytest
import random

from applications import backends, run_qiskit_circuit

"""Benchmark for Quantum Fourier Transform"""

import numpy as np

# Importing standard Qiskit libraries
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm\\qft\\")
SECRET_INT = random.randint(1, 20)

def generate_ft_circuit_1(integer_value):
    binary = format(integer_value, "b")
    qubits = QuantumRegister(len(binary))
    bits = ClassicalRegister(len(binary))
    qc = QuantumCircuit(qubits, bits, name="main")
    for i in range(len(binary)):
        if binary[i] == "1":
            qc.x((len(qubits)-1) - i)
    qc.barrier()
    # Let's try and recreate the quantum Fourier Transform SubCircuit from the paper:
    for qubit in range(len(qubits)-1,-1,-1):
        qc.h(qubit)
        if not qubit == 0:
            for subqubit in range(len(qubits)-1,qubit-1,-1):
                qc.crz(np.pi/np.power(2,subqubit-(qubit - 1)),subqubit-1, subqubit)
                # print(qubit, subqubit, subqubit-1, np.power(2,subqubit-(qubit - 1)))
    qc.barrier()
    
    # Now that the circuit was implemented successfully (??) We can continue implementing our gates:
    for qubit in range(len(qubits)):
        qc.rz(np.pi/np.power(2,qubit), qubit)
        #print(qubit, "pi/" + str(np.power(2,qubit)))
    qc.barrier()
    
    # Finally we implement the circuit backwards, we also negate the rotations done at the beginning.
    for qubit in range(len(qubits)):
        if not qubit == 0:
            for subqubit in range(qubit, len(qubits)):
                qc.crz((-1)*np.pi/np.power(2,subqubit-(qubit - 1)), subqubit-1, subqubit)
                # print(qubit, subqubit, subqubit-1, np.power(2,subqubit-(qubit - 1)))
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
        qc.rz(integer_value*np.pi/np.power(2,qubit), qubit)
        #print(qubit, "pi/" + str(np.power(2,qubit)))
    qc.barrier()
    for qubit in range(len(qubits)):
        if not qubit == 0:
            for subqubit in range(qubit, len(qubits)):
                qc.crz((-1)*np.pi/np.power(2,subqubit-(qubit - 1)), subqubit-1, subqubit)
                # print(qubit, subqubit, subqubit-1, np.power(2,subqubit-(qubit - 1)))
        qc.h(qubit)
    qc.barrier()
    for qubit in range(len(qubits)):
        qc.measure(qubit,qubit)
    return qc

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("method", ["1", "2"])
def bench_qiskit_ft(benchmark, optimization_level, backend, method):
    shots = 65536
    binary = format(SECRET_INT, "b")
    expected_counts = { format((SECRET_INT+1)%(2**(len(binary))), "b").zfill(len(binary)) : shots} if method == "1" else {format(SECRET_INT, "b") : shots}
    if method == "1":
        benchmark.name = "Quantum Fourier Transform v1"
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"ft_1_{SECRET_INT}.qasm"))
    else:
        benchmark.name = "Quantum Fourier Transform v2"
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"ft_2_{SECRET_INT}.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)

if __name__ == "__main__":
    generate_ft_circuit_1(SECRET_INT).qasm(filename=os.path.join(QASM_DIR, f"ft_1_{SECRET_INT}.qasm"))
    generate_ft_circuit_2(SECRET_INT).qasm(filename=os.path.join(QASM_DIR, f"ft_2_{SECRET_INT}.qasm"))