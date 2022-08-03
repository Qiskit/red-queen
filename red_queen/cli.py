# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

#!/usr/bin/env python3
import os
import platform
import subprocess
import configparser
import click


def benchmarkRetrieval():
    benchmark_category = {}
    benchmark_types = []
    benchmarks = []
    dir_path = "red_queen/games/"
    for entry in os.scandir(dir_path):
        if entry.is_dir():
            benchmark_category[entry.name] = []
            sub_dict = {}
            for sub in os.scandir(f"{dir_path}{entry.name}"):
                if not sub.name.startswith("_") and sub.name.endswith(".py") and sub.is_file():
                    sub_dict[sub.name] = sub.path
            benchmark_category[entry.name] = sub_dict

    benchmark_types = list(benchmark_category.keys())
    for benchmark_pairs in benchmark_category.values():
        for keys in benchmark_pairs.keys():
            benchmarks.append(keys)

    return benchmark_category, benchmark_types, benchmarks


def complier_retrieval():
    complier_list = []
    config = configparser.ConfigParser()
    config.read("pytest.ini")
    for complier in config["pytest"]["markers"].split("\n"):
        if complier != "":
            complier_list.append(complier)
    # print(complier_list)
    # This line tests to see if there is a complier specifed
    return complier_list


def result_retrieval():
    results = {}
    dir_path = "results"
    for entry in os.scandir(dir_path):
        if entry.is_file():
            filename = entry.name
            result_count = int(filename.split("_")[0])
            results[result_count] = {entry.name: entry.path}
    return results


def run_benchmarks(pytest_paths: str, m_tag: str, compiler: str):
    click.echo("benchmarks ran")
    if platform.system() == "Windows":
        subprocess.run(
            [f"python -m pytest -s {pytest_paths} {m_tag}{compiler} --store"],
            shell=True,
            check=True,
        )
    else:
        subprocess.run(
            [f"pytest {pytest_paths} {m_tag}{compiler} --store"],
            shell=True,
            check=True,
        )


def show_result():
    results_dict = result_retrieval()
    click.echo(results_dict)
    result_num = max(results_dict.keys())
    click.echo(result_num)
    result_path = tuple(results_dict[result_num].values())[0]
    command = f"python3 -m report.console_tables --storage {result_path}"
    subprocess.run([command], shell=True, check=True)
    click.echo(
        f"To view the results chart type:\npython -m report.console_tables --storage {result_path}"
    )


benchmark_category, benchmark_types, benchmarks = benchmarkRetrieval()
complier_list = complier_retrieval()


@click.command()
# @click.option("--version", action="version", version="%(prog)s 0.0.1")
@click.option(
    "-c",
    "--compiler",
    "compiler",
    multiple=True,
    type=click.Choice(complier_list),
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
    benchmark_paths = []
    pytest_paths = ""
    mydict = {}
    m_tag = ""
    if len(compiler) > 0:
        m_tag = "-m "
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
                                benchmark_paths.append(
                                    benchmark_category[benchmarkType[0]][benchmark[j]]
                                )
                            pytest_paths = " ".join(tuple(benchmark_paths))
                            run_benchmarks(pytest_paths, m_tag, compiler)
                            show_result()
                            i += 1
                else:
                    mydict = benchmark_category[benchmarkType[0]]
                    for v in mydict.values():
                        benchmark_paths.append(v)
                    pytest_paths = " ".join(tuple(benchmark_paths))
                    run_benchmarks(pytest_paths, m_tag, compiler)
                    show_result()
                    i += 1
    else:
        question = input(f"Would you like to run all {len(benchmarks)} available benchmarks (y/n) ")
        if question.lower() == "y":
            for benchmark_list in benchmark_category.values():
                for paths in benchmark_list.values():
                    benchmark_paths.append(paths)
            pytest_paths = " ".join(tuple(benchmark_paths))
            run_benchmarks(pytest_paths, m_tag, compiler)
            show_result()


if __name__ == "__main__":
    main()
