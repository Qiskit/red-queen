# ---------------------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ---------------------------------------------------------------------------------------------

# This benchamrk was implemented based on the following qiskit textbook notebook:

# github repository:
# https://github.com/qiskit-community/qiskit-textbook/blob/main/content/ch-algorithms/hidden-shift-problem.ipynb
# Variable names from functions were modified to comply with pylint recommendations
# Fourier-Transform-Free Algorithm code was ommited.
# Code was made applicable to take in other NUM_QUBITS and SECRET_STRING inputs.


"""Hidden Shift Benchmark Circuit"""

# initialization
import os
import pytest
from qiskit import QuantumCircuit
from red_queen.games.applications import backends, run_qiskit_circuit

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")

# ---------------------------------------------------------------------------------------------
NUM_QUBITS = 6  # number of input qubits
SECRET_STRING = "010110"  # the binary hidden shift string


def the_shift(num_qubits, secret_string):
    """the shifting operation for the given secret_string"""
    shift = QuantumCircuit(num_qubits)
    secret_string = secret_string[::-1]  # reverses secret_string qubit ordering
    for i_qubit in range(num_qubits):
        if secret_string[i_qubit] == "0":  # skips every secret_string qubit == 0
            continue
        else:
            shift.x(i_qubit)  # applies x gate to secret_string qubit == 1, shifts the qubits
    shift.name = "Shift"
    return shift


def g_oracle(num_qubits, secret_string):
    """defining the g oracle"""
    oracle_g = QuantumCircuit(num_qubits)

    # shifts the qubits
    oracle_g.append(the_shift(num_qubits, secret_string), range(num_qubits))

    # apply the oracle U_f = (-1)^f(x) = F(x)
    for i_qubit in range(int(num_qubits / 2)):
        oracle_g.cz(i_qubit, i_qubit + int(num_qubits / 2))

    oracle_g.z(int(num_qubits / 2) - 1)

    # undo the shift
    oracle_g.append(the_shift(num_qubits, secret_string), range(num_qubits))

    # naming oracle
    oracle_g.name = "Oracle g"
    return oracle_g


def f_oracle(num_qubits):
    """oracle circuit that encodes Fourier Transform"""
    oracle_f = QuantumCircuit(num_qubits)

    for i_qubit in range(int(num_qubits / 2)):
        oracle_f.cz(i_qubit, i_qubit + int(num_qubits / 2))

    oracle_f.z(int(num_qubits - 1))

    # name oracle
    oracle_f.name = "Oracle f"
    return oracle_f


def hs_circuit(num_qubits, secret_string):
    """setting up hidden shift circuit"""
    hs = QuantumCircuit(num_qubits, num_qubits)

    # apply Hadamard gates to all qubits to make superposition
    for i_qubit in range(num_qubits):
        hs.h(i_qubit)

    # query oracle_g
    hs.append(g_oracle(num_qubits, secret_string), range(num_qubits))

    # apply Hadamard gates to all qubits to perform a Boolean Fourier Transform
    for i_qubit in range(num_qubits):
        hs.h(i_qubit)

    # query oracle_f
    hs.append(f_oracle(num_qubits), range(num_qubits))

    # retrieve the secret_string using the Boolean Fourier transform, apply h gates again
    for i_qubit in range(num_qubits):
        hs.h(i_qubit)

    # measure all qubits
    for i_qubit in range(num_qubits):
        hs.measure(i_qubit, i_qubit)

    return hs


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_hs(benchmark, optimization_level, backend):
    """benchmarking for hidden_shift"""
    shots = 33333
    expected_counts = {SECRET_STRING: shots}
    benchmark.name = "Hidden Shift"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "hs.qasm"))

    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    hs_circuit(NUM_QUBITS, SECRET_STRING).qasm(filename=os.path.join(QASM_DIR, "hs.qasm"))
