import os
from os import listdir
from os.path import isfile, join
from typing import overload
from matplotlib import colors
from matplotlib.text import OffsetFrom
from numpy import empty
from openpyxl import load_workbook
import pandas as pd
import math
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import plotly.express  as px
import seaborn as sns
import numpy as np
from matplotlib import colors as cl



curdir = os.path.dirname(__file__)
benchmarks_dir = os.path.join(curdir,"Simulation_results/Simulation_results_base_last/")
benchmarks = [f for f in listdir(benchmarks_dir) if join(benchmarks_dir, f)] 

data = []

c0 = pd.read_excel(curdir + "/cluster0_sc.xlsx", index=False)
c1 = pd.read_excel(curdir + "/cluster1_sc.xlsx", index=False)
c2 = pd.read_excel(curdir + "/cluster2_sc.xlsx", index=False)
c3 = pd.read_excel(curdir + "/cluster3_sc.xlsx", index=False)
c4 = pd.read_excel(curdir + "/cluster4_sc.xlsx", index=False)


for benchmark in benchmarks:
    print(benchmark)

    #data_path_before = benchmarks_dir + benchmark + "/" +  "program_prescheduler_in.report"
    data_path_after = benchmarks_dir + benchmark + "/" + "program_rcscheduler_out.report"
    data_path_before = benchmarks_dir + benchmark + "/" +  "program_clifford_prescheduler_in.report"

    with open(data_path_before, 'r') as input_file:
        for line in input_file:
            if 'qubits' in line:
                line = line.split(":")
                qubits = float(line[1])
            elif 'duration' in line:
                line = line.split(":")
                latency_before = float(line[1])
            elif 'quantum gates' in line:
                line = line.split(":")
                gates_before = float(line[1])   
            elif 'multi-qubit gates' in line:
                line = line.split(":")
                no_of_more_q_gates_before = float(line[1])
            else: 
                continue
    no_of_1_q_gates_before = gates_before - no_of_more_q_gates_before

    with open(data_path_after, 'r') as input_file:
        for line in input_file:
            if 'duration' in line:
                line = line.split(":")
                latency_after = float(line[1])
            elif 'quantum gates' in line:
                line = line.split(":")
                gates_after = float(line[1])   
            elif 'multi-qubit gates' in line:
                line = line.split(":")
                no_of_more_q_gates_after = float(line[1])
            else: 
                continue
    no_of_1_q_gates_after = gates_after - no_of_more_q_gates_after

    #calculating gate overhead
    gate_overhead = ((gates_after-gates_before)/gates_before)*100
   
    #calculating latency overhead
    latency_overhead = ((latency_after-latency_before)/latency_before)*100

    #calculating fidelity decrease

    oneQ_fid = 0.9982
    twoQ_fid = 0.9765
    #meas_fid = 0.995
    

    fidelity_before = (math.pow(oneQ_fid,no_of_1_q_gates_before)) * (math.pow(twoQ_fid,no_of_more_q_gates_before))
    fidelity_after = (math.pow(oneQ_fid,no_of_1_q_gates_after)) * (math.pow(twoQ_fid,no_of_more_q_gates_after))
    fidelity_decrease = ''
    if fidelity_before !=0 :
        fidelity_decrease = ((fidelity_before - fidelity_after)/fidelity_before)*100 

    #extract data per cluster   
    benchmark_found = False
    for i,row in c0.iterrows():
        if benchmark == row["benchmark"]:
            asp = row['_6']
            mindeg = row['_8']
            maxdeg = row['_7']
            stdev = row['_9']
            cluster = 0
            cluster_final = row['cluster_final']
            benchmark_found = True

    if not benchmark_found: 
        for i,row in c1.iterrows():
            if benchmark == row["benchmark"]:
                asp = row['_6']
                mindeg = row['_8']
                maxdeg = row['_7']
                stdev = row['_9']
                cluster = 1
                cluster_final = row['cluster_final']
                benchmark_found = True
    
    if not cluster_final: 
        for i,row in c2.iterrows():
            if benchmark == row["benchmark"]:
                asp = row['_6']
                mindeg = row['_8']
                maxdeg = row['_7']
                stdev = row['_9']
                cluster = 2
                cluster_final = row['cluster_final']
                benchmark_found = True

    if not cluster_final: 
        for i,row in c3.iterrows():
            if benchmark == row["benchmark"]:
                asp = row['_6']
                mindeg = row['_8']
                maxdeg = row['_7']
                stdev = row['_9']
                cluster = 3
                cluster_final = row['cluster_final']
                benchmark_found = True

    
    if not cluster_final: 
        for i,row in c4.iterrows():
            if benchmark == row["benchmark"]:
                asp = row['_6']
                mindeg = row['_8']
                maxdeg = row['_7']
                stdev = row['_9']
                cluster = 4
                cluster_final = row['cluster_final']
    d = [benchmark,qubits,gates_before,gates_after,no_of_more_q_gates_before/gates_before,gate_overhead,latency_overhead, fidelity_after, fidelity_before,fidelity_decrease, cluster,cluster_final,asp,maxdeg,mindeg,stdev]
    data.append(d)

df =  pd.DataFrame(data, columns =   ["benchmark","no of qubits","gates before","gates after",'2-q gate perc',"gate overhead","latency overhead", 'after mapping fidelity', 'circuit fidelity',"fidelity decrease","cluster", "cluster_final","Avg. shortest path length", "Max degree","Min degree","Std. dev. adj. mat."]) 
df.to_excel(curdir + "/data_overhead_results.xlsx", index = False)

