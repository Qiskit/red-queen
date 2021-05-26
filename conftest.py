# ------------------------------------------------------------------------------
# Part of Red Queen Project.  This file is distributed under the MIT License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------
import os
import pytest
import sys
import pathlib

_base_path = pathlib.Path(__file__).parent.resolve() / "src"
sys.path.insert(0, str(_base_path))


def parse_num_pawns(string):
    if string == "auto":
        return os.cpu_count() - 2
    elif string.isnumeric():
        num_pawns = int(string)
        if num_pawns > os.cpu_count():
            raise ValueError("You cannot have more pawns than CPUs!")
        return num_pawns
    else:
        return 1


def pytest_addoption(parser):
    group = parser.getgroup("red_queen", "Red Queen multiprocess benchmarking")
    group._addoption(
        "-n",
        "--num_pawns",
        default="auto",
        dest="num_pawns",
        metavar="num_pawns",
        type=parse_num_pawns,
        help="you can use 'auto' here for auto detection CPUs number on host system",
    )
    group.addoption(
        "--storage_dir",
        default="./results",
        dest="storage_dir",
        metavar="<storage_dir>",
        type=pathlib.Path,
        help="",
    )
    group.addoption(
        "--store",
        action="store_true",
        default=False,
        dest="store_data",
        help="",
    )


@pytest.mark.trylast
def pytest_configure(config):
    if not hasattr(config.option, "is_pawn") and not config.getvalue("collectonly"):
        from red_queen.queen import RedQueen
        config.pluginmanager.register(RedQueen(config), "red_queen")
