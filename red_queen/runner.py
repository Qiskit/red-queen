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

# The functions get_qubit depths, get_maximum_qubit_depths, and get_circuit_depths are from QASMBench's QMetric.py module and adapted to work with red-queen.
# The original source can be found at:
#
# https://github.com/pnnl/QASMBench/blob/master/metrics/QMetric.py

import sys
import os
import json
import time
import multiprocessing
import logging
import copy

from preprocessing import Preprocess
from utils import *

import qiskit
from qiskit import *
from qiskit import qasm2
from qiskit.providers.fake_provider import *
from qiskit.circuit.library import *
from memory_profiler import memory_usage
import numpy as np

from pytket.qasm import circuit_to_qasm_str
from pytket.qasm import circuit_from_qasm

logger = logging.getLogger("my_logger")
logger.setLevel(logging.INFO)

console_handler = logging.StreamHandler()
console_handler.setLevel(logging.INFO)

logger.addHandler(console_handler)

# TODO: comment this class well

class Runner:
    def __init__(
        self,
        compiler_dict: dict,
        backend,
        num_runs: int,
        second_compiler_readout: str,
        exclude_list=[],
    ):
        """
        :param compiler_dict: dictionary of compiler info --> {"compiler": "COMPILER_NAME", "version": "VERSION NUM", "optimization_level": OPTIMIZATION_LEVEL}
        :param backend: name of backend to be used --> "BACKEND_NAME"
        :param num_runs: number of times to run each benchmark
        :param exclude_list: list of metrics to exclude from the benchmarking process
        """

        self.compiler_dict = compiler_dict
        self.backend = backend
        self.num_runs = num_runs
        self.exclude_list = exclude_list

        self.full_benchmark_list = []
        self.metric_data = {"metadata: ": self.compiler_dict, "backend": self.backend}
        self.metric_list = [
            "total_time (seconds)",
            "parsing/build_time (seconds)",
            "transpile_time (seconds)",
            "depth (gates)",
            "memory_footprint (MiB)",
        ]
        self.second_compiler_readout = second_compiler_readout

        self.preprocess_benchmarks()

    def get_qasm_benchmark(self, qasm_name):
        benchmarking_path = os.path.join(
            os.path.dirname(__file__), "benchmarking", "benchmarks"
        )
        with open(os.path.join(benchmarking_path, qasm_name), "r") as f:
            qasm = f.read()
        return qasm

    def list_files(self, directory):
        return [
            f
            for f in os.listdir(directory)
            if os.path.isfile(os.path.join(directory, f))
        ]

    def delete_ds_store(self, directory):
        ds_store_path = os.path.join(directory, ".DS_Store")
        if os.path.exists(ds_store_path):
            os.remove(ds_store_path)

    def preprocess_benchmarks(self):
        """
        Preprocess benchmarks before running them.
        """
        benchmarking_path = os.path.join(
            os.path.dirname(__file__), "benchmarking", "benchmarks"
        )
        benchmarks = self.list_files(benchmarking_path)
        for benchmark in benchmarks:
            if benchmark == ".DS_Store":
                continue
            qasm = self.get_qasm_benchmark(benchmark)
            logger.info("Converting " + benchmark + " to high-level circuit...")

            start_time = time.perf_counter()
            if self.compiler_dict["compiler"] == "pytket":
                circuit = circuit_from_qasm(os.path.join(benchmarking_path, benchmark))
            elif self.compiler_dict["compiler"] == "qiskit":
                circuit = QuantumCircuit.from_qasm_str(qasm)
            build_time = time.perf_counter()

            self.full_benchmark_list.append({benchmark: circuit})
            # TODO: should fill these keys in based on exclude_list
            self.metric_data[benchmark] = {
                "total_time (seconds)": [],
                "parsing/build_time (seconds)": [build_time - start_time],
                "transpile_time (seconds)": [],
                "depth (gates)": [],
                "memory_footprint (MiB)": [],
            }

    def run_benchmarks(self):
        """
        Run all benchmarks in full_benchmark_list.
        """
        logger_counter = 1
        for benchmark in self.full_benchmark_list:

            for _ in range(self.num_runs):
                logger.info(
                    "Running benchmark "
                    + str(logger_counter)
                    + " of "
                    + str(self.num_runs * len(self.full_benchmark_list))
                    + "..."
                )
                self.run_benchmark(benchmark)
                logger_counter += 1

            self.calculate_aggregate_statistics(benchmark)
        self.save_results()

    def save_results(self):
        results_dir = os.path.join(os.path.dirname(__file__), "results")
    
        # Check if the directory exists and create it if it doesn't
        if not os.path.exists(results_dir):
            os.makedirs(results_dir)

        self.delete_ds_store("results")
        run_number = len(self.list_files("results")) + 1

        if self.second_compiler_readout == "true":
            results_path = os.path.join(
                os.path.dirname(__file__),
                "results",
                f"results_run{run_number - 1}.json",
            )

            with open(results_path, "r") as json_file:
                data = json.load(json_file)
            data.append(self.metric_data)
            with open(results_path, "w") as json_file:
                json.dump(data, json_file)
        else:
            results_path = os.path.join(
                os.path.dirname(__file__), "results", f"results_run{run_number}.json"
            )
            with open(results_path, "w") as json_file:
                json.dump([self.metric_data], json_file)

    def transpile_in_process(self, benchmark, optimization_level):
        backend = choose_backend(self.backend)  # FakeFlamingo(11) #
        start_mem = memory_usage(max_usage=True)
        if self.compiler_dict["compiler"] == "pytket":
            tket_pm = initialize_tket_pass_manager(backend, optimization_level)
            tket_pm.apply(benchmark)
        else:
            transpile(
                benchmark, backend, optimization_level=optimization_level
            )  # backend=FakeFlamingo(11), optimization_level=optimization_level) #

        end_mem = memory_usage(max_usage=True)
        memory = end_mem - start_mem
        return memory

    def profile_func(self, benchmark):
        # To get accurate memory usage, need to multiprocess transpilation
        with multiprocessing.Pool(1) as pool:
            memory = pool.apply(
                self.transpile_in_process,
                (benchmark, self.compiler_dict["optimization_level"]),
            )
        return memory

    def run_benchmark(self, benchmark):
        """
        Run a single benchmark.

        :param benchmark_name: name of benchmark to be used
        :param metric_data: dictionary containing all metric data
        """

        benchmark_name = list(benchmark.keys())[0]
        benchmark_circuit = list(benchmark.values())[0]

        # TODO: turn everything that is inside the if statement into a function that is in a separate file for
        # each metric? Could have a metrics folder with a file for each metric. Users could easily add their own
        # metrics by adding a file to the metrics folder. Then here we can for loop over all of the metrics in the folder.

        if "memory_footprint (MiB)" not in self.exclude_list:
            # Add memory_footprint to dictionary corresponding to this benchmark
            logger.info("Calculating memory footprint...")
            # Multiprocesss transpilation to get accurate memory usage
            # Must deepcopy benchmark_circuit to avoid compiling the same circuit multiple times
            memory = self.profile_func(copy.deepcopy(benchmark_circuit))
            self.metric_data[benchmark_name]["memory_footprint (MiB)"].append(memory)

        backend = choose_backend(self.backend)  # FakeFlamingo(11)

        if (
            "total_time (seconds)" not in self.exclude_list
            and "depth (gates)" not in self.exclude_list
        ):
            logger.info("Calculating speed...")
            # to get accurate time measurement, need to run transpilation without profiling
            benchmark_copy = copy.deepcopy(benchmark_circuit)
            if self.compiler_dict["compiler"] == "pytket":
                tket_pm = initialize_tket_pass_manager(
                    backend, optimization_level=self.compiler_dict["optimization_level"]
                )
                start_time = time.perf_counter()
                tket_pm.apply(benchmark_copy)

            else:
                start_time = time.perf_counter()
                transpiled_circuit = transpile(
                    benchmark_copy,
                    backend=backend,
                    optimization_level=self.compiler_dict["optimization_level"],
                )

            end_time = time.perf_counter()
            self.metric_data[benchmark_name]["transpile_time (seconds)"].append(
                end_time - start_time
            )
            self.metric_data[benchmark_name]["total_time (seconds)"].append(
                end_time
                - start_time
                + +self.metric_data[benchmark_name]["parsing/build_time (seconds)"][-1]
                + self.metric_data[benchmark_name]["transpile_time (seconds)"][-1]
            )
            logger.info("Calculating depth...")
            if self.compiler_dict["compiler"] == "pytket":
                transpiled_circuit = benchmark_copy
                qasm_string = circuit_to_qasm_str(transpiled_circuit)
            else:
                # If the qiskit version is less than 1.0 use the old qasm method
                if int(qiskit.__version__[0]) < 1:
                    qasm_string = transpiled_circuit.qasm()
                else:
                    qasm_string = qasm2.dumps(transpiled_circuit)
            processed_qasm = Preprocess(qasm_string)
            depth = self.get_circuit_depth(processed_qasm)
            self.metric_data[benchmark_name]["depth (gates)"].append(depth)

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
                print(
                    f"{op} not counted towards evaluation. Not a valid from default gate tables"
                )
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

    def calculate_aggregate_statistics(self, benchmark):
        """
        Calculate aggregate statistics on metrics.
        """
        # For each metric, calculate mean, median, range, variance, standard dev
        benchmark_name = list(benchmark.keys())[0]
        self.metric_data[benchmark_name]["aggregate"] = {}
        for metric in self.metric_list:
            self.metric_data[benchmark_name]["aggregate"][metric] = {}
            self.metric_data[benchmark_name]["aggregate"][metric]["mean"] = np.mean(
                np.array(self.metric_data[benchmark_name][metric], dtype=float)
            )
            self.metric_data[benchmark_name]["aggregate"][metric]["median"] = np.median(
                np.array(self.metric_data[benchmark_name][metric], dtype=float)
            )
            self.metric_data[benchmark_name]["aggregate"][metric]["range"] = (
                np.min(np.array(self.metric_data[benchmark_name][metric], dtype=float)),
                np.max(np.array(self.metric_data[benchmark_name][metric], dtype=float)),
            )
            self.metric_data[benchmark_name]["aggregate"][metric]["variance"] = np.var(
                np.array(self.metric_data[benchmark_name][metric], dtype=float)
            )
            self.metric_data[benchmark_name]["aggregate"][metric][
                "standard_deviation"
            ] = np.std(np.array(self.metric_data[benchmark_name][metric], dtype=float))

        logger.info(self.metric_data)


if __name__ == "__main__":

    runner = Runner(
        {
            "compiler": str(sys.argv[1]),
            "version": str(sys.argv[2]),
            "optimization_level": int(sys.argv[3]),
        },
        str(sys.argv[4]),  # "FakeFlamingo"
        int(sys.argv[5]),
        str(sys.argv[6]),
    )
    runner.run_benchmarks()
