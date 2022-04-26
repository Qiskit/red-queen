# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
from multiprocessing import Pipe
from multiprocessing.connection import Connection

import psutil
from red_queen.pawn import create_pawn


class Knight:
    """The Knight is responsible for enlisting and managing the Pawn.

    He keeps track of which jobs the Pawn is assigned and send commands.
    """

    def __init__(self, uid, config):
        self.uid = uid
        self.config = config
        self.shutdown_sent = False
        self.current_jobs = []
        if hasattr(self.config, "invocation_params"):
            self.args = [str(x) for x in self.config.invocation_params.args or ()]
            self.option_dict = {}
        else:
            self.args = self.config.args
            self.option_dict = vars(self.config.option)
        self.enlist_pawn()

    def enlist_pawn(self) -> None:
        self.channel, pawn_channel = Pipe()
        self.pawn = create_pawn(self.uid, self.option_dict, self.args, pawn_channel)

    def new_jobs(self, indices):
        self.current_jobs.extend(indices)
        self._send_command("run_tests", indices=indices)

    def ack_completed(self):
        self.current_jobs.pop(0)

    def pawn_start(self) -> Connection:
        self.pawn.start()
        if self.current_jobs:
            self._send_command("run_tests", indices=self.current_jobs)
        return self.channel

    def pawn_memory_use(self) -> int:
        try:
            proc_info = psutil.Process(self.pawn.pid)
        except psutil.ZombieProcess:
            return 0
        except psutil.NoSuchProcess:
            return 0
        return proc_info.memory_info().rss

    def pawn_kill(self):
        self.pawn.kill()
        self.channel.close()
        self.shutdown_sent = False
        if self.current_jobs:
            return self.current_jobs.pop(0)
        return None

    def pawn_shutdown(self) -> None:
        if self.shutdown_sent:
            return
        self.shutdown_sent = True
        self._send_command("shutdown")

    def shutdown(self) -> None:
        self.pawn_shutdown()
        self.pawn.join()
        self.channel.close()

    def _send_command(self, name, **kwargs):
        self.channel.send((name, kwargs))
