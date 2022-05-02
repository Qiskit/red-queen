# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Load benchmark result functions."""

import json
from collections import defaultdict


def load_benchmarks(dir_or_file, filter_by=None):
    if dir_or_file.is_file():
        data = json.loads(dir_or_file.read_text(encoding="utf8"))
        for benchmark in data["benchmarks"]:
            if filter_by and benchmark["tool"] != filter_by:
                continue
            benchmark["storage"] = None
            yield benchmark
    else:
        paths = list(dir_or_file.glob("**/*.json"))
        paths.sort(key=lambda path: (path.name, path.parent))
        for path in paths:
            if not path.is_file():
                continue
            try:
                data = json.loads(path.read_text(encoding="utf8"))
            except Exception:  # pylint: disable=broad-except
                print(f"Failed to load JSON file: {path}")
                continue
            for benchmark in data["benchmarks"]:
                if filter_by and benchmark["tool"] != filter_by:
                    continue
                benchmark["storage"] = path.name
                yield benchmark


def group_benchmarks(benchmarks, group_by):
    groups = defaultdict(list)
    for bench in benchmarks:
        key = tuple()
        for grouping in group_by.split(","):
            if grouping == "name":
                key += (bench["name"],)
            elif grouping == "tool":
                key += (bench["tool"],)
            elif grouping == "method":
                key += (bench["method"],)
            else:
                raise NotImplementedError(f"Unsupported grouping {group_by}")
        groups[" ".join(str(p) for p in key if p) or None].append(bench)

    return sorted(groups.items(), key=lambda pair: pair[0] or "")
