"""
This module contains the Preprocess class which is used for preprocessing QASM strings.
"""

# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.

# QASMBench Benchmark Suite:
# A low-level OpenQASM benchmark suite for NISQ evaluation and simulation.

# 06/04/2020 by Ang Li from High-Performance-Computing Group,
# ACMD, PCSD, Pacific Northwest National Laboratory (PNNL),
# Richland, WA, 99354, USA.


# Copyright © 2020, Battelle Memorial Institute

# 1.Battelle Memorial Institute (hereinafter Battelle) hereby grants permission
# to any person or entity lawfully obtaining a copy of this software and associated
# documentation files (hereinafter “the Software”) to redistribute and use the
# Software in source and binary forms, with or without modification.  Such person
# or entity may use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and may permit others to do so, subject to the
# following conditions:

# - Redistributions of source code must retain the above copyright notice, this list
# of conditions and the following disclaimers.

# - Redistributions in binary form must reproduce the above copyright notice, this list
# of conditions and the following disclaimer in the documentation and/or other materials
# provided with the distribution.

# - Other than as used herein, neither the name Battelle Memorial Institute or Battelle
# may be used in any form whatsoever without the express written consent of Battelle.

# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
# SHALL BATTELLE OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# This code is from QASMBench's QMetric.py module and adapted to work with red-queen.
# The original source can be found at:
#
# https://github.com/pnnl/QASMBench/blob/master/metrics/QMetric.py

import re

import numpy as np

import qiskit
from qiskit.transpiler.passes import RemoveBarriers


