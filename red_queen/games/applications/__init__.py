# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Benchmarks of application circuits."""
import pytest

from qiskit.compiler import transpile
from qiskit.result import marginal_distribution
from qiskit.providers.fake_provider import (
    FakeWashington,
    FakeBrooklyn,
    FakeRochester,
    FakeMontreal,
    FakeCairo,
    FakeToronto,
    FakeGuadalupe,
    FakeMelbourne,
)
from qiskit.quantum_info.analysis import hellinger_fidelity

backends = [
    FakeWashington(),
    FakeBrooklyn(),
    FakeRochester(),
    FakeMontreal(),
    FakeCairo(),
    FakeToronto(),
    FakeGuadalupe(),
    FakeMelbourne(),
]


def run_qiskit_circuit(
    benchmark, circuit, backend, optimization_level, shots, expected_counts, marginalize=None
):
    info, tqc = benchmark(
        transpile,
        circuit,
        backend,
        optimization_level=optimization_level,
        seed_transpiler=4242424242,
    )
    info.quality_stats["depth"] = tqc.depth()
    info.quality_stats["size"] = tqc.size()
    op_count = tqc.count_ops()
    num_2q = op_count.get("cx", 0)
    if "melbourne" in backend.name() or "rochester" in backend.name():
        num_1q = op_count.get("u1", 0) + op_count.get("u2", 0) + op_count.get("u3", 0)
    else:
        num_1q = op_count.get("sx", 0) + op_count.get("x", 0) + op_count.get("rz", 0)
    info.quality_stats["xi"] = num_2q / (num_1q + num_2q)
    if marginalize:

        counts = marginal_distribution(
            backend.run(tqc, shots=shots, seed_simulator=123456789).result().get_counts(),
            marginalize,
        )
    else:
        counts = backend.run(tqc, shots=shots, seed_simulator=123456789).result().get_counts()

    info.quality_stats["fidelity"] = hellinger_fidelity(counts, expected_counts)
