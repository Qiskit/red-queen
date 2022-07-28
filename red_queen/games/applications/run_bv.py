# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Benchmark Bernstein Vazirani circuits."""

import os

import pytest

from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister

from red_queen.games.applications import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
SECRET_STRING = "110011"


def build_bv_circuit(secret_string, mid_circuit_measure=False):
    input_size = len(secret_string)
    num_qubits = input_size + 1
    if not mid_circuit_measure:
        qr = QuantumRegister(num_qubits)
        cr = ClassicalRegister(input_size)
        qc = QuantumCircuit(qr, cr, name="main")
        qc.x(qr[input_size])
        qc.h(qr)
        qc.barrier()
        for i_qubit in range(input_size):
            if secret_string[input_size - 1 - i_qubit] == "1":
                qc.cx(qr[i_qubit], qr[input_size])
        qc.barrier()
        qc.h(qr)
        qc.x(qr[input_size])
        qc.barrier()
        qc.measure(qr[:-1], cr)
    else:
        qr = QuantumRegister(2)
        cr = ClassicalRegister(input_size)
        qc = QuantumCircuit(qr, cr, name="main")
        for i in range(input_size):
            qc.x(qr[1])
            qc.h(qr[1])
            qc.barrier()
            if secret_string[input_size - 1 - i] == "1":
                qc.h(qr[0])
                qc.cx(qr[0], qr[1])
                qc.h(qr[0])
            qc.measure(qr[0], cr[i])
            qc.reset([0])
            qc.reset([1])
    return qc


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("method", ["normal", "mid-circuit measurement"])
def bench_qiskit_bv(benchmark, optimization_level, backend, method):
    shots = 65536
    expected_counts = {SECRET_STRING: shots}
    if method == "normal":
        benchmark.name = "Bernstein Vazirani"
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "bv.qasm"))
    else:
        benchmark.name = "Bernstein Vazirani (mid-circuit measurement)"
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "bv_mcm.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    build_bv_circuit(SECRET_STRING).qasm(filename=os.path.join(QASM_DIR, "bv.qasm"))
    build_bv_circuit(SECRET_STRING, True).qasm(filename=os.path.join(QASM_DIR, "bv_mcm.qasm"))
