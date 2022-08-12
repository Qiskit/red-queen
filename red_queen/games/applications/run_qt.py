# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Quantum Teleportation Benchmark Circuits"""

import os
import pytest
import numpy as np
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from qiskit import IBMQ, Aer, transpile
from red_queen.games.applications import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
state = [1 / np.sqrt(2), -1 / np.sqrt(2)]


def bell_pair(qc, x, y):
    qc.h(x)
    qc.cx(x, y)


def a_gates(qc, psi, x):
    qc.cx(psi, x)
    qc.h(psi)


def measure_and_send(qc, x, y):
    qc.barrier()
    qc.measure(x, 0)
    qc.measure(y, 1)


def b_gates(qc, qubit, crz, crx):
    qc.x(qubit).c_if(crx, 1)
    qc.z(qubit).c_if(crz, 1)


def initgate(qc, qubit):

    qc.r(np.pi / 2, np.pi, qubit)


def build_qteleportation():
    qr = QuantumRegister(3, name="q")
    z, x = ClassicalRegister(1, name="classz"), ClassicalRegister(1, name="classx")
    teleportation_circuit = QuantumCircuit(qr, z, x)

    initgate(teleportation_circuit, 0)
    teleportation_circuit.barrier()

    bell_pair(teleportation_circuit, 1, 2)

    teleportation_circuit.barrier()
    a_gates(teleportation_circuit, 0, 1)

    measure_and_send(teleportation_circuit, 0, 1)

    teleportation_circuit.barrier()  # Use barrier to separate steps
    b_gates(teleportation_circuit, 2, z, x)

    initgate(teleportation_circuit, 2)

    cr_result = ClassicalRegister(1)
    teleportation_circuit.add_register(cr_result)
    teleportation_circuit.measure(2, 2)

    return teleportation_circuit


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_quantum_teleportation(benchmark, optimization_level, backend):
    shots = 65536
    expected_counts = {"1": shots}
    benchmark.name = "Quantum Teleportation"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "quantum_teleportation.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(
        benchmark, circ, backend, optimization_level, shots, expected_counts, marginalize=[2]
    )


if __name__ == "__main__":
    build_qteleportation().qasm(filename=os.path.join(QASM_DIR, "quantum_teleportation.qasm"))
