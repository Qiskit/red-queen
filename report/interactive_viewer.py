"""Interactive visualizer for results data"""

import argparse
import os
import json
import glob
import pandas as pd


def main(path, framework="dtale"):
    """
    Start visualizer.

    Args:
       path (str): File or directory containing JSON formatted results
       framework (str): visualization framework. Currently only 'dtale'.
    """
    eda = __import__(framework)
    if isinstance(path, list):
        path_list = path
    elif os.path.isdir(path):
        path_list = glob.glob(path.rstrip("/ ") + "/*.json")
    else:
        path_list = [path]
    df = pd.DataFrame()
    result_data_list = []
    for data_path in path_list:
        with open(data_path, "r", encoding="utf8") as dfile:
            result_data = json.load(dfile)
        result_data_list.append({"benchmarks": result_data["benchmarks"], "file": data_path})
    df = pd.json_normalize(result_data_list, record_path=["benchmarks"], meta=["file"])

    session = eda.show(df, host="localhost", subprocess=False)
    session.open_browser()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--eda-framework",
        default="dtale",
        dest="framework",
        choices=["dtale"],
        help=("Exploratory data analysis framework. " "Currently only dtale is available."),
    )
    parser.add_argument("path", help="Path to directory or file for results.")
    args = parser.parse_args()
    main(args.path, args.framework)
