# ------------------------------------------------------------------------------
# Part of Red Queen Project. This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Benchmark Iterative Phase Estimation Circuits."""

import os
import pytest
import numpy as np
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from red_queen.games.applications import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
SECRET_ANGLE = 1 / 16
cbits = 4  # determine the precision of the phase estimatation


def build_ipe(cbits, SECRET_ANGLE):
    phase = 2 * np.pi * SECRET_ANGLE

    q = QuantumRegister(2)
    c = ClassicalRegister(cbits)

    qc = QuantumCircuit(q, c)

    num = np.array([2**i for i in reversed(range(cbits))], dtype=int)
    for i in range(cbits):
        qc.reset(range(2))
        qc.x(1)
        qc.h(0)
        qc.cp(phase * num[i], 0, 1)
        for j in range(1, 2**i):
            if i == 0:
                pass
            else:
                qc.p(-2 * np.pi * j / 2 ** (i + 1), 0).c_if(c, j)
        qc.h(0)
        qc.measure(0, i)
        qc.barrier()

    return qc


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_ipe(benchmark, optimization_level, backend):
    shots = 65536
    SECRET_STRING = bin(int(2**cbits * SECRET_ANGLE))[2:].zfill(cbits)
    expected_counts = {SECRET_STRING: shots}
    benchmark.name = "Iterative Phase Estimation"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "ipe.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    build_ipe(cbits, SECRET_ANGLE).qasm(filename=os.path.join(QASM_DIR, "ipe.qasm"))
