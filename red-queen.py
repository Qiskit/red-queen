#!/usr/bin/env python3
import argparse
import os
from os import walk
from contextlib import redirect_stderr
import subprocess as sub
from zoneinfo import available_timezones


def benchmarkRetrieval():
    benchmark_category = {}
    dir_path = "games"
    for entry in os.scandir(dir_path):
        if not entry.name.startswith('.') and entry.is_dir():
            benchmark_category[entry.name] = []
            # print(entry.name, entry.path, 0)
            # print(os.listdir(f'games/{entry.name}'), 1)
            for sub in os.scandir(f'games/{entry.name}'):
                if not sub.name.startswith("_") and sub.name.endswith('.py') and sub.is_file():
                    benchmark_category[entry.name].append({sub.name: sub.path})
                    # print(sub.name, sub.path, 1)
    # print(benchmark_category)
    return benchmark_category



def main():
    benchmark_category  = benchmarkRetrieval()
    benchmarks = []
    benchmark_types = []
    # I need to synthesis a benchmark_types
    # I need to synthesis a benchmark list
    for k in benchmark_category.keys():
        benchmark_types.append(k)
        # print(benchmark_category[k])
        for pair in benchmark_category[k]:
            # print(list(pair.keys())[0], 10)
            benchmarks.append(list(pair.keys())[0])
    # print(benchmark_types)
    # print(benchmarks)

    parser = argparse.ArgumentParser(prog='red-queen',
                                    description='Red-Queen is a benchmark suite for quantum compilers')
    # parser.add_argument('--verbose', '-v')
    parser.add_argument('--version', action='version', version='%(prog)s 1.0.0')
    parser.add_argument("-c", "--compiler",choices=["qiskit", "tket", "tweedledum"], required=True, help='enter a compliler here')
    parser.add_argument("-t","--benchmarkType", nargs='*', choices=benchmark_types, help='enter the type of benchmark here')
    parser.add_argument("-b","--benchmark", nargs='*', choices=benchmarks, help='enter the specfic benchmark here')

    args = parser.parse_args()


    ### Has a benchmark type been specified?
    if args.benchmarkType is not None:
        print("passed test 0")
        ### Is the inputted benchmark type valid?
        if set(args.benchmarkType).issubset(benchmark_category):
            print("passed test 1")
            ### Has a benchmark been specified?
            if args.benchmark is not None:
                print("passed test 2")
                ### Is the inputted benchmark valid?
                if set(args.benchmark).issubset(benchmarks):
                    print("passed test 3")
                    ### Is the inputted benchmark within the inputted benchmark type suite?
                    if set(args.benchmark).issubset(set(benchmark_category[args.benchmarkType[0]])):
                        print("passed test 4")
                    else:
                        parser.error(f"For the {args.benchmarkType} benchmark type you can only these benchmarks:\x1B[3m{benchmark_category[args.benchmarkType]}\x1B[0m")
                else:
                    parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
            else:
                print(f"run all {args.benchmarkType} benchmarks")
                # parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
        else:
            parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
    else:
        question = input(f"Would you like to run all {len(benchmarks)} available benchmarks (y/n) ")
        if question.lower() == "y":
            print(f"run all benchmarks")

    # if args.benchmark == None:
    #     benchmark = input()
    #     print(benchmark)
    # else:
    #     print(args.benchmark)
    #     # sub.run("ls")



if __name__ == "__main__":
    benchmarkRetrieval()
    main()