# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

#!/usr/bin/env python3
import os
import sys
import platform
from contextlib import redirect_stderr
import subprocess
import configparser
import click


def benchmarkRetrieval():
    benchmark_category = {}
    benchmark_types = []
    benchmarks = []
    dir_path = "red_queen/games/"
    windows_ad1 = ""
    windows_ad2 = ""
    if platform.system() == "Windows":
        windows_ad1 = "python3 -m "
        windows_ad2 = "-s "
    for entry in os.scandir(dir_path):
        if entry.is_dir():
            benchmark_category[entry.name] = []
            subDict = {}
            for sub in os.scandir(f"{dir_path}{entry.name}"):
                if not sub.name.startswith("_") and sub.name.endswith(".py") and sub.is_file():
                    subDict[sub.name] = sub.path
            benchmark_category[entry.name] = subDict

    benchmark_types = list(benchmark_category.keys())
    for benchmark_pairs in benchmark_category.values():
        for keys in benchmark_pairs.keys():
            benchmarks.append(keys)

    return benchmark_category, benchmark_types, benchmarks, windows_ad1, windows_ad2


def complierRetrieval():
    complierList = []
    config = configparser.ConfigParser()
    config.read("pytest.ini")
    for complier in config["pytest"]["markers"].split("\n"):
        if complier != "":
            complierList.append(complier)
    # print(complierList)
    # This line tests to see if there is a complier specifed
    return complierList


def resultRetrieval():
    results = {}
    dir_path = "results"
    for entry in os.scandir(dir_path):
        if entry.is_file():
            filename = entry.name
            resultCount = int(filename.split("_")[0])
            results[resultCount] = {entry.name: entry.path}
    return results


def runBenchmarks(pytestPaths: str, windows_ad1: str, mTag: str, compiler: str):
    click.echo("benchmarks ran")
    subprocess.run(
        [f"{windows_ad1}pytest -n auto {windows_ad2}{pytestPaths} {mTag}{compiler} --store"],
        shell=True,
    )


def showResult():
    resultsDict = resultRetrieval()
    click.echo(resultsDict)
    resultNum = max(resultsDict.keys())
    click.echo(resultNum)
    result_path = tuple(resultsDict[resultNum].values())[0]
    command = f"python3 -m report.console_tables --storage {result_path}"
    subprocess.run([command], shell=True)
    click.echo(
        f"If you want to view the results chart type:\npython -m report.console_tables --storage {result_path}"
    )


benchmark_category, benchmark_types, benchmarks, windows_ad1, windows_ad2 = benchmarkRetrieval()
complierList = complierRetrieval()


@click.command()
# @click.option("--version", action="version", version="%(prog)s 0.0.1")
@click.option(
    "-c",
    "--compiler",
    "compiler",
    multiple=True,
    type=click.Choice(complierList),
    help="enter a compliler here",
)
@click.option(
    "-t",
    "--benchmarkType",
    "benchmarkType",
    multiple=True,
    type=click.Choice(benchmark_types),
    help="enter the type of benchmark(s) here",
)
@click.option(
    "-b",
    "--benchmark",
    "benchmark",
    multiple=True,
    type=click.Choice(benchmarks),
    help="enter the specfic benchmark(s) here",
)
def main(compiler, benchmarkType, benchmark):
    benchmarkPaths = []
    pytestPaths = ""
    myDict = {}
    mTag = ""
    if len(compiler) > 0:
        mTag = "-m "
        compiler = compiler[0]
    else:
        compiler = ""
    # ### This for loop ensures that we are able to run various benchmark types
    i = 0
    j = 0
    ### Has a benchmark type been specified?
    if len(benchmarkType) > 0:
        # click.echo("passed test 0")
        while i < len(benchmarkType):
            ### Is the inputted benchmark type valid?
            if set(benchmarkType).issubset(benchmark_category):
                # click.echo("passed test 1")
                ### Has a benchmark been specified?
                if len(benchmark) > 0:
                    # click.echo("passed test 2")
                    ### Are the inputted benchmark(s) valid?
                    if set(benchmark).issubset(benchmarks):
                        # click.echo("passed test 3")
                        ### Is the inputted benchmark within the inputted benchmark type suite?
                        if set(benchmark).issubset(set(benchmark_category[benchmarkType[i]])):
                            # click.echo("passed test 4")
                            for j in range(len(benchmark)):
                                benchmarkPaths.append(
                                    benchmark_category[benchmarkType[0]][benchmark[j]]
                                )
                            pytestPaths = " ".join(tuple(benchmarkPaths))
                            runBenchmarks(pytestPaths, windows_ad1, mTag, compiler)
                            showResult()
                            i += 1
                else:
                    myDict = benchmark_category[benchmarkType[0]]
                    for v in myDict.values():
                        benchmarkPaths.append(v)
                    pytestPaths = " ".join(tuple(benchmarkPaths))
                    runBenchmarks(pytestPaths, windows_ad1, mTag, compiler)
                    showResult()
                    i += 1
    else:
        question = input(f"Would you like to run all {len(benchmarks)} available benchmarks (y/n) ")
        if question.lower() == "y":
            for benchmark_list in benchmark_category.values():
                for paths in benchmark_list.values():
                    benchmarkPaths.append(paths)
            pytestPaths = " ".join(tuple(benchmarkPaths))
            runBenchmarks(pytestPaths, windows_ad1, mTag, compiler)
            showResult()


if __name__ == "__main__":
    main()