class Preprocess:
    """
    Preprocess class for QASM strings. Handles preprocessing.
    """

    def __init__(self, qasm):
        self.qasm = qasm
        # =======  Global tables and variables =========

        # Standard gates are gates defined in OpenQASM header.
        # Dictionary in {"gate name": number of standard gates inside}
        # pylint: disable=invalid-name
        self.STANDARD_GATE_TABLE = {
            "r": 1,  # 2-Parameter rotation around Z-axis and X-axis
            "sx": 1,  # SX Gate - Square root X gate
            "u3": 1,  # 3-parameter 2-pulse single qubit gate
            "u2": 1,  # 2-parameter 1-pulse single qubit gate
            "u1": 1,  # 1-parameter 0-pulse single qubit gate
            "cx": 1,  # controlled-NOT
            "id": 1,  # idle gate(identity)
            "x": 1,  # Pauli gate: bit-flip
            "y": 1,  # Pauli gate: bit and phase flip
            "z": 1,  # Pauli gate: phase flip
            "h": 1,  # Clifford gate: Hadamard
            "s": 1,  # Clifford gate: sqrt(Z) phase gate
            "sdg": 1,  # Clifford gate: conjugate of sqrt(Z)
            "t": 1,  # C3 gate: sqrt(S) phase gate
            "tdg": 1,  # C3 gate: conjugate of sqrt(S)
            "rx": 1,  # Rotation around X-axis
            "ry": 1,  # Rotation around Y-axis
            "rz": 1,  # Rotation around Z-axis
            "c1": 1,  # Arbitrary 1-qubit gate
            "c2": 1,
        }  # Arbitrary 2-qubit gate

        # Composition gates are gates defined in OpenQASM header.
        # Dictionary in {"gate name": number of standard gates inside}
        self.COMPOSITION_GATE_TABLE = {
            "p": 1,  # Phase Gate
            "cz": 3,  # Controlled-Phase
            "cy": 3,  # Controlled-Y
            "swap": 3,  # Swap
            "ch": 11,  # Controlled-H
            "ccx": 15,  # C3 gate: Toffoli
            "cswap": 17,  # Fredkin
            "crx": 5,  # Controlled RX rotation
            "cry": 4,  # Controlled RY rotation
            "crz": 4,  # Controlled RZ rotation
            "cu1": 5,  # Controlled phase rotation
            "cu3": 5,  # Controlled-U
            "rxx": 7,  # Two-qubit XX rotation
            "ryy": 7,
            "rzz": 3,  # Two-qubit ZZ rotation
            "rccx": 9,  # Relative-phase CCX
            "rc3x": 18,  # Relative-phase 3-controlled X gate
            "c3x": 27,  # 3-controlled X gate
            "c3sqrtx": 27,  # 3-controlled sqrt(X) gate
            "c4x": 87,  # 4-controlled X gate
        }

        # OpenQASM native gate table, other gates are user-defined.
        self.GATE_TABLE = {
            **self.COMPOSITION_GATE_TABLE,
            **self.STANDARD_GATE_TABLE,
        }

        # ==================================================================================
        # For the statistics of the number of CNOT or CX gate in the circuit

        # Number of CX in Standard gates
        self.STANDARD_CX_TABLE = {
            "r": 0,
            "u3": 0,
            "u2": 0,
            "u1": 0,
            "sx": 0,
            "cx": 1,
            "id": 0,
            "x": 0,
            "y": 0,
            "z": 0,
            "h": 0,
            "s": 0,
            "sdg": 0,
            "t": 0,
            "tdg": 0,
            "rx": 0,
            "ry": 0,
            "rz": 0,
            "c1": 0,
            "c2": 1,
        }
        # Number of CX in Composition gates
        self.COMPOSITION_CX_TABLE = {
            "p": 0,
            "cz": 1,
            "cy": 1,
            "swap": 3,
            "ch": 2,
            "ccx": 6,
            "cswap": 8,
            "crx": 2,
            "cry": 2,
            "crz": 2,
            "cu1": 2,
            "cu3": 2,
            "rxx": 2,
            "rzz": 2,
            "ryy": 2,
            "rccx": 3,
            "rc3x": 6,
            "c3x": 6,
            "c3sqrtx": 6,
            "c4x": 18,
        }

        self.CX_TABLE = {
            **self.STANDARD_CX_TABLE,
            **self.COMPOSITION_CX_TABLE,
        }

        self.USER_DEFINED_GATES = {}
        # pylint: enable=invalid-name
        # Keywords in QASM that are currently not used
        self.other_keys = [
            "measure",
            "barrier",
            "OPENQASM",
            "include",
            "creg",
            "if",
            "reset",
        ]
        self.measure_key = "measure"
        self.trigger_key = "if"
        self.skip_keys = [
            "OPENQASM",
            "include",
            "qreg",
            "creg",
            "barrier",
            "reset",
            "//",
        ]

        self.circuit = qiskit.QuantumCircuit().from_qasm_str(qasm)
        self.circuit = RemoveBarriers()(self.circuit)

        self.measurement_count = None
        # Filter the QASM code for all lines containing strings within the "SKIP Keys" variable
        self.qubit_count = None
        self.cbit_count = None
        self.qubit_labelled = None
        self.cbit_labelled = None
        self.processed_qasm = None

        self.preprocess_qasm()

    def preprocess_qasm(self):
        """
        Preprocess pipeline for QASM strings.
        """
        self.collate_gates()
        self.decompose_circuit()
        self.final_preprocessing()

    def get_op(self, line: str):
        """
        :param line: A line of QASM
        :return: The operation contained in the line of QASM
        """
        if line.find("(") != -1:
            line = line[: line.find("(")].strip()
        op = line.split(" ")[0].strip()
        return op

    def get_qubit_id(self, line: str):
        """
        Search for qubits that are active in a line of QASM code
        :param line: Line of QASM code
        :return: Qubits being used in the line of QASM code
        """
        line = line.strip(";")
        op_qubits = line.split(" ")[1].strip().split(",")
        qubit_ids = []
        for op_qubit in op_qubits:
            if "[" in op_qubit:
                qubit_prefix = op_qubit.split("[")[0]
                num = int(re.findall(r"^.*?\[[^\d]*(\d+)[^\d]*\].*$", op_qubit)[0])
                qubit_ids.append(qubit_prefix + str(num))
            else:
                qubit_ids = [x for x in self.qubit_labelled if op_qubit in x]
        return qubit_ids

    def collate_gates(self):
        """
        Preprocessing function for QASM String
        """
        gate_def = "gate"
        temporary_qasm = np.array([x.strip() for x in self.qasm.split("\n")])
        start_point, end_point = None, None
        to_remove = []
        for index, line in enumerate(temporary_qasm):
            line_contents = line.split(" ")
            if line_contents[0].strip() == gate_def:
                start_point = index
                gate_name = line_contents[1]
            if line_contents[0].strip() == "}":
                end_point = index
            if start_point and end_point:
                gate_count = 0
                cx_count = 0
                for i in range(end_point - start_point - 1):
                    print(temporary_qasm[start_point + i + 1])
                    if "{" in temporary_qasm[start_point + i + 1]:
                        continue
                    operation = self.get_op(temporary_qasm[start_point + i + 1])
                    cx_count += self.CX_TABLE[operation]
                    gate_count += self.GATE_TABLE[operation]
                to_remove.append((start_point, end_point))
                end_point, start_point = None, None
                self.USER_DEFINED_GATES[gate_name] = None
                self.CX_TABLE[gate_name] = cx_count
                self.GATE_TABLE[gate_name] = gate_count
        valid_indexes = np.ones(len(temporary_qasm))
        for start, end in to_remove:
            valid_indexes[start : end + 1] = 0
        temporary_qasm = temporary_qasm[valid_indexes.astype("bool")]
        self.qasm = temporary_qasm

    def decompose_circuit(self):
        gates = list(self.USER_DEFINED_GATES.keys())
        for _ in range(len(gates)):
            self.circuit = self.circuit.decompose(gates_to_decompose=gates)

    def final_preprocessing(self):
        """
        Extensive analysis of QASM string. Counts qubits, gets qubit ID's etc.
        This is the large preprocessing function
        """
        qreg = "qreg"
        creg = "creg"
        regex_str = r"^.*?\[[^\d]*(\d+)[^\d]*\].*$"
        regex_id_str = r"(.*?)\s*\["
        # Break QASM into line by line commands
        qasm = self.qasm
        # Search for all qubit declaration lines
        qubit_count = [x for x in qasm if qreg in x]
        t_qubits = 0
        t_cbits = 0
        qbit_labelled = {}
        # Load all qubits into the qubit count and give them unique IDs
        for qubit_index in qubit_count:
            info_string = qubit_index.split(" ")[-1]
            qubit_id = re.findall(regex_id_str, info_string)[0]
            qbit_counts = int(re.findall(regex_str, qubit_index)[0])
            try:
                previous_cap = max(qbit_labelled.values()) + 1
            except ValueError:
                previous_cap = 0
            for i in range(qbit_counts):
                qbit_labelled[str(qubit_id) + str(i)] = i + previous_cap
            t_qubits += int(qbit_counts)
        # Search for all cbit declaration lines
        cbit_count = [x for x in qasm if creg in x]
        cbit_labelled = {}
        # Load all cbits into the cbit count and give them unique IDs
        for cbit_index in cbit_count:
            info_string = cbit_index.split(" ")[-1]
            cbit_id = re.findall(regex_id_str, info_string)[0]
            cbit_counts = int(re.findall(regex_str, cbit_index)[0])
            for i in range(cbit_counts):
                if len(cbit_labelled) == 0:
                    cbit_labelled[str(cbit_id) + str(i)] = i
                else:
                    cbit_labelled[str(cbit_id) + str(i)] = i + max(
                        cbit_labelled.values()
                    )
            t_cbits += int(cbit_counts)
        # Remove all If statements from the QASM code, as we count these as gates.
        for i, line in enumerate(qasm):
            if self.trigger_key in line[:3]:  # Fix this later - IF causes problems
                indx = line.find(" ")
                line = line[indx + 1 :]
                qasm[i] = line
        filtered_qasm = [
            x for x in qasm if not any(skip_key in x for skip_key in self.skip_keys)
        ]
        filtered_qasm = [
            x for x in filtered_qasm if x != ""
        ]  # Drop any trailing end of lists such as ''
        measurement_count = len([x for x in filtered_qasm if self.measure_key in x])
        filtered_qasm = [x for x in filtered_qasm if not self.measure_key in x]
        self.measurement_count = measurement_count
        # Filter the QASM code for all lines containing strings within the "SKIP Keys" variable
        self.qubit_count = int(t_qubits)
        self.cbit_count = int(t_cbits)
        self.qubit_labelled = qbit_labelled
        self.cbit_labelled = cbit_labelled
        self.processed_qasm = filtered_qasm
