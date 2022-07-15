# """Hidden Shift Benchmark Circuit"""

# initialization
import numpy as np
import os
import pytest
from qiskit import IBMQ, Aer, QuantumCircuit, transpile, assemble
from qiskit.visualization import plot_histogram
# from applications import backends, run_qiskit_circuit

#create qasm files
QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm//hs/")

#------------------------------------------------------------

num_qubits = 6               # number of input qubits

secret_string = "010110"     # the binary hidden shift string 

#------------------------------------------------------------

def the_shift(num_qubits, secret_string):
    # the shifting operation for the given secret_string
    the_shift = QuantumCircuit(num_qubits)
    secret_string = secret_string[::-1]    # reverse secret_string to fit qiskit'secret_string qubit ordering
    for i_qubit in range(num_qubits):
        if secret_string[i_qubit] == '0':   # skips every secret_string qubit == 0
            continue
        else:
            the_shift.x(i_qubit)    # applies x gate to secret_string qubit == 1, shifts the qubits
    the_shift.name = 'Shift'
    return the_shift

# Display circuit
the_shift(num_qubits, secret_string).draw()     # display the_shift

#------------------------------------------------------------

def g_oracle(num_qubits):
    g_oracle = QuantumCircuit(num_qubits)

    # shifts the qubits
    g_oracle.append(the_shift(num_qubits, secret_string), range(num_qubits))
    
    # apply the oracle U_f = (-1)^f(x) = F(x)
    # x·y corresponds to controlled-z gates between every qubit and its second qubit
    for i_qubit in range(int(num_qubits/2)):
        g_oracle.cz(i_qubit, i_qubit+int(num_qubits/2))
    
    # h(x) = x·e_2 corresponds to the z gate applied to middle qubit
    g_oracle.z(int(num_qubits/2)-1) 
    
    # undo the shift
    g_oracle.append(the_shift(num_qubits, secret_string), range(num_qubits))
    
    # naming oracle
    g_oracle.name = 'Oracle g'
    return g_oracle

# display g_oracle
g_oracle(num_qubits).draw()

#------------------------------------------------------------

def f_oracle(num_qubits):
    # oracle circuit that encodes Fourier Transform 
    f_oracle = QuantumCircuit(num_qubits)
    
    # x·y corresponds to controlled-z gates between every qubit and its second qubit
    for i_qubit in range(int(num_qubits/2)):
        f_oracle.cz(i_qubit, i_qubit+int(num_qubits/2))
    
    # apply h(y) = y·e_2, corresponds to the z gate of the second qubit of the last register, aka the last qubit of the circuit.
    f_oracle.z(int(num_qubits-1)) 
    
    # name oracle
    f_oracle.name = 'Oracle f'
    return f_oracle

# display f_oracle
f_oracle(num_qubits).draw()

#------------------------------------------------------------

hs_circuit = QuantumCircuit(num_qubits, num_qubits)

# apply Hadamard gates to all qubits to make superposition
for i_qubit in range(num_qubits):
    hs_circuit.h(i_qubit)
hs_circuit.barrier()    # barrier for visual separation

# query oracle_g  
hs_circuit.append(g_oracle(num_qubits), range(num_qubits))
hs_circuit.barrier()

# apply Hadamard gates to all qubits to perform a Boolean Fourier Transform
for i_qubit in range(num_qubits):
    hs_circuit.h(i_qubit)
hs_circuit.barrier()

# query oracle_f
hs_circuit.append(f_oracle(num_qubits), range(num_qubits))
hs_circuit.barrier()

# retrieve the secret_string by performing the Boolean Fourier transform again aka apply h gates again
for i_qubit in range(num_qubits):
    hs_circuit.h(i_qubit)
hs_circuit.barrier()

# measure all qubits
for i_qubit in range(num_qubits):
    hs_circuit.measure(i_qubit, i_qubit)

# display circuit
hs_circuit.draw()

#------------------------------------------------------------

# use local simulator
aer_sim = Aer.get_backend('aer_simulator')
transpiled_hsp_circuit = transpile(hs_circuit, aer_sim)
qobj = assemble(transpiled_hsp_circuit, aer_sim)
results = aer_sim.run(qobj).result()
answer = results.get_counts()

# histogram should display 1.00 probability of secret_string
plot_histogram(answer)

#------------------------------------------------------------

# @pytest.mark.qiskit
# @pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
# @pytest.mark.parametrize("backend", backends)
# @pytest.mark.parametrize("method", ["with_QF"])
# def bench_qiskit_hs(benchmark, optimization_level, backend, method):
#     shots = 33333
#     expected_counts = {secret_string: shots}
#     if method == "with_QF":
#         benchmark.name = "Hidden Shift"
#         circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, "hs.qasm"))
    
#     benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
#     run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    hs_circuit(secret_string).qasm(filename=os.path.join(QASM_DIR, "hs.qasm"))
