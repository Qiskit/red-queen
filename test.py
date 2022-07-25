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
    dir_path = "games"
    windows_ad1 = ""
    windows_ad2 = ""
    if platform.system() == "Windows":
        windows_ad1 = "python -m "
        windows_ad2 = "-s "
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
    i = 1
    results = {}
    dir_path = "results"
    for entry in os.scandir(dir_path):
        # print(entry.name,entry.path)
        if entry.name.endswith(".json") and entry.is_file():
            results[i] = {entry.name: entry.path}
            i += 1
    # print(results)
    return results


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
    # click.echo(list(compiler))
    # click.echo(list(benchmarkType))
    click.echo(list(benchmark))
    benchmarkPaths = ""
    if len(compiler) > 0:
        mTag = "-m "
    else:
        compiler = ""
    # ### This for loop ensures that we are able to run various benchmark types
    i = 0
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
                            click.echo(f"run {list(benchmark)}")
                            for j in range(len(benchmark)):
                                benchmarkPaths.append(benchmark_category[benchmarkType[0]][benchmark[j]])
                            pytestPaths = " ".join(tuple(benchmarkPaths))
                            # benchmarkPath = benchmark_category[benchmarkType[i]][benchmark[0]]
                            click.echo(pytestPaths)
                            # click.echo(benchmarkPath)
                            # subprocess.run(
                            #     [
                            #         f"{windows_ad1}pytest {windows_ad2}{benchmarkPath} {mTag}{compiler[0]} --store"
                            #     ],
                            #     shell=True,
                            # )
                            resultsDict = resultRetrieval()
                            resultNum = max(resultsDict.keys())
                            click.echo(resultNum)
                            # subprocess.run(
                            #     [
                            #         f"python -m report.console_tables --storage results/000{resultNum}_bench.json"
                            #     ],
                            #     shell=True,
                                # )
                            click.echo(
                                f"If you want to view the results chart type:\npython -m report.console_tables --storage results/{format(resultNum).zfill(4)}_bench.json"
                            )
                            i += 1
                        else:
                            click.echo(
                                f"For the {benchmarkType} benchmark type you can only these benchmarks:\x1B[3m{benchmark_category[benchmarkType]}\x1B[0m"
                            )
                    else:
                        click.echo(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
                else:
                    # click.echo(benchmark_category[benchmarkType[i]])
                    for benchmark, path in benchmark_category[benchmarkType[i]].items():
                        click.echo(f"\x1B[3m{benchmark}\x1B[0m")
                        # for benchmark, path in benchmark_pair.items():
                        #     click.echo(path)
                        click.echo(f"run all \x1B[3m{benchmarkType[i]}\x1B[0m benchmarks")
                        i += 1
                # click.echo(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
            else:
                click.echo(f"Please input a valid benchmark:\x1B[3m{benchmarks}\x1B[0m")
    else:
        # click.echo(f"Please input a valid benchmark:\x1B[3m{benchmark_types}\x1B[0m")
        question = input(f"Would you like to run all {len(benchmarks)} available benchmarks (y/n) ")
        if question.lower() == "y":
            benchmarkPaths = []
            mTag = ""
            for benchmark_list in benchmark_category.values():
                # click.echo(benchmark_list)
                for paths in benchmark_list.values():
                    benchmarkPaths.append(paths)
                    # click.echo(benchmarkPaths)
                    # benchmarkPaths.append(benchmark_pair)
                    print()
            pytestPaths = " ".join(tuple(benchmarkPaths))
            click.echo(f"{windows_ad1}pytest {windows_ad2}{pytestPaths} {mTag}{compiler} --store")
            click.echo("run all benchmarks")


if __name__ == "__main__":
    main()
