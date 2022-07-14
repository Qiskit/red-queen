
import os
import pytest
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
#from applications import backends, run_qiskit_circuit
import numpy as np
import math

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm/qpe")
SECRET_ANGLE = 1/16
NUMQUBITS = np.random.randint(3,7)

#This will convert the fraction into binary for the secret angle 
def fraction_bin(num, precision=10):
    binary = ""
    while (precision and num != 0):
        num *= 2
        bit = int(num)
        if (bit == 1) :   
            num -= bit  
            binary += '1'
        else : 
            binary += '0'
        precision -= 1
    return binary


#Inverse QFT Function 
def qft_dagger(qc, n):
    """n-qubit QFTdagger the first n qubits in circ"""
    # Don't forget the Swaps!
    for qubit in range(n//2):
        qc.swap(qubit, n-qubit-1)
    for j in range(n):
        for m in range(j):
            qc.cp(-math.pi/float(2**(j-m)), m, j)
        qc.h(j)

#Construct the phase gates and include matching gate representation as readme circuit
def CPhase(angle, exponent):

    qc = QuantumCircuit(1, name=f"U^{exponent}")
    qc.p(angle*exponent, 0)
    phase_gate = qc.to_gate().control(1)

    return phase_gate, qc

def Quantum_Phase_Estimation(num_of_qubits, angle):
    
    Cqubits = num_of_qubits - 1 #there is one less for the counting qubits
  
    #setting up the circuit
    qr = QuantumRegister(num_of_qubits)
    cr = ClassicalRegister(Cqubits)
    qc = QuantumCircuit(qr, cr)
    
    #initialize the state
    qc.x(Cqubits)
    
    #next apply the Hadmard gate to put the qubits in superposition
    for qubit in range(Cqubits):
        qc.h(qr[qubit])
        
    #next apply the controlled unitary operation. this applies a phase to only the |1> state. 
    repetition = 1
    
    #Phase of QFT
    Phase = 2*math.pi*angle
    
    for j in (range(Cqubits)):
        cp,Pgate= CPhase(Phase, repetition)
        qc.append(cp, [j, Cqubits])
        repetition *= 2
   
    #define your Unitary gate 
    Pgate,U = CPhase(Phase, repetition)
          
    qc.barrier()  
   
    #Now apply the inverse QFT
    qft_dagger(qc, Cqubits)
    
    #Lastly measure it 
    qc.measure([qr[m] for m in range(Cqubits)], list(range(Cqubits)))

    return qc

#Benchmarking

@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
#@pytest.mark.parametrize("backend", backends)
def bench_qiskit_bv(benchmark, optimization_level, backend):
    shots = 65536
    expected_counts = {fraction_bin(SECRET_ANGLE): shots}
    benchmark.name = "Quantum Phase Estimation"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"qpe{NUMQUBITS}.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    Quantum_Phase_Estimation(NUMQUBITS,SECRET_ANGLE).qasm(filename=os.path.join(QASM_DIR, f"qpe{NUMQUBITS}.qasm"))

