import numpy as np
from qiskit import QuantumCircuit
import pytest
from __init__ import backends, run_qiskit_circuit
import os

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
n = 5
#-----------------------------------------------------------------------------------

def constant(n):
    qc = QuantumCircuit(n+1)
    output = np.random.randint(2)
    if output == 1:
        qc.x(n)
    oracle = qc.to_gate()
    oracle.name = "Slayyy Oracle"
    return oracle

def balanced(n):
    qc = QuantumCircuit(n+1)
    b = np.random.randint(1,2**n)
    bstr = format(b, '0'+str(n)+'b')
    for qubit in range(len(bstr)):
        if bstr[qubit] == '1':
            qc.x(qubit)
    for qubit in range(n):
        qc.cx(qubit, n)
    for qubit in range(len(bstr)):
        if bstr[qubit] == '1':
            qc.x(qubit)
    oracle = qc.to_gate()
    oracle.name = "Slayyy Oracle"
    return oracle

def oracle(case, n):
    if case == "balanced":
        return balanced(n)
    if case == "constant":
        return constant(n)
    
def dj_alg(oracle, n):
    dj = QuantumCircuit(n+1, n)
    dj.x(n)
    dj.h(n)
    for i in range(n):
        dj.h(i)
    dj.append(oracle, range(n+1))
    for i in range(n):
        dj.h(i)
    for i in range(n):
        dj.measure(i, i)
    return dj

def build_dj(case, n):
    o = oracle("balanced", n)
    dj = dj_alg(o, n)
    return dj

#--------------------------------------------------------------------------------
@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
@pytest.mark.parametrize("case", ["balanced", "constant"])

def bench_qiskit_dj(benchmark, optimization_level, backend, case):
    shots = 20000
    if case == "balanced":
        benchmark.name = "Deutsch Jozsa - Balanced Oracle"
        expected_counts = {str("1" * n):shots}
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "dj_balanced.qasm"))
    else:
        benchmark.name = "Deutsch Jozsa - Constant Oracle"
        expected_counts = {str("0" * n):shots}
        circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "dj_constant.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)
    
if __name__ == "__main__":
    build_dj("balanced", n).qasm(filename=os.path.join(QASM_DIR, "dj_balanced.qasm"))
    build_dj("constant", n).qasm(filename=os.path.join(QASM_DIR, "dj_constant.qasm"))