# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import json
import platform
import tempfile
from pathlib import Path
import shutil

import cpuinfo


class Bishop:
    """The Bishop is responsible for storing the results on a file."""

    @staticmethod
    def _get_cpu_info():
        return cpuinfo.get_cpu_info() or {}

    @staticmethod
    def _get_machine_info():
        return {
            "node": platform.node(),
            "processor": platform.processor(),
            "machine": platform.machine(),
            "python_compiler": platform.python_compiler(),
            "python_implementation": platform.python_implementation(),
            "python_version": platform.python_version(),
            "python_build": platform.python_build(),
            "release": platform.release(),
            "system": platform.system(),
            "cpu": Bishop._get_cpu_info(),
        }

    def _next_id(self):
        root = Path(self.storage_dir).resolve()
        paths = list(root.glob("[0-9][0-9][0-9][0-9]_*.json"))
        paths.sort(key=lambda path: (path.name), reverse=True)
        if not paths:
            return "0001"
        try:
            return "%04i" % (int(str(paths[0].name).split("_")[0]) + 1)
        except ValueError:
            raise

    def __init__(self, config):
        self.store_data = config.option.store_data
        self.storage_dir = config.option.storage_dir
        self.report = {}
        self.report["machine_info"] = self._get_machine_info()
        self.report["benchmarks"] = []

    def add_benchmark_info(self, benchmark_info):
        self.report["benchmarks"].append(benchmark_info)

    def store(self):
        if not self.report['benchmarks']:
            return

        tmpfd, tmppath = tempfile.mkstemp(prefix="RedQueen_", text=True)
        with open(tmpfd, "w", encoding="utf-8") as outfile:
            outfile.write(json.dumps(self.report, indent=4))
        if self.store_data:
            if not self.storage_dir.exists():
                self.storage_dir.mkdir(parents=True, exist_ok=True)
            filepath = self.storage_dir / f"{self._next_id()}_bench.json"
            shutil.move(tmppath, filepath)
        else:
            print(f"Results temporarily store at: {tmppath}")
