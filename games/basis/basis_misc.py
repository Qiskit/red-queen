# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Misc basis benchmarks."""

import pytest
from basis import run_qiskit_basis
from benchmarks import misc_qasm


@pytest.mark.qiskit
@pytest.mark.parametrize(
    "basis_method, basis",
    [
        ("unroller", ["u", "cx"]),
        ("translator", ["u", "cx"]),
        ("translator", ["sx", "rz", "cx"]),
        ("synthesis", ["u", "cx"]),
        ("synthesis", ["sx", "rz", "cx"]),
    ],
)
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
