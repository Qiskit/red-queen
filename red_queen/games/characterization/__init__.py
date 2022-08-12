import pytest
from qiskit.compiler import transpile
from qiskit.providers.fake_provider import FakeMontreal

backends = [FakeMontreal()]

# Get heavy outputs (Will be removed/modified)


def measure_qv(circuits, benchmark, backend, shots=1000):
    results = []
    for index, circuit in enumerate(circuits):
        info, tqc = benchmark(transpile, circuit, backend, seed_transpiler=918273645)
        results.append(
            backend.run(tqc, shots=shots, seed_simulator=123456789).result().get_counts()
        )
    return results


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


def count_heavy_outputs(counts, heavies):
    num_heavies = 0
    for i, count in enumerate(heavies):
        for j, key in enumerate(count):
            num_heavies += counts[i][key]
    return num_heavies


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


def run_qiskit_quantum_volume(benchmark, circuits, backend, shots):
    current = 2
    thres_pass = True
    threshold = 0
    for index, circuit in enumerate(circuits):
        current = index + 2
        counts = measure_qv(circuit, benchmark, backend, shots)
        heavy_outputs = [get_heavy_outputs(qc) for qc in counts]
        heavy_count = count_heavy_outputs(counts, heavy_outputs)
        thres_pass, threshold = check_threshold(heavy_count, len(circuit), shots)
        print("Current Quantum Volume Test:", 2**current)
        print("\tAccepted" if thres_pass else "\tNot accepted")
        if not thres_pass:
            current -= 1
            break
    print("Max Quantum Volume:", 2**current)
    benchmark.info.quality_stats["QV"] = 2**current
