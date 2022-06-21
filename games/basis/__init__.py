# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Mapping benchmarks."""

from qiskit import QuantumCircuit
from qiskit.transpiler.passmanager import PassManager

from qiskit.transpiler.passes import BasisTranslator
from qiskit.circuit.library.standard_gates.equivalence_library import (
    StandardEquivalenceLibrary as std_eqlib,
)


def _qiskit_pass_manager(basis_method, basis, seed_transpiler=1337):
    pm = PassManager()

    if basis_method == "basis_translator":
        _pass_list = [BasisTranslator(std_eqlib, basis)]
    else:
        raise NotImplementedError("Basis method '{basis_method}'")

    # Build pass manager
    pm.append(_pass_list)
    return pm


    
def run_qiskit_basis(benchmark, basis_method, basis, path):
    circuit = QuantumCircuit.from_qasm_file(str(path))
    pm = _qiskit_pass_manager(basis_method, basis)
    info, mapped_circuit = benchmark(pm.run, circuit)
    info.quality_stats["cx"] = 3 * mapped_circuit.count_ops().get("swap", 0)

