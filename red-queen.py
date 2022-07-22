#!/usr/bin/env python3
import argparse
import os
import sys
import platform
from contextlib import redirect_stderr
import subprocess



def benchmarkRetrieval():
    benchmark_category = {}
    benchmark_types = []
    benchmarks = []
    dir_path = "games"
    user_os = ""
    if platform.system() == "Windows":
        user_os = "python -m "
    for entry in os.scandir(dir_path):
        if not entry.name.startswith(".") and entry.is_dir():
            benchmark_category[entry.name] = []
            subDict = {}
            for sub in os.scandir(f"games/{entry.name}"):
                if not sub.name.startswith("_") and sub.name.endswith(".py") and sub.is_file():
                    subDict[sub.name] = sub.path
            benchmark_category[entry.name] = subDict

    benchmark_types = list(benchmark_category.keys())

    for benchmark_pairs in benchmark_category.values():
        for keys in benchmark_pairs.keys():
            benchmarks.append(keys)
    return benchmark_category, benchmark_types, benchmarks, user_os

# def resultRetrieval():
#     i = 0
#     results = {}
#     dir_path = "results"
#     for entry in os.scandir(dir_path):
#         print(entry.name,entry.path)
#         if entry.name.endswith('.json') and entry.is_file():
#             results[i] = {entry.name:entry.path}
#             i += 1
#     print(results)
#     return results

def main():
    benchmark_category, benchmark_types, benchmarks, user_os = benchmarkRetrieval()
    parser = argparse.ArgumentParser(
        prog="red-queen", description="Red-Queen is a benchmark suite for quantum compilers"
    )
    # parser.add_argument('--verbose', '-v')
    parser.add_argument("--version", action="version", version="%(prog)s 1.0.0")
    parser.add_argument(
        "-c",
        "--compiler",
        choices=["qiskit", "tket", "tweedledum"],
        help="enter a compliler here",
    )
    parser.add_argument(
        "-t",
        "--benchmarkType",
        nargs="*",
        choices=benchmark_types,
        help="enter the type of benchmark(s) here",
    )
    parser.add_argument(
        "-b",
        "--benchmark",
        nargs="*",
        choices=benchmarks,
        help="enter the specfic benchmark(s) here",
    )

    args = parser.parse_args()

    # ### This for loop ensures that we are able to run various benchmark types
    i = 0
    if args.benchmarkType is not None:
        while i < len(args.benchmarkType):
            ### Has a benchmark type been specified?
            if args.benchmarkType is not None:
                # print("passed test 0")
                ### Is the inputted benchmark type valid?
                if set(args.benchmarkType).issubset(benchmark_category):
                    # print("passed test 1")
                    ### Has a benchmark been specified?
                    if args.benchmark is not None:
                        # print("passed test 2")
                        ### Are the inputted benchmark(s) valid?
                        if set(args.benchmark).issubset(benchmarks):
                            # print("passed test 3")
                            ### Is the inputted benchmark within the inputted benchmark type suite?
                            if set(args.benchmark).issubset(
                                set(benchmark_category[args.benchmarkType[i]])
                            ):
                                # print("passed test 4")
                                print(f"run {args.benchmark}")
                                print(
                                    f"If you want to view the results chart type:\npython -m report.console_tables --storage results/<latest_number>_bench.json"
                                    )
                                # subprocess.run(
                                #     [
                                #         f"{user_os}pytest {benchmark_category[args.benchmarkType[i]][args.benchmark[i]]} -m {args.compiler} --store"
                                #     ],
                                #     shell=True,
                                # )
                                # resultsDict, resultsIndex = resultRetrieval()
                                # subprocess.run(
                                #     [
                                #         f"python -m report.console_tables -storage "
                                #     ],
                                #     shell=True,
                                # )
                                i += 1
                            else:
                                parser.error(
                                    f"For the {args.benchmarkType} benchmark type you can only these benchmarks:\x1B[3m{benchmark_category[args.benchmarkType]}\x1B[0m"
                                )
                        else:
                            parser.error(
                                f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m"
                            )
                    else:
                        # print(benchmark_category[args.benchmarkType[i]])
                        for benchmark, path in benchmark_category[args.benchmarkType[i]].items():
                            print(f"\x1B[3m{benchmark}\x1B[0m")
                            # for benchmark, path in benchmark_pair.items():
                            #     print(path)
                        print(f"run all \x1B[3m{args.benchmarkType[i]}\x1B[0m benchmarks")
                        i += 1
                        # parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
                else:
                    parser.error(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
            else:
                q1 = input(
                    f"Would you like to run all {len(benchmarks)} available benchmarks (y/n) "
                )
                if q1.lower() == "y":
                    for benchmark_list in benchmark_category.values():
                        for benchmark_pair in benchmark_list:
                            for benchmark, path in benchmark_pair.items():
                                print(path)
                    print("run all benchmarks")
    else:
        parser.error(f"Please input a valid benchmark:\x1B[3m{benchmark_types}\x1B[0m")


if __name__ == "__main__":
    # resultRetrieval()
    main()