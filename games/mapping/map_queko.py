# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import pytest

from .mappers import run_qiskit, run_tket, run_tweedledum
from red_queen.benchmarks import queko_qasm, queko_coupling
from red_queen.fixtures import benchmark


@pytest.mark.qiskit
@pytest.mark.parametrize("layout_method", ["dense", "sabre"])
@pytest.mark.parametrize("routing_method", ["sabre", "stochastic"])
@pytest.mark.parametrize("qasm", queko_qasm)
def test_qiskit(benchmark, layout_method, routing_method, qasm):
    benchmark.name = qasm.name
    benchmark.algorithm = f"{layout_method} + {routing_method}"
    # This is really annoying:
    coupling_map = list()
    for pair in queko_coupling[benchmark.name[:5]]:
        coupling_map.append(pair)
        coupling_map.append(pair[::-1])
    run_qiskit(benchmark, layout_method, routing_method, coupling_map, qasm)


@pytest.mark.tket
@pytest.mark.parametrize("qasm", queko_qasm)
def test_tket(benchmark, qasm):
    benchmark.name = qasm.name
    coupling_map = queko_coupling[benchmark.name[:5]]
    run_tket(benchmark, coupling_map, qasm)


@pytest.mark.tweedledum
@pytest.mark.parametrize("qasm", queko_qasm)
def test_tweedledum(benchmark, qasm):
    benchmark.name = qasm.name
    benchmark.algorithm = f"ApprxSatPlacer + LazyRouter"
    coupling_map = queko_coupling[benchmark.name[:5]]
    run_tweedledum(benchmark, "jit", coupling_map, qasm)
