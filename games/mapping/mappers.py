# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
from pytket.qasm import circuit_from_qasm
from pytket.routing import Architecture, route
from pytket.transform import Transform

from tweedledum.ir import Circuit
from tweedledum.target import Device
from tweedledum.passes import bridge_decomp, bridge_map, jit_map, sabre_map

from qiskit import QuantumCircuit
from qiskit.transpiler import CouplingMap
from qiskit.transpiler.passmanager import PassManager
from qiskit.transpiler.passes import ApplyLayout
from qiskit.transpiler.passes import CheckMap
from qiskit.transpiler.passes import CSPLayout
from qiskit.transpiler.passes import DenseLayout
from qiskit.transpiler.passes import EnlargeWithAncilla
from qiskit.transpiler.passes import FullAncillaAllocation
from qiskit.transpiler.passes import SabreLayout
from qiskit.transpiler.passes import SabreSwap
from qiskit.transpiler.passes import StochasticSwap


def _qiskit_pass_manager(
    layout_method, routing_method, coupling_map, seed_transpiler=1337
):
    coupling_map = CouplingMap(coupling_map)
    pm = PassManager()

    # 1. Choose an initial layout
    _choose_layout_0 = CSPLayout(coupling_map, call_limit=10000, seed=seed_transpiler)
    if layout_method == "sabre":
        _choose_layout_1 = SabreLayout(
            coupling_map, max_iterations=2, seed=seed_transpiler
        )
    elif layout_method == "dense":
        _choose_layout_1 = DenseLayout(coupling_map)

    def _choose_layout_condition(property_set):
        return not property_set["layout"]

    # 2. Extend dag/layout with ancillae using the full coupling map
    _embed = [FullAncillaAllocation(coupling_map), EnlargeWithAncilla(), ApplyLayout()]

    # 3. Swap to fit the coupling map
    _swap_check = CheckMap(coupling_map)

    def _swap_condition(property_set):
        return not property_set["is_swap_mapped"]

    _swap = list()
    if routing_method == "sabre":
        _swap = [SabreSwap(coupling_map, heuristic="decay", seed=seed_transpiler)]
    elif routing_method == "stochastic":
        _swap = [StochasticSwap(coupling_map, trials=200, seed=seed_transpiler)]

    # Build pass manager
    pm.append(_choose_layout_0, condition=_choose_layout_condition)
    pm.append(_choose_layout_1, condition=_choose_layout_condition)
    pm.append(_embed)
    pm.append(_swap_check)
    pm.append(_swap, condition=_swap_condition)
    return pm


def run_qiskit(benchmark, layout_method, routing_method, coupling_map, path):
    circuit = QuantumCircuit.from_qasm_file(str(path))
    pm = _qiskit_pass_manager(layout_method, routing_method, coupling_map)
    info, mapped_circuit = benchmark(pm.run, circuit)
    info.quality_stats["cx"] = 3 * mapped_circuit.count_ops().get("swap", 0)


def run_tket(benchmark, coupling_map, path):
    circuit = circuit_from_qasm(str(path))
    coupling = list()
    [coupling.append(sorted(x)) for x in coupling_map if sorted(x) not in coupling]
    coupling = [tuple(x) for x in coupling]
    arch = Architecture(coupling)
    parameters = dict(bridge_lookahead=0, bridge_interactions=0)
    info, mapped_circuit = benchmark(route, circuit, arch, **parameters)
    Transform.DecomposeSWAPtoCX().apply(mapped_circuit)
    info.quality_stats["cx"] = mapped_circuit.n_gates - circuit.n_gates


def run_tweedledum(benchmark, routing_method, coupling_map, path):
    circuit = Circuit.from_qasm_file(str(path))
    device = Device.from_edge_list(coupling_map)
    if routing_method == "jit":
        info, [mapped_circuit, _] = benchmark(jit_map, device, circuit)
    elif routing_method == "sabre":
        info, [mapped_circuit, _] = benchmark(sabre_map, device, circuit)
    elif routing_method == "bridge":
        info, [mapped_circuit, _] = benchmark(bridge_map, device, circuit)
        mapped_circuit = bridge_decomp(device, mapped_circuit)
    swaps_cost = 0
    for instruction in mapped_circuit:
        if instruction.kind() == "std.swap":
            swaps_cost += 2
    info.quality_stats["cx"] = swaps_cost + len(mapped_circuit) - len(circuit)
