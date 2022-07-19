import sys
import json
from turtle import color
import matplotlib.pyplot as plt
from numpy import mean

def fidelity(contents):
    try:
        bench_name = {}
        bench_fid= {}
        for i,bench in enumerate(contents["benchmarks"]):
            bench_name[bench["name"]] = i + 1
            if bench_fid.get(bench["name"]):
                bench_fid[bench["name"]] = bench_fid.get(bench["name"]) + bench["stats"]["quality"]["fidelity"]
            else:
                bench_fid[bench["name"]] = bench["stats"]["quality"]["fidelity"]
        fidavg = []
        for i in bench_fid:
            fidavg.append(bench_fid[i]/bench_name[i])
        return bench_name.keys(), fidavg
    except Exception as e:
        print("Uh, Oh! Something went wrong")
        print(e)
        
def meantime(contents):
    try:
        bench_name = {}
        bench_mean= {}
        for i,bench in enumerate(contents["benchmarks"]):
            bench_name[bench["name"]] = i + 1
            if bench_mean.get(bench["name"]):
                bench_mean[bench["name"]] = bench_mean.get(bench["name"]) + bench["stats"]["timing"]["mean"]
            else:
                bench_mean[bench["name"]] = bench["stats"]["timing"]["mean"]
        timeavg = []
        for i in bench_mean:
            timeavg.append(bench_mean[i]/bench_name[i])
        print(bench_mean)
        return bench_name.keys(), timeavg
    except Exception as e:
        print("Uh, Oh! Something went wrong")
        print(e)

def main(file, datatype):
    results_file = file
    with open(results_file, 'r') as f:
     contents = json.load(f)
    if datatype == "fidelity":
        x_axis, y_axis = fidelity(contents)
        plt.bar(x_axis, y_axis, color="darkolivegreen")
        plt.xlabel("Benchmark Name")
        plt.ylabel("Fidelity")
        plt.show()
    elif datatype == "meantime":
        x_axis, y_axis = meantime(contents)
        plt.bar(x_axis, y_axis, color="darkolivegreen")
        plt.xlabel("Benchmark Name")
        plt.ylabel("Mean Time")
        plt.show()
    else:
        print("Invalid Data Type! Allowed parameters are: 'fidelity' and 'meantime'")
if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])

    


