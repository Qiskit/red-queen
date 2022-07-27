# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Quantum Teleportation Benchmark Circuits"""

import os
import pytest
import numpy as np
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister
from qiskit import IBMQ, Aer, transpile
from applications import backends, run_qiskit_circuit
from qiskit.extensions import Initialize


QASM_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qasm")
state = [1/np.sqrt(2), -1j/np.sqrt(2)]

def bell_pair(qc, x, y):
    qc.h(x)
    qc.cx(x,y)
    
def a_gates(qc, psi, x):
    qc.cx(psi, x)
    qc.h(psi)

def measure_and_send(qc, x, y):
    qc.barrier()
    qc.measure(x,0)
    qc.measure(y,1)
    
def b_gates(qc, qubit, crz, crx):
    qc.x(qubit).c_if(crx, 1)
    qc.z(qubit).c_if(crz, 1)

def initgate(state):
    
    init_gate = Initialize(state)
    init_gate.label = "init"
    reverse = init_gate.gates_to_uncompute()
    reverse.label = "reverse"
    return init_gate, reverse
    
    
def build_qteleportation(state):
    qr = QuantumRegister(3, name="q")
    crz, crx = ClassicalRegister(1, name="crz"), ClassicalRegister(1, name="crx")
    teleportation_circuit = QuantumCircuit(qr, crz, crx)
    
    inits = initgate(state)
    
    teleportation_circuit.append(inits[0], [0])
    teleportation_circuit.barrier()
    
    bell_pair(teleportation_circuit, 1, 2)
    
    teleportation_circuit.barrier()
    a_gates(teleportation_circuit, 0, 1)
    
    measure_and_send(teleportation_circuit, 0, 1)
    
    teleportation_circuit.barrier() # Use barrier to separate steps
    b_gates(teleportation_circuit, 2, crz, crx)
    
    teleportation_circuit.append(inits[1], [2])
    
    cr_result = ClassicalRegister(1)
    teleportation_circuit.add_register(cr_result)
    teleportation_circuit.measure(2,2)
    
    return teleportation_circuit

