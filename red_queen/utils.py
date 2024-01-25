# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.

# PyTket imports
import csv
import statistics
import time

import numpy as np
import rustworkx as rx

from pytket.architecture import Architecture
from pytket.circuit import OpType, Node
from pytket.passes import *
from pytket.placement import NoiseAwarePlacement
from pytket.qasm import circuit_from_qasm
from pytket.qasm import circuit_to_qasm_str

from qiskit.providers import BackendV2, Options
from qiskit.transpiler import Target, InstructionProperties
from qiskit.circuit.library import XGate, SXGate, RZGate, CZGate, ECRGate
from qiskit.circuit import Measure, Delay, Parameter, IfElseOp
from qiskit.providers.fake_provider import *

import statistics

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
        super().__init__(name='Fake Multi-QPU with Coupler Backend')
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

    def run(self, circuit, **kwargs):
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
    backend.coupling_map.draw().save("coupling_map.png")
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
    if backend == "FakeWashingtonV2":
        return FakeWashingtonV2()
    elif backend == "FakeAlmadenV2":
        return FakeAlmadenV2()
    elif backend == "FakeArmonkV2":
        return FakeArmonkV2()
    elif backend == "FakeAthensV2":
        return FakeAthensV2()
    elif backend == "FakeAuckland":
        return FakeAuckland()
    elif backend == "FakeBelemV2":
        return FakeBelemV2()
    elif backend == "FakeBoeblingenV2":
        return FakeBoeblingenV2()
    elif backend == "FakeBogotaV2":
        return FakeBogotaV2()
    elif backend == "FakeBrooklynV2":
        return FakeBrooklynV2()
    elif backend == "FakeBurlingtonV2":
        return FakeBurlingtonV2()
    elif backend == "FakeCairoV2":
        return FakeCairoV2()
    elif backend == "FakeCambridgeV2":
        return FakeCambridgeV2()
    elif backend == "FakeCasablancaV2":
        return FakeCasablancaV2()
    elif backend == "FakeEssexV2":
        return FakeEssexV2()
    elif backend == "FakeGeneva":
        return FakeGeneva()
    elif backend == "FakeGuadalupeV2":
        return FakeGuadalupeV2()
    elif backend == "FakeHanoiV2":
        return FakeHanoiV2()
    elif backend == "FakeJakartaV2":
        return FakeJakartaV2()
    elif backend == "FakeJohannesburgV2":
        return FakeJohannesburgV2()
    elif backend == "FakeKolkataV2":
        return FakeKolkataV2()
    elif backend == "FakeLagosV2":
        return FakeLagosV2()
    elif backend == "FakeLimaV2":
        return FakeLimaV2()
    elif backend == "FakeLondonV2":
        return FakeLondonV2()
    elif backend == "FakeManhattanV2":
        return FakeManhattanV2()
    elif backend == "FakeManilaV2":
        return FakeManilaV2()
    elif backend == "FakeMelbourneV2":
        return FakeMelbourneV2()
    elif backend == "FakeMontrealV2":
        return FakeMontrealV2()
    elif backend == "FakeMumbaiV2":
        return FakeMumbaiV2()
    elif backend == "FakeNairobiV2":
        return FakeNairobiV2()
    elif backend == "FakeOslo":
        return FakeOslo()
    elif backend == "FakeOurenseV2":
        return FakeOurenseV2()
    elif backend == "FakeParisV2":
        return FakeParisV2()
    elif backend == "FakePerth":
        return FakePerth()
    elif backend == "FakePrague":
        return FakePrague()
    elif backend == "FakePoughkeepsieV2":
        return FakePoughkeepsieV2()
    elif backend == "FakeQuitoV2":
        return FakeQuitoV2()
    elif backend == "FakeRochesterV2":
        return FakeRochesterV2()
    elif backend == "FakeRomeV2":
        return FakeRomeV2()
    elif backend == "FakeSantiagoV2":
        return FakeSantiagoV2()
    elif backend == "FakeSherbrooke":
        return FakeSherbrooke()
    elif backend == "FakeSingaporeV2":
        return FakeSingaporeV2()
    elif backend == "FakeSydneyV2":
        return FakeSydneyV2()
    elif backend == "FakeTorontoV2":
        return FakeTorontoV2()
    elif backend == "FakeValenciaV2":
        return FakeValenciaV2()
    elif backend == "FakeVigoV2":
        return FakeVigoV2()
    elif backend == "FakeWashingtonV2":
        return FakeWashingtonV2()
    elif backend == "FakeYorktownV2":
        return FakeYorktownV2()
