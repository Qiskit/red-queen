# ------------------------------------------------------------------------------
# Part of Qiskit.  This file is distributed under the Apache 2.0 License.
# See accompanying file /LICENSE for details.
# ------------------------------------------------------------------------------

"""Benchmarks data."""

import os
from pathlib import Path

_base_path = Path(__file__).parent
_base_path = _base_path.resolve()
_base_path = _base_path.relative_to(os.getcwd())

queko_bigd_qasm = sorted(_base_path.glob("queko/BIGD/*.qasm"))
queko_bntf_qasm = sorted(_base_path.glob("queko/BNTF/*.qasm"))
queko_bss_qasm = sorted(_base_path.glob("queko/BSS/*.qasm"))
queko_qasm = queko_bigd_qasm + queko_bntf_qasm + queko_bss_qasm

queko_coupling = {
    "54QBT": [
        [0, 6],
        [1, 6],
        [1, 7],
        [2, 7],
        [2, 8],
        [3, 8],
        [3, 9],
        [4, 9],
        [4, 10],
        [5, 10],
        [5, 11],
        [6, 12],
        [6, 13],
        [7, 13],
        [7, 14],
        [8, 14],
        [8, 15],
        [9, 15],
        [9, 16],
        [10, 16],
        [10, 17],
        [11, 17],
        [12, 18],
        [13, 18],
        [13, 19],
        [14, 19],
        [14, 20],
        [15, 20],
        [15, 21],
        [16, 21],
        [16, 22],
        [17, 22],
        [17, 23],
        [18, 24],
        [18, 25],
        [19, 25],
        [19, 26],
        [20, 26],
        [20, 27],
        [21, 27],
        [21, 28],
        [22, 28],
        [22, 29],
        [23, 29],
        [24, 30],
        [25, 30],
        [25, 31],
        [26, 31],
        [26, 32],
        [27, 32],
        [27, 33],
        [28, 33],
        [28, 34],
        [29, 34],
        [29, 35],
        [30, 36],
        [30, 37],
        [31, 37],
        [31, 38],
        [32, 38],
        [32, 39],
        [33, 39],
        [33, 40],
        [34, 40],
        [34, 41],
        [35, 41],
        [36, 42],
        [37, 42],
        [37, 43],
        [38, 43],
        [38, 44],
        [39, 44],
        [39, 45],
        [40, 45],
        [40, 46],
        [41, 46],
        [41, 47],
        [42, 48],
        [42, 49],
        [43, 49],
        [43, 50],
        [44, 50],
        [44, 51],
        [45, 51],
        [45, 52],
        [46, 52],
        [46, 53],
        [47, 53],
    ],
    "53QBT": [
        [0, 1],
        [1, 2],
        [2, 3],
        [3, 4],
        [0, 5],
        [4, 6],
        [5, 9],
        [6, 13],
        [7, 8],
        [8, 9],
        [9, 10],
        [10, 11],
        [11, 12],
        [12, 13],
        [13, 14],
        [14, 15],
        [7, 16],
        [11, 17],
        [15, 18],
        [16, 19],
        [17, 23],
        [18, 27],
        [19, 20],
        [20, 21],
        [21, 22],
        [22, 23],
        [23, 24],
        [24, 25],
        [25, 26],
        [26, 27],
        [21, 28],
        [25, 29],
        [28, 32],
        [29, 36],
        [30, 31],
        [31, 32],
        [32, 33],
        [33, 34],
        [34, 35],
        [35, 36],
        [36, 37],
        [37, 38],
        [30, 39],
        [34, 40],
        [38, 41],
        [39, 42],
        [40, 46],
        [41, 50],
        [42, 43],
        [43, 44],
        [44, 45],
        [45, 46],
        [46, 47],
        [47, 48],
        [48, 49],
        [49, 50],
        [44, 51],
        [48, 52],
    ],
    "20QBT": [
        [0, 1],
        [1, 2],
        [2, 3],
        [3, 4],
        [0, 5],
        [1, 6],
        [1, 7],
        [2, 6],
        [2, 7],
        [3, 8],
        [3, 9],
        [4, 8],
        [4, 9],
        [5, 6],
        [6, 7],
        [7, 8],
        [8, 9],
        [5, 10],
        [5, 11],
        [6, 10],
        [6, 11],
        [7, 12],
        [7, 13],
        [8, 12],
        [8, 13],
        [9, 14],
        [10, 11],
        [11, 12],
        [12, 13],
        [13, 14],
        [10, 15],
        [11, 16],
        [11, 17],
        [12, 16],
        [12, 17],
        [13, 18],
        [13, 19],
        [14, 18],
        [14, 19],
        [15, 16],
        [16, 17],
        [17, 18],
        [18, 19],
    ],
    "16QBT": [
        [0, 1],
        [1, 2],
        [2, 3],
        [3, 4],
        [4, 5],
        [5, 6],
        [6, 7],
        [0, 8],
        [3, 11],
        [4, 12],
        [7, 15],
        [8, 9],
        [9, 10],
        [10, 11],
        [11, 12],
        [12, 13],
        [13, 14],
        [14, 15],
    ],
}
