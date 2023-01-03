import os
import pytest

from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from red_queen.games.applications import backends, run_qiskit_circuit
from mqt.bench import get_one_benchmark
from mqt.bench.benchmarks import dj

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_ae(benchmark, optimization_level, backend):
    shots = 65536
    expected_counts = {"8": shots}
    benchmark.name = "Amplitude Estimation"
    circlevel = [0,1,2]
    for i in circlevel:
        circ = get_one_benchmark("ae",i,8)
        benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
        run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_dj_constant(benchmark, optimization_level, backend):
    shots = 20000
    NUM = 5
    expected_counts = {str("0" * NUM): shots}
    benchmark.name = "Deutsch Jozsa - Constant Oracle"
    circ = dj.create_circuit(NUM,False)
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_dj_balanced(benchmark, optimization_level, backend):
    shots = 20000
    NUM = 5
    expected_counts = {str("1" * NUM): shots}
    benchmark.name = "Deutsch Jozsa - Balanced Oracle"
    circ = dj.create_circuit(NUM,True)
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_grover_noancilla(benchmark, optimization_level, backend):
    shots = 20000
    NUM = 5
    benchmark.name = "grover-noancilla"
    circlevel = [0,1,2]
    for i in circlevel:
        circ = get_one_benchmark("grover-noancilla",i,NUM)
        benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
        run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots)

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_grover_vchain(benchmark, optimization_level, backend):
    shots = 20000
    NUM = 5
    benchmark.name = "grover-v-chain"
    circlevel = [0,1,2]
    for i in circlevel:
        circ = get_one_benchmark("grover-v-chain",i,NUM)
        benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
        run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots)

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_ghz(benchmark, optimization_level, backend):
    shots = 20000
    NUM = 5
    benchmark.name = "ghz"
    circ = get_one_benchmark("ghz",0,NUM)
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots)
