# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import pytest

from qiskit.test.mock import FakeMontreal
from mapping import run_qiskit_mapper, run_tweedledum_mapper
from red_queen.benchmarks import misc_qasm


backends = [FakeMontreal()]


@pytest.mark.qiskit
@pytest.mark.parametrize("layout_method", ["dense", "sabre"])
@pytest.mark.parametrize("routing_method", ["sabre", "stochastic"])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("qasm", misc_qasm)
def bench_qiskit(benchmark, layout_method, routing_method, backend, qasm) -> None:
    benchmark.name = qasm.name
    benchmark.algorithm = f"{layout_method} + {routing_method}"
    run_qiskit_mapper(
        benchmark,
        layout_method,
        routing_method,
        backend.configuration().coupling_map,
        qasm,
    )


@pytest.mark.tweedledum
@pytest.mark.parametrize("routing_method", ["jit", "sabre"])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("qasm", misc_qasm)
def bench_tweedledum(benchmark, routing_method, backend, qasm) -> None:
    benchmark.name = qasm.name
    benchmark.algorithm = routing_method
    run_tweedledum_mapper(
        benchmark, routing_method, backend.configuration().coupling_map, qasm
    )
