# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import time
from multiprocessing import get_context

import pytest
from _pytest.config import Config, _prepareconfig
from setproctitle import setproctitle


class Pawn:
    """The Pawn is responsible for actually running the tests.

    Its execution happens in a remote subprocesses. He relay all information
    back to the Knight and wait for his commands.
    """

    def __init__(self, uid, config, channel):
        self.uid = uid
        self.config = config
        self.channel = channel
        self.processed_items = 0
        self.num_deselected = 0

    def send_report(self, name, **kwargs):
        self.channel.send((self.uid, name, kwargs))

    def pytest_sessionstart(self, session):
        self.session = session
        self.send_report("sessionstart")

    def pytest_collection(self, session):
        self.send_report("collection")

    def pytest_deselected(self, items) -> None:
        self.num_deselected += len(items)

    def pytest_collection_finish(self, session):
        self.send_report(
            "collection_finish",
            num_selected=len(session.items),
            num_deselected=self.num_deselected,
        )

    def pytest_runtestloop(self, session):
        to_run = list()
        while 1:
            try:
                name, kwargs = self.channel.recv()
            except EOFError:
                return True
            if name == "run_tests":
                to_run.extend(kwargs["indices"])
            elif name == "run_all":
                to_run.extend(range(len(session.items)))
            elif name == "shutdown":
                while len(to_run) > 0:
                    self.run_one_test(to_run)
                break
            while len(to_run) >= 2:
                self.run_one_test(to_run)
        return True

    def run_one_test(self, to_run):
        item_index = to_run.pop(0)
        item = self.session.items[item_index]
        if len(to_run) > 0:
            next_item = self.session.items[to_run[0]]
        else:
            next_item = None

        setproctitle(f"pawn-{self.uid} | {self.processed_items} | {item.name}")
        start = time.time()
        self.config.hook.pytest_runtest_protocol(item=item, nextitem=next_item)
        duration = time.time() - start
        self.send_report(
            "runtest_protocol_complete", item_index=item_index, duration=duration
        )
        setproctitle(f"pawn-{self.uid} | {self.processed_items} | waiting")
        self.processed_items += 1

    def pytest_runtest_logstart(self, nodeid, location):
        self.send_report("logstart", nodeid=nodeid, location=location)

    def pytest_runtest_logreport(self, report):
        self.send_report("logreport", report=report)

    def pytest_runtest_logfinish(self, nodeid, location):
        self.send_report("logfinish", nodeid=nodeid, location=location)

    @pytest.hookimpl(hookwrapper=True)
    def pytest_sessionfinish(self, exitstatus):
        # self.config.workeroutput["exitstatus"] = int(exitstatus)
        yield
        self.send_report("sessionfinish")


def run_pawn(uid, option_dict, args, channel):
    if hasattr(Config, "InvocationParams"):
        config = _prepareconfig(args, None)
        option_dict["plugins"] = ["no:terminal"]
    else:
        option_dict["plugins"].append("no:terminal")
        config = Config.fromdictargs(option_dict, args)
        config.args = args

    config = Config.fromdictargs(option_dict, args)
    config.option.num_pawns = None
    config.option.is_pawn = True
    config.pluginmanager.register(Pawn(uid, config, channel), "pawn")
    config.hook.pytest_cmdline_main(config=config)


def create_pawn(uid, option_dict, args, channel):
    return get_context("spawn").Process(
        name=f"pawn-{uid}",
        target=run_pawn,
        args=(
            uid,
            option_dict,
            args,
            channel,
        ),
    )
