import os
import numpy as np
import pytest
from red_queen.games.characterization import backends, run_qiskit_quntum_volume

# Importing standard Qiskit libraries
from qiskit import QuantumCircuit, transpile, Aer, IBMQ, execute
from qiskit.circuit.library import QuantumVolume

# Function to generate quantum volume circuits

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm/qv/")


CIRCUITS = [
    [
        QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"{i}qubits/qv{index}.qasm"))
        for index in range(150)
    ]
    for i in range(2, 11)
]


def generate_qv_circuits(num_qubits, numtrials=100):
    circuits = []
    for i in range(numtrials):
        circuit = QuantumVolume(num_qubits).decompose()
        circuit.measure_all()
        circuits.append(circuit)
    return circuits


@pytest.mark.qiskit
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_qv(benchmark, backend):
    shots = 50
    benchmark.name = "Quantum Volume"
    run_qiskit_quntum_volume(benchmark, CIRCUITS, backend, shots)


if __name__ == "__main__":
    for i in range(2, 11):
        circuits = generate_qv_circuits(i, 150)
        for index, circuit in enumerate(circuits):
            circuit.qasm(filename=os.path.join(QASM_DIR, f"{i}qubits/qv{index}.qasm"))
