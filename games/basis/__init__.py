# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Basis benchmarks."""

import qiskit
from qiskit import QuantumCircuit
from qiskit.transpiler.passmanager import PassManager
from qiskit.transpiler.preset_passmanagers.common import generate_translation_passmanager

from qiskit.transpiler.passes import (
    BasisTranslator,
    Decompose,
    Unroller,
    Unroll3qOrMore,
    UnrollCustomDefinitions,
)
from qiskit.circuit.library.standard_gates.equivalence_library import (
    StandardEquivalenceLibrary as std_eqlib,
)


def _qiskit_pass_manager(basis_method, basis):
    pm = generate_translation_passmanager(None, method=basis_method, basis_gates=basis)
    return pm


def run_qiskit_basis(benchmark, basis_method, basis, path):
    circuit = QuantumCircuit.from_qasm_file(str(path))
    pm = _qiskit_pass_manager(basis_method, basis)
    info, _ = benchmark(pm.run, circuit)
    info.tool_version = qiskit.version.get_version_info()
