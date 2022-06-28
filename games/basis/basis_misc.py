# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Misc mapping benchmarks."""

import pytest
import scipy.stats
from basis import run_qiskit_basis
from benchmarks import misc_qasm


bases = [
    ["u", "cx"],
    ["sx", "rz", "cx"],
]


@pytest.mark.qiskit
@pytest.mark.parametrize(
    "basis_method",
    ["basis_translator", "decompose", "unroll_3q_or_more", "unroll_custom_definitions"],
)
@pytest.mark.parametrize("basis", bases)
@pytest.mark.parametrize("qasm", misc_qasm)
def bench_qiskit(benchmark, basis_method, basis, qasm) -> None:
    benchmark.name = qasm.name
    benchmark.algorithm = f"{basis_method}"
    run_qiskit_basis(
        benchmark,
        basis_method,
        basis,
        qasm,
    )
