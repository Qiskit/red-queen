# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
"""Shebang is used to make this code an python executable"""
#!/usr/bin/env python3
import os
import platform
import subprocess
import configparser
import click


def benchmark_retrieval():
    benchmark_dict = {}
    type_list = []
    list_of_benchmarks = []
    dir_path = "red_queen/games/"
    for entry in os.scandir(dir_path):
        if entry.is_dir():
            benchmark_dict[entry.name] = []
            sub_dict = {}
            for sub in os.scandir(f"{dir_path}{entry.name}"):
                if not sub.name.startswith("_") and sub.name.endswith(".py") and sub.is_file():
                    sub_dict[sub.name] = sub.path
            benchmark_dict[entry.name] = sub_dict

    type_list = list(benchmark_dict.keys())
    for benchmark_pairs in benchmark_dict.values():
        for keys in benchmark_pairs.keys():
            list_of_benchmarks.append(keys)

    return benchmark_dict, type_list, list_of_benchmarks


def complier_retrieval():
    list_of_compliers = []
    config = configparser.ConfigParser()
    config.read("pytest.ini")
    for complier in config["pytest"]["markers"].split("\n"):
        if complier != "":
            list_of_compliers.append(complier)
    return list_of_compliers


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
    command_list = ["pytest"]
    compiler_command = [m_tag, compiler, "--store"]
    if platform.system() == "Windows":
        command_list.insert(0, "-m")
        command_list.insert(0, "python")
        command_list.append("-s")
        for _, string in enumerate(pytest_paths):
            command_list.append(string)
        for _, string in enumerate(compiler_command):
            command_list.append(string)
        subprocess.run(
            command_list,
            check=True,
        )
    else:
        for _, string in enumerate(pytest_paths):
            command_list.append(string)
        for _, string in enumerate(compiler_command):
            command_list.append(string)
        subprocess.run(
            command_list,
            check=True,
        )


def show_result():
    results_dict = result_retrieval()
    result_num = max(results_dict.keys())
    result_path = tuple(results_dict[result_num].values())[0]
    command_list = ["python3", "-m", "report.console_tables", "--storage"]
    command_list.append(str(result_path))
    subprocess.run(
        command_list,
        check=True,
        )
    click.echo(
        "To view the table again:"
    )
    click.echo(
        " ".join(command_list)
    )


benchmark_category, benchmark_types, benchmarks = benchmark_retrieval()
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
def main(compiler=None, benchmarkType=None, benchmark=None):
    benchmark_paths = []
    pytest_paths = ""
    mydict = {}
    m_tag = ""
    if len(compiler) > 0:
        m_tag = "-m"
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
                            for j, _ in enumerate(benchmark):
                                benchmark_paths.append(
                                    benchmark_category[benchmarkType[0]][benchmark[j]]
                                )
                            pytest_paths = benchmark_paths
                            run_benchmarks(pytest_paths, m_tag, compiler)
                            # show_result()
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
    # main()
    show_result()
