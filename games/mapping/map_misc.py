# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import pytest

from .mappers import run_qiskit, run_tket, run_tweedledum
from qiskit.test.mock import FakeMontreal
from red_queen.benchmarks import misc_qasm
from red_queen.fixtures import benchmark

backends = [FakeMontreal()]


@pytest.mark.qiskit
@pytest.mark.parametrize("layout_method", ["dense", "sabre"])
@pytest.mark.parametrize("routing_method", ["sabre", "stochastic"])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("qasm", misc_qasm)
def test_qiskit(benchmark, layout_method, routing_method, backend, qasm):
    benchmark.name = qasm.name
    benchmark.algorithm = f"{layout_method} + {routing_method}"
    run_qiskit(
        benchmark,
        layout_method,
        routing_method,
        backend.configuration().coupling_map,
        qasm,
    )


@pytest.mark.tket
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("qasm", misc_qasm)
def test_tket(pawn, benchmark, backend, qasm):
    benchmark.name = qasm.name
    run_tket(benchmark, backend.configuration().coupling_map, qasm)


@pytest.mark.tweedledum
@pytest.mark.parametrize("routing_method", ["jit", "sabre"])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("qasm", misc_qasm)
def test_tweedledum(benchmark, routing_method, backend, qasm):
    benchmark.name = qasm.name
    benchmark.algorithm = routing_method
    run_tweedledum(
        benchmark, routing_method, backend.configuration().coupling_map, qasm
    )
