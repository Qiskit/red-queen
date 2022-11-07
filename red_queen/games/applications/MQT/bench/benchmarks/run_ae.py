# Code from https://qiskit.org/documentation/finance/tutorials/00_amplitude_estimation.html

import os
import pytest

from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from red_queen.games.applications import backends, run_qiskit_circuit

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")

from qiskit.algorithms import AmplitudeEstimation

from red_queen.games.applications.MQT.bench.utils import utils

def build_ae_circuit(num_qubits: int, mid_circuit_measure=False):
    """Returns a quantum circuit implementing Quantum Amplitude Estimation.
    Keyword arguments:
    num_qubits -- number of qubits of the returned quantum circuit
    """

    ae = AmplitudeEstimation(
        num_eval_qubits=num_qubits - 1,  # -1 because of the to be estimated qubit
    )
    problem = utils.get_estimation_problem()

    qc = ae.construct_circuit(problem)
    qc.name = "ae"
    qc.measure_all()

    return qc

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("method", ["normal"])

def bench_qiskit_ae(benchmark, optimization_level, backend, method):
    shots = 65536
    expected_counts = {"8": shots}

    if method == "normal":
        benchmark.name = "Amplitude Estimation"
        circ = build_ae_circuit(8,False)
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


