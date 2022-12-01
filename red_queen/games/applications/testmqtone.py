import os
import pytest

from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from qiskit.compiler import transpile
from qiskit.providers.aer import AerSimulator
from red_queen.games.applications import backends, run_qiskit_circuit
from mqt.bench import get_one_benchmark
@pytest.mark.qiskit
@pytest.mark.parametrize(
   "circuit_name, size",
   [
   ("ae", 8),
   ("ghz", 5),
   ("dj", 5),
   ("grover-noancilla",5),
   ("grover-v-chain",5),
   ("ghz",5),
   ("graphstate",4),
   ("portfoliovqe",5),
   ("portfolioqaoa",5),
   ("qaoa",5),
   ("qft",8),
   ("qftentangled",8),
   ("qpeexact",8),
   ("qpeinexact",8),
   ("qgan",5),
   ("qwalk-noancilla",8),
   ("qwalk-v-chain",8),
   ("realamprandom",9),
   ("su2random",7),
   ("twolocalrandom",5),
   ("vqe",5),
   ("wstate",8),
   ("shor",9),
   ("hhl",2),
   ("pricingcall",5),
   ("pricinginput",5),
   ("tsp",3),
   ],
)   
@pytest.mark.parametrize("circuit_level", [0, 1])
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_mqt_all(benchmark, circuit_name, size, circuit_level, optimization_level, backend):
    shots = 65536
    benchmark.name = circuit_name
    circ = get_one_benchmark(circuit_name,circuit_level,size)
    simulator = AerSimulator(seed_simulator=1234)
    tcirc = transpile(circ, simulator, optimization_level=0)
    expected_counts = simulator.run(tcirc).result().get_counts()
    benchmark.algorithm = f"Circ level: {circuit_level} Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)

