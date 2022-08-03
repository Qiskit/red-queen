import sys
import json
from turtle import color
import matplotlib.pyplot as plt
from numpy import mean

def fidelity(contents, contents2 = None):
    if not contents2:
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
    else:
        #try:
            bench_names = ["Benchmark #1", "Benchmark #2"]
            bench_fid = {"Benchmark #1" : 0 , "Benchmark #2" : 0}
            count1 = 0
            count2 = 0
            avgs = []
            for i, bench in enumerate(contents["benchmarks"]):
                count1+=1
                bench_fid["Benchmark #1"] = bench_fid.get("Benchmark #1") + bench["stats"]["quality"]["fidelity"]
                
            for i, bench in enumerate(contents2["benchmarks"]):
                count2+=1
                bench_fid["Benchmark #2"] = bench_fid.get("Benchmark #2") + bench["stats"]["quality"]["fidelity"]
            
            avgs.append(bench_fid["Benchmark #1"]/count1)
            avgs.append(bench_fid["Benchmark #2"]/count2)
            print(avgs)
            return bench_names, avgs
        #except Exception as e:
            #print("Uh, Oh! Something went wrong")
            #print(e)
                
def meantime(contents, contents2 = None):
    if not contents2:
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
            return bench_name.keys(), timeavg
        except Exception as e:
            print("Uh, Oh! Something went wrong")
            print(e)
    else:
        try:
            bench_names = ["Benchmark #1", "Benchmark #2"]
            bench_times = {"Benchmark #1" : 0, "Benchmark #2" : 0}
            count1 = 0
            count2 = 0
            avgs = []
            for bench in enumerate(contents["benchmarks"]):
                count1+=1
                bench_times["Benchmark #1"] += bench["stats"]["timing"]["mean"]
                
            for bench in enumerate(contents2["benchmarks"]):
                count2+=1
                bench_times["Benchmark #1"] += bench["stats"]["timing"]["mean"]
            
            avgs.append(bench_times["Benchmark #1"]/count1)
            avgs.append(bench_times["Benchmark #2"]/count2)
            return bench_names, avgs
        except Exception as e:
            print("Uh, Oh! Something went wrong")
            print(e)
            
            
        

def main(args):
    #arg parsing
    if len(args) == 4:
        viewtype = args[1]
        file = args[2]
        datatype = args[3]
    if len(args) == 5:
        viewtype = args[1]
        file = args[2]
        file2 = args[3]
        datatype = args[4]
    if viewtype == "view":
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
    if viewtype == "compare":
        with open(file, 'r') as f:
            contents1 = json.load(f)
        with open(file2, 'r') as f:
            contents2 = json.load(f)
        if datatype == "fidelity":
            x_axis, y_axis = fidelity(contents1, contents2)
            plt.bar(x_axis, y_axis, color="darkolivegreen")
            plt.xlabel("Benchmark Name")
            plt.ylabel("Fidelity")
            plt.show()
        elif datatype == "meantime":
            x_axis, y_axis = meantime(contents1, contents2)
            plt.bar(x_axis, y_axis, color="darkolivegreen")
            plt.xlabel("Benchmark Name")
            plt.ylabel("Mean Time")
            plt.show()
        else:
            print("Invalid Data Type! Allowed parameters are: 'fidelity' and 'meantime'")
if __name__ == "__main__":
    main(sys.argv)

    

#python view.py <JSON FILE> <DATA TYPE>
#python view.py view <JSON FILE> <DATA TYPE>
#python view.py compare <JSON FILE #1> <JSON FILE #2> <DATA TYPE>
