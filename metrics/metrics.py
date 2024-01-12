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


class Metrics:
    """
    Metrics class. Handles depth metrics.
    """
    def get_circuit_depth(self, benchmark):
        self.get_qubit_depths(benchmark)
        _, depth = self.get_maximum_qubit_depth(benchmark)
        return depth

    def get_qubit_depths(self, benchmark):
        """
        Get depth of a specific qubit
        :return:
        """
        qubit_depth = {}
        for gate in benchmark.processed_qasm:
            op = benchmark.get_op(gate)
            if op not in benchmark.GATE_TABLE:
                print(f"{op} not counted towards evaluation. Not a valid from default gate tables")
                continue
            else:
                qubit_id = benchmark.get_qubit_id(gate)
                for qubit in qubit_id:
                    if qubit not in qubit_depth.keys():
                        qubit_depth[qubit] = 0
                    qubit_depth[qubit] += 1
        self.qubit_depth = qubit_depth

    def get_maximum_qubit_depth(self, benchmark):
        """
        Get maximum qubit depth
        :return:
        """
        self.get_qubit_depths(benchmark)
        qubit_depths = self.qubit_depth
        max_value = max(qubit_depths.values())  # maximum value
        max_keys = [k for k, v in qubit_depths.items() if v == max_value][0]
        # getting all keys containing the `maximum`
        self.max_qubit_depth_id = max_keys
        self.max_qubit_depth = max_value
        return max_keys, max_value