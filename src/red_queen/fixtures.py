# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import pytest
import sys
import gc
import statistics

from functools import cached_property
from math import ceil
from timeit import default_timer


class BenchmarkInfo(object):
    def _tool_name(self, fullname):
        index = fullname.find("[")
        name = fullname[:index]
        name = name.split("_")[1]
        return name

    def __init__(self, node):
        self._id = node._nodeid
        self.name = None
        self.tool = self._tool_name(node.name)
        self.algorithm = "default"
        self._time_data = list()
        self.quality_stats = dict()

    def update(self, duration):
        self._time_data.append(duration)

    def as_dict(self):
        result = {
            "id": self._id,
            "name": self.name,
            "tool": self.tool,
            "algorithm": self.algorithm,
            "stats": {
                "timing": dict(
                    (field, getattr(self, field)) for field in self._fields()
                ),
                "quality": self.quality_stats,
            },
        }
        return result

    @staticmethod
    def _fields():
        return ["min", "max", "mean", "rounds"]

    @cached_property
    def min(self):
        return min(self._time_data)

    @cached_property
    def max(self):
        return max(self._time_data)

    @cached_property
    def mean(self):
        return statistics.mean(self._time_data)

    @cached_property
    def rounds(self):
        return len(self._time_data)


class BenchmarkFixture(object):
    def __init__(self, node):
        self.info = BenchmarkInfo(node)
        # Config
        self._disable_gc = False
        self._min_time = 5e-06
        self._max_time = 1.0

    @property
    def name(self):
        return self.info.name

    @name.setter
    def name(self, value):
        self.info.name = value

    @property
    def algorithm(self):
        return self.info.algorithm

    @algorithm.setter
    def algorithm(self, value):
        self.info.algorithm = value

    def _make_runner(self, function_to_benchmark, args, kwargs):
        def runner(num_runs):
            gc_enabled = gc.isenabled()
            if self._disable_gc:
                gc.disable()
            tracer = sys.gettrace()
            sys.settrace(None)
            try:
                if num_runs:
                    r = range(num_runs)
                    start = default_timer()
                    for _ in r:
                        function_to_benchmark(*args, **kwargs)
                    end = default_timer()
                    return end - start, None
                else:
                    start = default_timer()
                    result = function_to_benchmark(*args, **kwargs)
                    end = default_timer()
                    return end - start, result
            finally:
                sys.settrace(tracer)
                if gc_enabled:
                    gc.enable()

        return runner

    def _adjust_num_runs(self, runner):
        num_runs = 1
        while True:
            warmup_start = default_timer()
            while default_timer() - warmup_start < self._max_time:
                runner(num_runs)

            duration, _ = runner(num_runs)
            if duration >= self._min_time:
                break
            if duration >= (self._min_time / 2):
                num_runs = int(ceil(self._min_time * num_runs / duration))
                if num_runs == 1:
                    break
            else:
                num_runs *= 10
        return duration, num_runs

    def __call__(self, function_to_benchmark, *args, **kwargs):
        runner = self._make_runner(function_to_benchmark, args, kwargs)
        duration, result = runner(None)

        if duration >= self._max_time:
            if duration < 300:
                for _ in range(5):
                    round_duration, _ = runner(None)
                    self.info.update(round_duration)
            else:
                self.info.update(duration)
            return self.info, result

        duration, num_runs = self._adjust_num_runs(runner)
        rounds = int(ceil(self._max_time / duration))
        rounds = min(rounds, sys.maxsize)
        for _ in range(rounds):
            round_duration, _ = runner(num_runs)
            self.info.update(round_duration / num_runs)

        return self.info, result


@pytest.fixture(scope="function")
def benchmark(request):
    fixture = BenchmarkFixture(request.node)
    yield fixture
    pawn = request.config.pluginmanager.getplugin("pawn")
    pawn.send_report("benchmark_info", info=fixture.info.as_dict())
