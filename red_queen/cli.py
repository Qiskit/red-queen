#!/usr/bin/env python3
# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the Apache 2.0.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""The purpose of this code below is to make the user experience of
the Red Queen benchmark suite more steamlined

The code achieves that by collecting all avaiable benchmark alongside their paths,
and uses this information to create exacutable pytest code that
will exacute the benchmarks for users with worrying about the
nuisances ofthe pytest framework. The scope of this cli will
grow with time.
"""
import os
import platform
import subprocess
import configparser
import click

# This function retrives the paths for each benchmark and returns
# a hashmap with the benchmark's name and it's path
def benchmark_complier_retrieval():
    benchmark_dict = {}
    list_of_benchmarks = []
    list_of_compliers = []
    benchmark_category_set = set()
    benchmark_path = "games/"
    for benchmark_category in os.scandir(benchmark_path):
        if benchmark_category.is_dir():
            benchmark_category_set.add(benchmark_category.name)
            name_path_pair = {}
            for benchmark in os.scandir(f"{benchmark_path}{benchmark_category.name}"):
                if (
                    not benchmark.name.startswith("_")
                    and benchmark.name.endswith(".py")
                    and benchmark.is_file()
                ):
                    name_path_pair[benchmark.name] = benchmark.path
            benchmark_dict.update(name_path_pair)

    for benchmark_name, _ in benchmark_dict.items():
        list_of_benchmarks.append(benchmark_name)

    config = configparser.ConfigParser()
    config.read("../pytest.ini")
    for complier in config["pytest"]["markers"].split("\n"):
        if complier != "":
            list_of_compliers.append(complier)
    return benchmark_dict, list_of_benchmarks, list_of_compliers


# The function retrives the latest benchmark ran's results
def result_retrieval():
    results = {}
    dir_path = "results"
    for entry in os.scandir(dir_path):
        if entry.is_file():
            filename = entry.name
            result_count = int(filename.split("_")[0])
            results[result_count] = {entry.name: entry.path}
    return results


# This functions creates the pytest cli call and runs it
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
        command_list.insert(0, "-m")
        command_list.insert(0, "python")
        for _, string in enumerate(pytest_paths):
            command_list.append(string)
        for _, string in enumerate(compiler_command):
            command_list.append(string)
        subprocess.run(
            command_list,
            check=True,
        )


# This function displays the results
def show_result():
    results_dict = result_retrieval()
    result_num = max(results_dict.keys())
    result_path = tuple(results_dict[result_num].values())[0]
    command_list = ["python", "-m", "report.console_tables", "--storage"]
    command_list.append(str(result_path))
    subprocess.run(
        command_list,
        check=True,
    )
    click.echo("To view the table again:")
    click.echo(" ".join(command_list)+"\n")


benchmark_hash, benchmarks_list, complier_list = benchmark_complier_retrieval()


# The code below deals with each flag of the cli
@click.command()
@click.option(
    "-c",
    "--compiler",
    "compiler",
    multiple=True,
    type=click.Choice(complier_list),
    help="enter a compliler here",
)
@click.option(
    "-b",
    "--benchmark",
    "benchmark",
    multiple=True,
    type=click.Choice(benchmarks_list),
    help="enter the specfic benchmark(s) here",
)
# The main function calls on the above helper functions to run the desired benchmarks
def main(compiler=None, benchmark=None):
    benchmark_paths = []
    pytest_paths = ""
    m_tag = ""
    if len(compiler) > 0:
        m_tag = "-m"
        compiler = compiler[0]
    else:
        compiler = ""
    # ### This for loop ensures that we are able to run various benchmark types
    j = 0
    ### Has a benchmark type been specified?
    if len(benchmark) > 0:
        ### Are the inputted benchmark(s) valid?
        if set(benchmark).issubset(benchmarks_list):
            for j, _ in enumerate(benchmark):
                benchmark_paths.append(benchmark_hash[benchmark[j]])
                pytest_paths = benchmark_paths
                run_benchmarks(pytest_paths, m_tag, compiler)
                show_result()
                i += 1
    else:
        print("Please input benchmark")
        print("Example:\nred-queen -b grovers.py")


if __name__ == "__main__":
    main()
