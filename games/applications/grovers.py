"""
Grover's Search Benchmark Program - Qiskit
"""
import os
import secrets


import pytest

import numpy as np
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from . import backends, run_qiskit_circuit

QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm//grovers/")


np.random.seed(0)

_use_mcx_shim = False 

# saved circuits for display
QC_ = None
grover_oracle = None
diffusion_operator = None

QubitCount = np.random.randint(2,5)
SECRET_STATE = np.random.randint(0,(2**QubitCount))

############### Circuit Definition

def GroversSearch(num_qubits, marked_item):
    n_iterations = int(np.pi * np.sqrt(2 ** num_qubits) / 4)
    # allocate qubits
    qr = QuantumRegister(num_qubits);
    cr = ClassicalRegister(num_qubits);
    qc = QuantumCircuit(qr, cr, name="main")

    # Start with Hadamard on all qubits
    for i_qubit in range(num_qubits):
        qc.h(qr[i_qubit])

    # loop over the estimated number of iterations
    for _ in range(n_iterations):

        # qc.barrier()
    
        # add the grover oracle
        qc.append(add_grover_oracle(num_qubits, marked_item).to_instruction(), qr)
        
        # add the diffusion operator
        qc.append(add_diffusion_operator(num_qubits).to_instruction(), qr)

    # qc.barrier()
        
    # measure all qubits
    qc.measure(qr, cr)

    # save smaller circuit example for display
    global QC_    
    if QC_ == None or num_qubits <= 5:
        if num_qubits < 9: QC_ = qc
        
    # return a handle on the circuit
    return qc

############## Grover Oracle

def add_grover_oracle(num_qubits, marked_item):
    global grover_oracle
    
    marked_item_bits = format(marked_item, f"0{num_qubits}b")[::-1]

    qr = QuantumRegister(num_qubits); qc = QuantumCircuit(qr, name="oracle")

    for (q, bit) in enumerate(marked_item_bits):
        if not int(bit):
            qc.x(q)

    qc.h(num_qubits - 1)
    
    if _use_mcx_shim:
        add_mcx(qc, [x for x in range(num_qubits - 1)], num_qubits - 1)
    else:
        qc.mcx([x for x in range(num_qubits - 1)], num_qubits - 1)
        
    qc.h(num_qubits - 1)

    # qc.barrier()

    for (q, bit) in enumerate(marked_item_bits):
        if not int(bit):
            qc.x(q)

    if grover_oracle == None or num_qubits <= 5:
        if num_qubits < 9: grover_oracle = qc
        
    return qc

############## Grover Diffusion Operator

def add_diffusion_operator(num_qubits):
    global diffusion_operator

    qr = QuantumRegister(num_qubits); qc = QuantumCircuit(qr, name="diffuser")

    for i_qubit in range(num_qubits):
        qc.h(qr[i_qubit])
    for i_qubit in range(num_qubits):
        qc.x(qr[i_qubit])
    qc.h(num_qubits - 1)
    
    if _use_mcx_shim:
        add_mcx(qc, [x for x in range(num_qubits - 1)], num_qubits - 1)
    else:
        qc.mcx([x for x in range(num_qubits - 1)], num_qubits - 1)
        
    qc.h(num_qubits - 1)

    # qc.barrier()

    for i_qubit in range(num_qubits):
        qc.x(qr[i_qubit])
    for i_qubit in range(num_qubits):
        qc.h(qr[i_qubit])
        
    if diffusion_operator == None or num_qubits <= 5:
        if num_qubits < 9: diffusion_operator = qc
        
    return qc

############### MCX shim

# single cx / cu1 unit for mcx implementation
def add_cx_unit(qc, cxcu1_unit, controls, target):
    num_controls = len(controls)
    i_qubit = cxcu1_unit[1]
    j_qubit = cxcu1_unit[0]
    theta = cxcu1_unit[2]
    
    if j_qubit != None:
        qc.cx(controls[j_qubit], controls[i_qubit]) 
    qc.cu1(theta, controls[i_qubit], target)
        
    i_qubit = i_qubit - 1
    if j_qubit == None:
        j_qubit = i_qubit + 1
    else:
        j_qubit = j_qubit - 1
        
    if theta < 0:
        theta = -theta
    
    new_units = []
    if i_qubit >= 0:
        new_units += [ [ j_qubit, i_qubit, -theta ] ]
        new_units += [ [ num_controls - 1, i_qubit, theta ] ]
        
    return new_units

# mcx recursion loop 
def add_cxcu1_units(qc, cxcu1_units, controls, target):
    new_units = []
    for cxcu1_unit in cxcu1_units:
        new_units += add_cx_unit(qc, cxcu1_unit, controls, target)
    cxcu1_units.clear()
    return new_units

# mcx gate implementation: brute force and inefficent
# start with a single CU1 on last control and target
# and recursively expand for each additional control
def add_mcx(qc, controls, target):
    num_controls = len(controls)
    theta = np.pi / 2**num_controls
    qc.h(target)
    cxcu1_units = [ [ None, num_controls - 1, theta] ]
    while len(cxcu1_units) > 0:
        cxcu1_units += add_cxcu1_units(qc, cxcu1_units, controls, target)
    qc.h(target)


# def GroversSearch(num_qubits, marked_item, n_iterations)
def grovers_dist(num_qubits, marked_item, n_iterations):
    dist = {}
    for i in range(2**num_qubits):
        key = bin(i)[2:].zfill(num_qubits)
        theta = np.arcsin(1/np.sqrt(2 ** num_qubits))
        if i == marked_item:
            dist[key] = np.sin((2*n_iterations+1)*theta)**2
        else:
            dist[key] = (np.cos((2*n_iterations+1)*theta)/(np.sqrt(2 ** num_qubits - 1)))**2
    return dist


@pytest.mark.qiskit
@pytest.mark.parametrize("optimization_level", [0, 1, 2, 3])
@pytest.mark.parametrize("backend", backends)
def bench_qiskit_grovers(benchmark, optimization_level, backend):
    shots = 70000
    expected_counts = {format(SECRET_STATE, "b").zfill(QubitCount): shots}
    benchmark.name = "Grover's Search Algorithm"
    circ = QuantumCircuit.from_qasm_file(os.path.join(QASM_DIR, f"grover{QubitCount}-{SECRET_STATE}.qasm"))
    benchmark.algorithm = f"Optimization level: {optimization_level} on {backend.name()}"
    run_qiskit_circuit(benchmark, circ, backend, optimization_level, shots, expected_counts)


if __name__ == "__main__":
    GroversSearch(QubitCount, SECRET_STATE).qasm(filename=os.path.join(QASM_DIR, f"grover{QubitCount}-{SECRET_STATE}.qasm"))

# This for loop was used to create the necessary qasm files for this benchmark
 # for i in range(2,6):
    #     for special_num in range((2**i)):
    #         GroversSearch(i, special_num).qasm(filename=os.path.join(QASM_DIR, f"grover{i}-{special_num}.qasm"))