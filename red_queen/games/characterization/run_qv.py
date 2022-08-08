import numpy as np

# Importing standard Qiskit libraries
from qiskit import QuantumCircuit, transpile, Aer, IBMQ, execute
from qiskit.circuit.library import QuantumVolume
from qiskit.compiler import transpiler
from qiskit.providers.aer import QasmSimulator

# Function to generate quantum volume circuits


def generate_qv_circuits(num_qubits, numtrials=100):
    circuits = []
    for i in range(numtrials):
        circuit = QuantumVolume(num_qubits).decompose()
        circuit.measure_all()
        circuits.append(circuit)
    return circuits


# Simulation (will be removed)


def measure_qv(qc_list, backend=None, shots=1000):
    if backend == None:
        results = [
            execute(qc, backend=Aer.get_backend("qasm_simulator"), shots=shots)
            .result()
            .get_counts()
            for qc in qc_list
        ]
        return results
    else:
        results = [
            execute(qc, backend=backend, shots=shots).result().get_counts() for qc in qc_list
        ]
        return results


# Get heavy outputs (Will be removed/modified)


def get_heavy_outputs(counts):
    """Extract heavy outputs from counts dict.
    Args:
        counts (dict): Output of `.get_counts()`
    Returns:
        list: All states with measurement probability greater
              than the mean.
    """
    # sort the keys of `counts` by value of counts.get(key)
    sorted_counts = sorted(counts.keys(), key=counts.get)
    # discard results with probability < median
    heavy_outputs = sorted_counts[len(sorted_counts) // 2 :]
    return heavy_outputs


# Count heavy outputs (Will be removed/modified)


def count_heavies(counts, heavies):
    num_heavies = 0
    for i, count in enumerate(heavies):
        for j, key in enumerate(count):
            num_heavies += counts[i][key]
    return num_heavies


# Calculate Threshold (Will be removed/modified)


def check_threshold(nheavies, ncircuits, nshots):
    """Evaluate adjusted threshold inequality for quantum volume.
    Args:
        nheavies (int): Total number of heavy outputs measured from device
        ncircuits (int): Number of different square circuits run on device
        nshots (int): Number of shots per circuit
    Returns:
        Bool:
            True if heavy output probability is > 2/3 with 97% certainty,
            otherwise False
    """
    from numpy import sqrt

    numerator = nheavies - 2 * sqrt(nheavies * (nshots - (nheavies / ncircuits)))
    return bool(numerator / (ncircuits * nshots) > 2 / 3), numerator / (ncircuits * nshots)


# General function (will be modified/removed)


def bench_qv(qubits, backend=None, trials=100, shots=1000):
    circuits = generate_qv_circuits(qubits, trials)
    results = measure_qv(circuits, backend, shots)
    heavy_counts = [get_heavy_outputs(qc) for qc in results]
    num_heavies = count_heavies(results, heavy_counts)
    passes, threshold = check_threshold(num_heavies, trials, shots)

    return {
        "quantum_volume": 2**qubits,
        "heavy_percent": (num_heavies * 100) / (trials * shots),
        "threshold": threshold,
        "passes": passes,
    }
