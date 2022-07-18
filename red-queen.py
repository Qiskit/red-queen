#!/usr/bin/env python3
import argparse
import os
from contextlib import redirect_stderr
import subprocess as sub
from zoneinfo import available_timezones


def benchmarkRetrieval():
    benchmark_category = {}
    benchmarks_types = []
    benchmarks = []
    a = os.listdir('games')
    for word in a:
        if word[0] == ".":
            pass
        else:
            benchmark_category[word] = []
    for k in benchmark_category.keys():
        benchmarks = os.listdir(f'games/{k}')
        for word in benchmarks:
            if word[0] == ".":
                pass
            elif word[0] == "_":
                pass
            elif word[::-1][:2][::-1] != "py":
                pass
            else:
                benchmark_category[k].append(word)
    for k in benchmark_category.keys():
        benchmarks_types.append(k)

    return benchmark_category, benchmarks_types



def main():
    benchmark_category,benchmarks_types  = benchmarkRetrieval()
    benchmarks = []
    for k in benchmarks_types:
        for item in benchmark_category[k]:
            benchmarks.append(item)
    # print(benchmarkRetrieval())
    # print(benchmark_category.keys())
    # print(benchmark_category.values())
    # for k in benchmark_category.keys():
    #     print(f"These benchmarks: {benchmark_category[k]} are for the \x1B[3m{k}\x1B[0m benchmark category")
    parser = argparse.ArgumentParser(prog='red-queen',
                                    description='Red-Queen is a benchmark suite for quantum compilers')
    # parser.add_argument('--verbose', '-v')
    parser.add_argument('--version', action='version', version='%(prog)s 1.0.0')
    parser.add_argument("-c", "--compiler",choices=["qiskit", "tket", "tweedledum"], required=True, help='enter a compliler here')
    parser.add_argument("-t","--benchmarkType", nargs='*', choices=benchmarks_types, help='enter the type of benchmark here')
    parser.add_argument("-b","--benchmark", nargs='*', choices=benchmarks, help='enter the specfic benchmark here')

    args = parser.parse_args()

    print(args.benchmarkType)
    print(benchmarks_types)
    # print(benchmark_category[args.benchmarkType[0]])
    # print(set(args.benchmarkType).issubset(benchmark_category))
    # print(args.benchmark, benchmark_category[args.benchmarkType])
    print(args.benchmark is None)
    print(args.benchmark is not None)

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
        question = input(f"would you like to run all benchmarks y/n  ")
        if question.lower() == "y":
            print(f"run all benchmarks")
        # parser.error(f"Please input a valid benchmark type:\x1B[3m{benchmarks_types}\x1B[0m")
    # print(args)
    # print(args.benchmarkCategory)
    # print(args.benchmark)
    # if args.benchmark == None:
    #     benchmark = input()
    #     print(benchmark)
    # else:
    #     print(args.benchmark)
    #     # sub.run("ls")



if __name__ == "__main__":
    main()