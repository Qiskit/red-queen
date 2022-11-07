from qiskit import QuantumCircuit, __qiskit_version__
from qiskit.compiler import transpile
from qiskit.transpiler import CouplingMap
from qiskit.circuit import qpy_serialization
from qiskit.algorithms import EstimationProblem

from datetime import date

import networkx as nx
import numpy as np
from os import path

from qiskit.test.mock import (
    FakeBogota,
    FakeCasablanca,
    FakeGuadalupe,
    FakeMontreal,
    FakeManhattan,
    FakeWashington,
)
qasm_path = "/home/archana/qamp-fall-22/red-queen/red_queen/applications/games/qasm"
def set_qasm_output_path(new_path: str = "/home/archana/qamp-fall-22/red-queen/red_queen/applications/games/qasm"):
    global qasm_path
    qasm_path = new_path


def get_qasm_output_path():
    """Returns the path where all .qasm files are stored."""
    return qasm_path

def get_compiled_circuit_with_gateset(
    qc: QuantumCircuit,
    opt_level: int = 1,
    basis_gates=None,
    c_map: CouplingMap = None,
):
    """Returns a transpiled quantum circuit according to the given input parameters.
    Keyword arguments:
    qc -- to be transpiled QuantumCircuit
    opt_level -- optimization level
    basis_gates -- used gates of resulting quantum circuit
    c_map -- to be used coupling map
    """

    if basis_gates is None:
        basis_gates = ["id", "rz", "sx", "x", "cx", "reset"]

    t_qc = transpile(
        qc,
        basis_gates=basis_gates,
        optimization_level=opt_level,
        coupling_map=c_map,
        seed_transpiler=10,
    )
    return t_qc

def save_as_qasm(
    qc: QuantumCircuit,
    filename: str,
    gate_set: list = None,
    opt_level: int = -1,
    mapped: bool = False,
    c_map=None,
    arch_name: str = "",
):
    """Saves a quantum circuit as a qasm file.
    Keyword arguments:
    qc -- to be saved QuantumCircuit
    filename -- filename
    gate_set -- set of used gates
    opt_level -- optimization level
    mapped -- boolean indicating whether the quantum circuit is mapped to a specific hardware layout
    c_map -- coupling map of used hardware layout
    arch_name -- name of used hardware layout
    """

    if c_map is None:
        c_map = []

    qasm_output_folder = get_qasm_output_path()
    print(qasm_output_folder)
    with open(qasm_output_folder + filename + ".qasm", "w") as f:
        f.write("// Benchmark was created by MQT Bench on " + str(date.today()) + "\n")
        f.write(
            "// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/"
            + "\n"
        )
        f.write("// MQT Bench version: " + "0.1.0" + "\n")
        f.write("// Qiskit version: " + str(__qiskit_version__) + "\n")
        if gate_set:
            f.write("// Used Gate Set: " + str(gate_set) + "\n")
        if opt_level >= 0:
            f.write("// Optimization Level: " + str(opt_level) + "\n")
        if mapped:
            f.write("// Coupling List: " + str(c_map) + "\n")
            if arch_name:
                f.write("// Compiled for architecture: " + arch_name + "\n")
        f.write("\n")
        f.write(qc.qasm())
    f.close()

def get_examplary_max_cut_qp(n_nodes: int, degree: int = 2):
    """Returns a quadratic problem formulation of a max cut problem of a random graph.
    Keyword arguments:
    n_nodes -- number of graph nodes (and also number of qubits)
    degree -- edges per node
    """
    try:
        from qiskit_optimization.applications import Maxcut
    except:

        print("Please install qiskit_optimization.")
        return None
    graph = nx.random_regular_graph(d=degree, n=n_nodes, seed=111)
    maxcut = Maxcut(graph)
    return maxcut.to_quadratic_program()

class BernoulliA(QuantumCircuit):
    """A circuit representing the Bernoulli A operator."""

    def __init__(self, probability):
        super().__init__(1)  # circuit on 1 qubit

        theta_p = 2 * np.arcsin(np.sqrt(probability))
        self.ry(theta_p, 0)

class BernoulliQ(QuantumCircuit):
    """A circuit representing the Bernoulli Q operator."""

    def __init__(self, probability):
        super().__init__(1)  # circuit on 1 qubit

        self._theta_p = 2 * np.arcsin(np.sqrt(probability))
        self.ry(2 * self._theta_p, 0)

    def power(self, k):
        # implement the efficient power of Q
        q_k = QuantumCircuit(1)
        q_k.ry(2 * k * self._theta_p, 0)
        return q_k

def get_estimation_problem():
    """Returns a estimation problem instance for a fixed p value."""

    p = 0.2

    a = BernoulliA(p)
    q = BernoulliQ(p)

    problem = EstimationProblem(
        state_preparation=a,  # A operator
        grover_operator=q,  # Q operator
        objective_qubits=[
            0
        ],  # the "good" state Psi1 is identified as measuring |1> in qubit 0
    )

    return problem 
