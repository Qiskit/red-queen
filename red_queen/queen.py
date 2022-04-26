# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import pytest
from red_queen.bishop import Bishop
from red_queen.rook import Rook


class RedQueen:
    """A pytest plugin that runs a multiprocessed test session.

    At the beginning of the test session, the RedQueen creates instances of a
    Rook and a Bishop responsible for managing scheduling tasks and saving
    results, respectively.

    The queen does nothing else. She delegates to the Rook all details of how to
    run the testing (benchmarking) session.
    """
    def __init__(self, config):
        self.config = config
        self.bishop = Bishop(self.config)
        self.rook = Rook(self.config, self.bishop)

    def pytest_keyboard_interrupt(self, excinfo) -> None:
        self.rook.kill_all()
        self.bishop.store()

    @pytest.mark.trylast
    def pytest_sessionstart(self, session) -> None:
        num_pawns = self.config.getoption("num_pawns")
        self.rook.start_session(session, num_pawns)

    def pytest_collection(self) -> bool:
        # The queen does not collect anything
        return True

    def pytest_runtestloop(self, session) -> bool:
        self.rook.run_tests()
        self.bishop.store()
        return True

    def pytest_sessionfinish(self, session) -> None:
        self.rook.finish_session()
