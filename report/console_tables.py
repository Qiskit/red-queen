# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import argparse
import pathlib

from collections import defaultdict
from loader import group_benchmarks, load_benchmarks
from math import isinf
from rich.console import Console
from rich.table import Table
from statistics import geometric_mean


class NameFormarter:
    def __init__(self, group_by) -> None:
        self.group_by = list()
        if "name" in group_by:
            self.group_by.append("name")
        if "tool" in group_by:
            self.group_by.append("tool")

    def __call__(self, benchmark) -> str:
        if self.group_by == ["name"]:
            name = f"{benchmark['tool']} ({benchmark['algorithm']})"
        elif self.group_by == ["tool"]:
            name = f"{benchmark['name']} ({benchmark['algorithm']})"
        elif self.group_by == ["name", "tool"]:
            name = f"({benchmark['algorithm']})"
        if benchmark["storage"]:
            name = "{} ({:.4s})".format(name, benchmark["storage"])
        return name


def normalize(baseline, value):
    return abs(value / baseline) if baseline else float("inf")


def formatted_normalize(baseline, value):
    if not baseline:
        return ""
    if value == baseline:
        return " (1.0)"

    norm = normalize(baseline, value)
    if norm > 1000:
        if isinf(norm):
            return " (inf)"
        else:
            return " (>1000.0)"
    else:
        return " ({:.2f})".format(norm)


def format_entry(stats, metric, best, worst):
    prefix = ""
    suffix = ""
    if stats[metric] == worst[metric]:
        prefix = "[red]"
        suffix = "[/red]"
    if stats[metric] == best[metric]:
        prefix = "[green]"
        suffix = "[green]"
    norm = formatted_normalize(best[metric], stats[metric])
    return "{}{:.4g}{}{}".format(prefix, stats[metric], norm, suffix)


def benchmark_table(name, benchmarks, name_format, console):
    table = Table(title=f"Benchmark: {name}")
    table.add_column("Name")
    table.add_column("Min")
    table.add_column("Max")
    table.add_column("Mean")
    for key, _ in benchmarks[0]["stats"]["quality"].items():
        table.add_column(key)

    best = dict()
    worst = dict()
    for kind in ["timing", "quality"]:
        for metric in benchmarks[0]["stats"][kind].keys():
            worst[metric] = max(
                [benchmark["stats"][kind][metric] for benchmark in benchmarks]
            )
            best[metric] = min(
                [benchmark["stats"][kind][metric] for benchmark in benchmarks]
            )

    for benchmark in benchmarks:
        timing = benchmark["stats"]["timing"]
        quality = benchmark["stats"]["quality"]
        min_str = format_entry(timing, "min", best, worst)
        max_str = format_entry(timing, "max", best, worst)
        mean_str = format_entry(timing, "mean", best, worst)
        quality_str = list()
        for key, _ in quality.items():
            quality_str.append(format_entry(quality, key, best, worst))
        table.add_row(name_format(benchmark), min_str, max_str, mean_str, *quality_str)
    console.print("\n", table)


def aggregate_results(aggregate, benchmarks, name_format):
    for benchmark in benchmarks:
        benchmark["name"] = name_format(benchmark)
    benchmarks.sort(key=lambda benchmark: benchmark["name"])
    baselines = {"timing": benchmarks[0]["stats"]["timing"]["mean"]}
    for key in benchmarks[0]["stats"]["quality"].keys():
        baselines[key] = benchmarks[0]["stats"]["quality"][key]

    skip_quality = False
    for benchmark in benchmarks:
        for key, value in benchmark["stats"]["quality"].items():
            if value == 0:
                skip_quality = True

    for benchmark in benchmarks:
        data = aggregate.get(benchmark["name"], defaultdict(list))
        data["mean"].append(
            normalize(baselines["timing"], benchmark["stats"]["timing"]["mean"])
        )
        if not skip_quality:
            for key, value in benchmark["stats"]["quality"].items():
                data[key].append(normalize(baselines[key], value))
        aggregate[benchmark["name"]] = data


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Console tables reporter.")
    parser.add_argument(
        "--storage",
        default="./results",
        metavar="<storage>",
        type=pathlib.Path,
        help="",
    )
    parser.add_argument("--tool", default=None, help="Filter the results by tool")
    args = parser.parse_args()
    benchmarks = load_benchmarks(args.storage, args.tool)
    groups = group_benchmarks(benchmarks, group_by="name")
    name_format = NameFormarter(group_by="name")
    console = Console()
    aggregate = dict()
    for group, benchmarks in groups:
        benchmark_table(group, benchmarks, name_format, console)
        aggregate_results(aggregate, benchmarks, name_format)

    table = Table(title=f"TLDR")
    table.add_column("Name")
    table.add_column("Mean")
    best = defaultdict(lambda:float('inf'))
    worst = defaultdict(float)
    for name, data in aggregate.items():
        for stat, series in data.items():
            data[stat] = geometric_mean(series)
            best[stat] = min(best[stat], data[stat])
            worst[stat] = max(worst[stat], data[stat])

    for name, data in aggregate.items():
        stats = list()
        for stat, _ in data.items():
            stats.append(format_entry(data, stat, best, worst))
        table.add_row(name, *stats)

    console.print("\n", table, "\n")
