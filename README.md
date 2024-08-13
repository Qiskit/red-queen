
> [!IMPORTANT]  
> This benchmarking tool is superseded by (Qiskit/benchpress)[https://github.com/Qiskit/benchpress]. The repository is no longer maintained and may contain errors. Contributions to this repo are no longer accepted.

# red-queen v2

red-queen v2 is a benchmarking tool designed to streamline the evaluation of quantum compilers. Our mission is to provide an accessible, standardized platform that facilitates direct comparisons of compiler performance, enabling apples to apples comparison between different quantum compilers, as well as different versions of the same quantum compiler. 

We built red-queen v2 because head-to-head performance measurements of quantum compliers tend to be inconsistent due to the fact that there is no widely accepted comparison tool. We aim for red-queen v2 to become a friendly standard for fair comparisons of quantum compilers. This is why we have made red-queen v2 modular, ensuring that one can easily add new benchmarks, metrics, and compilers for comparison. 

## Overview

red-queen v2 aspires to be the most comprehensive benchmarking tool for quantum compilers. It currently evaluates compilers on depth, speed, and memory footprint metrics for a user-defined backend. Instructions on adding benchmarks and metrics are given below. 

## Usage

### Running benchmarks

To run red-queen v2, first place the .qasm benchmarks you would like to run in the benchmarking/benchmarks folder. Then simply run `./run.sh` from the command line, and you will be prompted with a series of questions about the compilers you would like to benchmark. Currently, the supported compilers are qiskit and pytket. You can find information about adding compilers below. They accepted backends are the FakeV2 backends listed [here](https://docs.quantum.ibm.com/api/qiskit/providers_fake_provider).

### Interpreting results

The output of red-queen v2 is a JSON file with the following format:

[{“metadata”: {‘compiler’: ‘compiler name’, version: ‘version num’, ‘optimization_level’: optimization_level_num}, “backend”: “name of backend”,
“name of benchmark”: { 
"total_time (seconds)": [time], "build_time (seconds)": [time], "bind_time (seconds)": [time], "transpile_time (seconds)": [time], "depth (gates)": [depth], "memory_footprint (MiB)": [memory], 
"aggregate stattistics: 
	{"depth (gates)": 
		{"mean": mean, "median": median, "range": [range_0, range_1], "variance": variance, "standard_deviation": std}, 	"total_time (seconds)": {…}, 
	"build_time (seconds)": {…}, 
	"bind_time (seconds)": {…}, 
	"transpile_time (seconds)": {…}, 
	"memory_footprint (MiB)": {…}
}}},

{“metadata”: {‘compiler…}, …}, 
…]

### Adding compilers

To add a compiler to red-queen v2, one must:
1. Modify the run.sh file to include the new compiler.
2. And a conditional in the preprocess_benchmarks() function in the runner.py file that handles converting the .qasm benchmark into a high-level circuit supported by your compiler.
3. Modify each metric (currently memory footprint, time, and depth) in the run_benchmark() method of runner.py to include a conditional for handling your new compiler.

### Adding benchmarks

To add a benchmark, create a qasm file with your benchmark and add it to the benchmarking/benchmarks folder. A repository of benchmarks (some taken from QASMBench, others from red-queen) is located in the qasm-repository folder.

### Adding metrics

You can also add metrics by adding to the run_benchmark() method in the runner.py file. 

## Future work

In the future, we plan to streamline the process for adding compilers and metrics, as well as support arbitrary coupling maps for a given number of qubits and allow for testing of non-IBM backends. 
