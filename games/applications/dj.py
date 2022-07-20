"""Deustch Jozsa Benchmark Circuits"""


import os
import numpy as np
from qiskit import QuantumCircuit
import pytest
from . import backends, run_qiskit_circuit


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
NUM = 5
# -----------------------------------------------------------------------------------


def constant(n):
    """Creates a constant oracle"""
    qc = QuantumCircuit(n + 1)
    output = np.random.randint(2)
    if output == 1:
        qc.x(n)
    c_oracle = qc.to_gate()
    c_oracle.name = "Slayyy Oracle"
    return c_oracle


def balanced(n):
    """Creates a balanced oracle"""
    qc = QuantumCircuit(n + 1)
    b = np.random.randint(1, 2**n)
    bstr = format(b, "0" + str(n) + "b")
    for i, qubit in enumerate(bstr):
        if qubit == "1":
            qc.x(i)
    for qubit in range(n):
        qc.cx(qubit, n)
    for i, qubit in enumerate(bstr):
        if qubit == "1":
            qc.x(i)
    b_oracle = qc.to_gate()
    b_oracle.name = "Slayyy Oracle"
    return b_oracle


def oracle(case, n):
    """Returns oracle based on case"""
    if case == "balanced":
        return balanced(n)
    if case == "constant":
        return constant(n)
    return None


def dj_alg(ora_cle, n):
    """Creates Deustch Jozsa circuit"""
    dj = QuantumCircuit(n + 1, n)
    dj.x(n)
    dj.h(n)
    for i in range(n):
        dj.h(i)
    dj.append(ora_cle, range(n + 1))
    for i in range(n):
        dj.h(i)
    for i in range(n):
        dj.measure(i, i)
    return dj


def build_dj(case, n):
    """Builds circuit"""
    dj_oracle = oracle(case, n)
    dj = dj_alg(dj_oracle, n)
    return dj


# --------------------------------------------------------------------------------
@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("case", ["balanced", "constant"])
def bench_qiskit_dj(benchmark, optimization_level, backend, case):
    shots = 20000
    if case == "balanced":
        benchmark.name = "Deutsch Jozsa - Balanced Oracle"
        expected_counts = {str("1" * NUM): shots}
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "dj_balanced.qasm"))
    else:
        benchmark.name = "Deutsch Jozsa - Constant Oracle"
        expected_counts = {str("0" * NUM): shots}
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "dj_constant.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    build_dj("balanced", NUM).qasm(filename=os.path.join(QASM_DIR, "dj_balanced.qasm"))
    build_dj("constant", NUM).qasm(filename=os.path.join(QASM_DIR, "dj_constant.qasm"))
