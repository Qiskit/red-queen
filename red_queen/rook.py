# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import random
from itertools import cycle
from multiprocessing.connection import wait

import psutil
from red_queen import Knight


class Rook:
    """The Rook is responsible for managing the test session.

    At the beginning of the test session, the RedQueen tells the Rook how many
    knights it should enlist.  The Rook enlist all knights and tell them all to
    enlist a Pawn. After that, it enters the main testing managin loop, where it
    will wait for knights' reports.

    Once a Pawn is enlisted, he automatically starts collecting tasks. Once
    tests are collected, the Pawn reports back to the knight and wait for
    instructions.  In turn, The Knight reports back to the Rook and also wait.

    Reports from the Knights are processed by the _knight_* functions.

    The first report must tells that the Pawn has finished collecting tests and
    its ready for processing.  The Rook waits for reports from all enlisted
    Knights.  Once all Kinghts report their respective Pawn is ready for
    processing, the Rook assign task to all of them.
    """

    def __init__(self, config, bishop):
        self.config = config
        self.bishop = bishop
        self.tr = self.config.pluginmanager.getplugin("terminalreporter")

        # Knights information
        self.knights = None
        self.channels = None
        self.collecting = 0
        self.done_collecting = 0

        # Session information
        self.session = None
        self.num_jobs = None

        self.pending = None
        self.killed = []
        self.queue = []

    def start_session(self, session, num_pawns: int) -> None:
        self.session = session
        self.knights = [Knight(uid, self.config) for uid in range(num_pawns)]
        self.channels = [knight.pawn_start() for knight in self.knights]

    def finish_session(self) -> None:
        self.session = None

    def run_tests(self) -> bool:
        while self.channels:
            for r in wait(self.channels, timeout=1):
                try:
                    uid, callname, kwargs = r.recv()
                except EOFError:
                    # print('done pawn!')
                    # self.channels.remove(r)
                    continue
                assert callname, kwargs
                method = "_knight_" + callname
                call = getattr(self, method)
                call(self.knights[uid], **kwargs)
            self._monitor_memory()
        return True

    def kill_all(self) -> None:
        for knight in self.knights:
            knight.pawn_kill()

    def _monitor_memory(self) -> None:
        if psutil.virtual_memory().percent < 90:
            return
        knight = max(self.knights, key=lambda k: k.pawn_memory_use())
        if not knight.pawn_memory_use():
            return
        self.channels.remove(knight.channel)
        killed_job = knight.pawn_kill()
        if killed_job is not None:
            self.killed.append(killed_job)
        if self.pending:
            knight.enlist_pawn()
            self.channels.append(knight.pawn_start())

    def _set_num_jobs(self, num_jobs: int) -> None:
        if not self.num_jobs == None:
            assert num_jobs == self.num_jobs
            return
        self.num_jobs = num_jobs
        self.session.testscollected = num_jobs
        self.pending = [i for i in range(num_jobs)]

    def _assign_job(self, knight) -> None:
        """Try to assign a new job.

        If there is no job pending, send a shutdown notice.
        """
        if len(self.pending) > 0:
            knight.new_jobs([self.pending.pop(0)])
        if len(self.pending) == 0:
            knight.pawn_shutdown()

    def _initial_assign(self) -> None:
        """Initial assignment of tests to Pawns.

        This function should only be called once!
        """
        random.seed(17)
        random.shuffle(self.pending)

        # If we don't have at least two tests per Pawn, we have to assigned them
        # all and send shutdown signals.
        initial_batch = min(len(self.pending), 2 * len(self.knights))

        # Assign tests round-robin up to the initial batch size
        knights = cycle(self.knights)
        for _ in range(initial_batch):
            self._assign_job(next(knights))

        if len(self.pending) == 0:
            for knight in self.knights:
                knight.pawn_shutdown()

    # Knight reports
    def _knight_sessionstart(self, knight):
        pass

    def _knight_collection(self, knight):
        self.collecting += 1
        if self.collecting == 1:
            self.tr.write(f"Collecting...{self.collecting}", flush=True, bold=True)
        else:
            self.tr.rewrite(
                f"Collecting...{self.collecting}", flush=True, bold=True, erase=True
            )

    def _knight_collection_finish(self, knight, num_selected, num_deselected):
        self._set_num_jobs(num_selected)
        self.done_collecting += 1
        if self.done_collecting == len(self.knights):
            self._initial_assign()
            num_collected = num_deselected + num_selected
            plural = "" if num_collected == 1 else "s"
            line = f"Collected {num_collected} item{plural}"
            if num_deselected:
                line += f" / {num_deselected} deselected"
            if num_collected > num_selected:
                line += f" / {num_selected} selected"
            line += "\n"
            self.tr.rewrite(line, bold=True, erase=True)
        elif self.done_collecting > len(self.knights):
            # This is a new pawn
            self._assign_job(knight)

    def _knight_logstart(self, knight, nodeid, location):
        self.config.hook.pytest_runtest_logstart(nodeid=nodeid, location=location)

    def _knight_logreport(self, knight, report):
        self.config.hook.pytest_runtest_logreport(report=report)

    def _knight_logfinish(self, knight, nodeid, location):
        self.config.hook.pytest_runtest_logfinish(nodeid=nodeid, location=location)

    def _knight_runtest_protocol_complete(self, knight, item_index, duration):
        knight.ack_completed()
        self._assign_job(knight)

    def _knight_sessionfinish(self, knight):
        self.channels.remove(knight.channel)
        knight.shutdown()

    def _knight_benchmark_info(self, knight, info):
        self.bishop.add_benchmark_info(info)
