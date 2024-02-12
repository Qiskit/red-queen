"""
This module contains utility functions and classes for the red_queen project.
"""

# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.

# PyTket imports
import statistics

import numpy as np
import rustworkx as rx

from pytket.architecture import Architecture
from pytket.circuit import OpType, Node
from pytket.placement import NoiseAwarePlacement
from pytket.passes import (
    DecomposeBoxes,
    auto_rebase_pass,
    SynthesiseTket,
    FullPeepholeOptimise,
    CXMappingPass,
    NaivePlacementPass,
    KAKDecomposition,
    CliffordSimp,
    RemoveRedundancies,
    SimplifyInitial,
    SequencePass,
)

from qiskit.providers import BackendV2, Options
from qiskit.transpiler import Target, InstructionProperties
from qiskit.circuit.library import XGate, SXGate, RZGate, CZGate
from qiskit.circuit import Measure, Delay, Parameter, IfElseOp
from qiskit.providers.fake_provider import (
    FakeAlmadenV2,
    FakeArmonkV2,
    FakeAthensV2,
    FakeAuckland,
    FakeBelemV2,
    FakeBoeblingenV2,
    FakeBogotaV2,
    FakeBrooklynV2,
    FakeBurlingtonV2,
    FakeCairoV2,
    FakeCambridgeV2,
    FakeCasablancaV2,
    FakeEssexV2,
    FakeGeneva,
    FakeGuadalupeV2,
    FakeHanoiV2,
    FakeJakartaV2,
    FakeJohannesburgV2,
    FakeKolkataV2,
    FakeLagosV2,
    FakeLimaV2,
    FakeLondonV2,
    FakeManhattanV2,
    FakeManilaV2,
    FakeMelbourneV2,
    FakeMontrealV2,
    FakeMumbaiV2,
    FakeNairobiV2,
    FakeOslo,
    FakeOurenseV2,
    FakeParisV2,
    FakePerth,
    FakePrague,
    FakePoughkeepsieV2,
    FakeQuitoV2,
    FakeRochesterV2,
    FakeRomeV2,
    FakeSantiagoV2,
    FakeSherbrooke,
    FakeSingaporeV2,
    FakeSydneyV2,
    FakeTorontoV2,
    FakeValenciaV2,
    FakeVigoV2,
    FakeWashingtonV2,
    FakeYorktownV2,
)


class FakeFlamingo(BackendV2):
    """Fake multi chip backend."""

    def __init__(self, distance=3):
        """Instantiate a new fake multi chip backend.

        Args:
            distance (int): The heavy hex code distance to use for each chips'
                coupling map. This number **must** be odd. The distance relates
                to the number of qubits by:
                :math:`n = \\frac{5d^2 - 2d - 1}{2}` where :math:`n` is the
                number of qubits and :math:`d` is the ``distance``
        """
        super().__init__(name="Fake Multi-QPU with Coupler Backend")
        graph = rx.generators.directed_heavy_hex_graph(distance, bidirectional=False)
        num_qubits = len(graph)
        rng = np.random.default_rng(seed=12345678942)
        rz_props = {}
        x_props = {}
        sx_props = {}
        measure_props = {}
        delay_props = {}
        self._target = Target("Fake multi-chip backend", num_qubits=num_qubits)
        for i in range(num_qubits):
            qarg = (i,)
            rz_props[qarg] = InstructionProperties(error=0.0, duration=0.0)
            x_props[qarg] = InstructionProperties(
                error=rng.uniform(1e-6, 1e-4), duration=rng.uniform(1e-8, 9e-7)
            )
            sx_props[qarg] = InstructionProperties(
                error=rng.uniform(1e-6, 1e-4), duration=rng.uniform(1e-8, 9e-7)
            )
            measure_props[qarg] = InstructionProperties(
                error=rng.uniform(1e-3, 1e-1), duration=rng.uniform(1e-8, 9e-7)
            )
            delay_props[qarg] = None
        self._target.add_instruction(XGate(), x_props)
        self._target.add_instruction(SXGate(), sx_props)
        self._target.add_instruction(RZGate(Parameter("theta")), rz_props)
        self._target.add_instruction(Measure(), measure_props)
        self._target.add_instruction(Delay(Parameter("t")), delay_props)
        cz_props = {}
        for root_edge in graph.edge_list():
            edge = (root_edge[0], root_edge[1])
            cz_props[edge] = InstructionProperties(
                error=rng.uniform(1e-5, 5e-3), duration=rng.uniform(1e-8, 9e-7)
            )
        self._target.add_instruction(CZGate(), cz_props)
        self._target.add_instruction(IfElseOp, name="if_else")

    @property
    def target(self):
        return self._target

    @property
    def max_circuits(self):
        return None

    @classmethod
    def _default_options(cls):
        return Options(shots=1024)

    def run(self, run_input, **kwargs):
        raise NotImplementedError("Lasciate ogne speranza, voi ch'intrate")


