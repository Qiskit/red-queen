# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Mapping benchmarks."""

import qiskit
from qiskit import QuantumCircuit
from qiskit.transpiler.passmanager import PassManager

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


def _qiskit_pass_manager(basis_method, basis, seed_transpiler=1337):
    pm = PassManager()

    if basis_method == "basis_translator":
        _pass_list = [BasisTranslator(std_eqlib, basis)]
    elif basis_method == "decompose":
        _pass_list = [Decompose()]
    elif basis_method == "unroll_3q_or_more":
        _pass_list = [Unroll3qOrMore()]
    elif basis_method == "unroll_custom_definitions":
        _pass_list = [UnrollCustomDefinitions(std_eqlib, basis)]
    else:
        raise NotImplementedError("Basis method '{basis_method}'")

    # Build pass manager
    pm.append(_pass_list)
    return pm


def run_qiskit_basis(benchmark, basis_method, basis, path):
    circuit = QuantumCircuit.from_qasm_file(str(path))
    pm = _qiskit_pass_manager(basis_method, basis)
    info, mapped_circuit = benchmark(pm.run, circuit)
    info.tool_version = qiskit.version.get_version_info()
