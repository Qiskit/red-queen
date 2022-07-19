#!/usr/bin/env python3
import argparse
import os
from os import walk
import sys
from contextlib import redirect_stderr
import subprocess
from zoneinfo import available_timezones
from pathlib import Path

def benchmarkRetrieval():
    benchmark_category = {}
    benchmark_types = []
    benchmarks = []
    dir_path = "games"
    for entry in os.scandir(dir_path):
        if not entry.name.startswith('.') and entry.is_dir():
            benchmark_category[entry.name] = []
            subDict = {}
            for sub in os.scandir(f'games/{entry.name}'):
                if not sub.name.startswith("_") and sub.name.endswith('.py') and sub.is_file():
                    subDict[sub.name] = sub.path
            benchmark_category[entry.name] = subDict

    benchmark_types = list(benchmark_category.keys())

    for benchmark_pairs in benchmark_category.values():
        for keys in benchmark_pairs.keys():
            benchmarks.append(keys)

    return benchmark_category, benchmark_types, benchmarks



def main():
    benchmark_category, benchmark_types, benchmarks  = benchmarkRetrieval()

    parser = argparse.ArgumentParser(prog='red-queen',
                                    description='Red-Queen is a benchmark suite for quantum compilers')
    # parser.add_argument('--verbose', '-v')
    parser.add_argument('--version', action='version', version='%(prog)s 1.0.0')
    parser.add_argument("-c", "--compiler",choices=["qiskit", "tket", "tweedledum"], required=True, help='enter a compliler here')
    parser.add_argument("-t","--benchmarkType", nargs='*', choices=benchmark_types, help='enter the type of benchmark here')
    parser.add_argument("-b","--benchmark", nargs='*', choices=benchmarks, help='enter the specfic benchmark here')

    args = parser.parse_args()

    # ### This for loop ensures that we are able to run various benchmark types
    i = 0
    while i < len(args.benchmarkType):
        ### Has a benchmark type been specified?
        if args.benchmarkType is not None:
            # print("passed test 0")
            ### Is the inputted benchmark type valid?
            if set(args.benchmarkType).issubset(benchmark_category):
                # print("passed test 1")
                ### Has a benchmark been specified?
                if args.benchmark is not None:
                    print("passed test 2")
                    ### Are the inputted benchmark(s) valid?
                    if set(args.benchmark).issubset(benchmarks):
                        print("passed test 3")
                        ### Is the inputted benchmark within the inputted benchmark type suite?
                        if set(args.benchmark).issubset(set(benchmark_category[args.benchmarkType[i]])):
                            print("passed test 4")
                            print(f"run {args.benchmark}")
                            codeRan = subprocess.run([f"pytest {benchmark_category[args.benchmarkType[i]][args.benchmark[i]]} -m {args.compiler} --store"],shell=True)
                            i +=1
                        else:
                            parser.error(f"For the {args.benchmarkType} benchmark type you can only these benchmarks:\x1B[3m{benchmark_category[args.benchmarkType]}\x1B[0m")
                    else:
                        parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
                else:
                    # print(benchmark_category[args.benchmarkType[i]])
                    for benchmark, path in benchmark_category[args.benchmarkType[i]].items():
                        print(f"\x1B[3m{benchmark}\x1B[0m")
                        # for benchmark, path in benchmark_pair.items():
                        #     print(path)
                    print(f"run all \x1B[3m{args.benchmarkType[i]}\x1B[0m benchmarks")
                    i +=1
                    # parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
            else:
                parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
        else:
            question = input(f"Would you like to run all {len(benchmarks)} available benchmarks (y/n) ")
            if question.lower() == "y":
                for benchmark_list in benchmark_category.values():
                    for benchmark_pair in benchmark_list:
                        for benchmark, path in benchmark_pair.items():
                            print(path)
                print(f"run all benchmarks")

    # if args.benchmark == None:
    #     benchmark = input()
    #     print(benchmark)
    # else:
    #     print(args.benchmark)
    #     # subprocess.run("ls")


if __name__ == "__main__":
    benchmarkRetrieval()
    main()