def initialize_tket_pass_manager(backend, optimization_level):
    """
    Initialize a pass manager for tket.
    """
    # Build equivalent of tket backend, it can't represent heterogenous gate sets
    arch = Architecture(backend.coupling_map.graph.edge_list())
    averaged_node_gate_errors = {}
    averaged_edge_gate_errors = {}
    averaged_readout_errors = {
        Node(x[0]): backend.target["measure"][x].error
        for x in backend.target["measure"]
    }
    for qarg in backend.target.qargs:
        ops = [
            x
            for x in backend.target.operation_names_for_qargs(qarg)
            if x not in {"if_else", "measure", "delay"}
        ]
        errors = [
            backend.target[op][qarg].error
            for op in ops
            if backend.target[op][qarg].error is not None
        ]
        if errors:
            avg = statistics.mean(errors)
        else:
            avg = 0  # or some other default value

        if len(qarg) == 1:
            averaged_node_gate_errors[Node(qarg[0])] = avg
        else:
            averaged_edge_gate_errors[tuple(Node(x) for x in qarg)] = avg
    # BUild tket compilation sequence:
    passlist = [DecomposeBoxes()]
    rebase_pass = auto_rebase_pass({OpType.X, OpType.SX, OpType.Rz, OpType.CZ})
    if optimization_level == 0:
        passlist.append(rebase_pass)
    elif optimization_level == 1:
        passlist.append(SynthesiseTket())
    elif optimization_level == 2:
        passlist.append(FullPeepholeOptimise())
    mid_measure = True
    noise_aware_placement = NoiseAwarePlacement(
        arch,
        averaged_node_gate_errors,
        averaged_edge_gate_errors,
        averaged_readout_errors,
    )
    passlist.append(
        CXMappingPass(
            arch,
            noise_aware_placement,
            directed_cx=True,
            delay_measures=(not mid_measure),
        )
    )
    passlist.append(NaivePlacementPass(arch))
    if optimization_level == 1:
        passlist.append(SynthesiseTket())
    if optimization_level == 2:
        passlist.extend(
            [
                KAKDecomposition(allow_swaps=False),
                CliffordSimp(False),
                SynthesiseTket(),
            ]
        )
    passlist.extend([rebase_pass, RemoveRedundancies()])
    passlist.append(SimplifyInitial(allow_classical=False, create_all_qubits=True))
    tket_pm = SequencePass(passlist)
    return tket_pm


def choose_backend(backend):
    """
    Choose a backend to run the circuit on.
    """

    backends = {
        "FakeAlmadenV2": FakeAlmadenV2(),
        "FakeArmonkV2": FakeArmonkV2(),
        "FakeAthensV2": FakeAthensV2(),
        "FakeAuckland": FakeAuckland(),
        "FakeBelemV2": FakeBelemV2(),
        "FakeBoeblingenV2": FakeBoeblingenV2(),
        "FakeBogotaV2": FakeBogotaV2(),
        "FakeBrooklynV2": FakeBrooklynV2(),
        "FakeBurlingtonV2": FakeBurlingtonV2(),
        "FakeCairoV2": FakeCairoV2(),
        "FakeCambridgeV2": FakeCambridgeV2(),
        "FakeCasablancaV2": FakeCasablancaV2(),
        "FakeEssexV2": FakeEssexV2(),
        "FakeGeneva": FakeGeneva(),
        "FakeGuadalupeV2": FakeGuadalupeV2(),
        "FakeHanoiV2": FakeHanoiV2(),
        "FakeJakartaV2": FakeJakartaV2(),
        "FakeJohannesburgV2": FakeJohannesburgV2(),
        "FakeKolkataV2": FakeKolkataV2(),
        "FakeLagosV2": FakeLagosV2(),
        "FakeLimaV2": FakeLimaV2(),
        "FakeLondonV2": FakeLondonV2(),
        "FakeManhattanV2": FakeManhattanV2(),
        "FakeManilaV2": FakeManilaV2(),
        "FakeMelbourneV2": FakeMelbourneV2(),
        "FakeMontrealV2": FakeMontrealV2(),
        "FakeMumbaiV2": FakeMumbaiV2(),
        "FakeNairobiV2": FakeNairobiV2(),
        "FakeOslo": FakeOslo(),
        "FakeOurenseV2": FakeOurenseV2(),
        "FakeParisV2": FakeParisV2(),
        "FakePerth": FakePerth(),
        "FakePrague": FakePrague(),
        "FakePoughkeepsieV2": FakePoughkeepsieV2(),
        "FakeQuitoV2": FakeQuitoV2(),
        "FakeRochesterV2": FakeRochesterV2(),
        "FakeRomeV2": FakeRomeV2(),
        "FakeSantiagoV2": FakeSantiagoV2(),
        "FakeSherbrooke": FakeSherbrooke(),
        "FakeSingaporeV2": FakeSingaporeV2(),
        "FakeSydneyV2": FakeSydneyV2(),
        "FakeTorontoV2": FakeTorontoV2(),
        "FakeValenciaV2": FakeValenciaV2(),
        "FakeVigoV2": FakeVigoV2(),
        "FakeWashingtonV2": FakeWashingtonV2(),
        "FakeYorktownV2": FakeYorktownV2(),
    }

    if backend not in backends:
        raise ValueError(f"Invalid backend: {backend}")

    return backends[backend]
