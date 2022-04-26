# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import pytest

from mapping import run_qiskit_mapper, run_tweedledum_mapper
from red_queen.benchmarks import queko_qasm, queko_coupling

@pytest.mark.qiskit
@pytest.mark.parametrize("layout_method", ["dense", "sabre"])
@pytest.mark.parametrize("routing_method", ["sabre", "stochastic"])
@pytest.mark.parametrize("qasm", queko_qasm)
def bench_qiskit(benchmark, layout_method, routing_method, qasm) -> None:
    benchmark.name = qasm.name
    benchmark.algorithm = f"{layout_method} + {routing_method}"
    # This is really annoying:
    coupling_map = list()
    for pair in queko_coupling[benchmark.name[:5]]:
        coupling_map.append(pair)
        coupling_map.append(pair[::-1])
    run_qiskit_mapper(benchmark, layout_method, routing_method, coupling_map, qasm)


@pytest.mark.tweedledum
@pytest.mark.parametrize("qasm", queko_qasm)
def bench_tweedledum(benchmark, qasm) -> None:
    benchmark.name = qasm.name
    benchmark.algorithm = f"ApprxSatPlacer + LazyRouter"
    coupling_map = queko_coupling[benchmark.name[:5]]
    run_tweedledum_mapper(benchmark, "jit", coupling_map, qasm)
