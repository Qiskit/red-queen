# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Benchmark Bernstein Vazirani circuits."""

import pytest

from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister

from applications import backends, run_qiskit_circuit


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
        qc.x(qr[1])
        qc.h(qr[1])
        qc.barrier()
        for i in range(input_size):
            if secret_string[input_size - 1 - i] == "1":
                qc.h(qr[0])
                qc.cx(qr[0], qr[1])
                qc.h(qr[0])
            qc.measure(qr[0], cr[i])
            qc.reset([0])
    return qc


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("method", ["normal", "mid-circuit measurement"])
def bench_qiskit_bv(benchmark, optimization_level, backend, method):
    secret_string = "110011"
    shots = 65536
    expected_counts = {secret_string: shots}
    if method == "normal":
        benchmark.name = "Bernstein Vazirani"
        circ = build_bv_circuit(secret_string)
    else:
        benchmark.name = "Bernstein Vazirani (mid-circuit measurement)"
        circ = build_bv_circuit(secret_string, mid_circuit_measure=True)
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)
