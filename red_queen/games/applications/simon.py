# ---------------------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ---------------------------------------------------------------------------------------------

# This benchmark was based on the following qiskit textbook notebook:

# github repository:
# https://github.com/qiskit-community/qiskit-textbook/blob/main/content/ch-algorithms/simon.ipynb
# Variable names from functions were modified to comply with pylint recommendations

"""Simon's Algorithm Benchmark Circuit"""

# initialization
import os
import pytest
from qiskit import Aer
from qiskit import QuantumCircuit, assemble
from red_queen.games.applications import backends, run_qiskit_circuit

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")

# ---------------------------------------------------------------------------------------------
BINARY_STRING = "11010"

NUM_QUBITS = len(BINARY_STRING)


def simon_oracle(b):
    """returns a Simon oracle for bitstring b"""
    b = b[::-1]  # reverse b for easy iteration
    n = len(b)
    qc = QuantumCircuit(n * 2)
    # Do copy; |x>|0> -> |x>|x>
    for q in range(n):
        qc.cx(q, q + n)
    if "1" not in b:
        return qc  # 1:1 mapping, so just exit
    i = b.find("1")  # index of first non-zero bit in b
    # Do |x> -> |s.x> on condition that q_i is 1
    for q in range(n):
        if b[q] == "1":
            qc.cx(i, (q) + n)
    return qc


def simon_circuit(num_qubits, secret_string):
    """setting up simons circuit"""
    simons = QuantumCircuit(NUM_QUBITS * 2, NUM_QUBITS)

    # Apply Hadamard gates before querying the oracle
    simons.h(range(NUM_QUBITS))

    # Apply barrier for visual separation
    simons.barrier()

    simons += simon_oracle(BINARY_STRING)

    # Apply barrier for visual separation
    simons.barrier()

    # Apply Hadamard gates to the input register
    simons.h(range(NUM_QUBITS))

    # Measure qubits
    simons.measure(range(NUM_QUBITS), range(NUM_QUBITS))

    return simons


def binary_dotz(binary, ZZZ):
    """Calculating dot product of results"""
    accum = 0
    # for i in range(len(binary)):
    for i, bb in enumerate(binary):
        # print(bb, i)
        accum += int(bb) * int(ZZZ[i])
    return accum % 2


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_simon(benchmark, optimization_level, backend):
    """benchmarking for simon"""
    shots = 33333
    expected_counts = {BINARY_STRING: shots}
    benchmark.name = "Simon's Algorithm"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "simon.qasm"))

    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    simon_circuit(NUM_QUBITS, BINARY_STRING).qasm(filename=os.path.join(QASM_DIR, "simon.qasm"))
