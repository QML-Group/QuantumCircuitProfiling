import  os
import pandas as pd
import ast
from os import listdir
from os.path import isfile, join

curdir = os.path.dirname(__file__)

all_data = pd.read_excel(curdir + "/all_data.xlsx")

# #percentage of gates included in critical path
critical_path_metrics = []
for i, result in all_data.iterrows():
    perc_of_2qg_critical = result['MaxNumberOfTwoQubitGatesInCriticalPath'] / result['twoqgates']
    perc_of_g_critical = result['NumberOfGatesInCriticalPath'] / result['gates']
    d = [result['benchmark'],perc_of_2qg_critical,perc_of_g_critical]
    critical_path_metrics.append(d)


df = pd.DataFrame(critical_path_metrics, columns=['Benchmark', 'percentageOf2qGatesInCriticalPath','percentageOfGatesInCriticalPath'])
df.to_excel(curdir + '/critical_path_metrics.xlsx')

#depth, idling amount and density

benchmarks_dir = os.path.join(curdir,"openql/")
benchmarks = [f for f in listdir(benchmarks_dir) if join(benchmarks_dir, f)] 

openql_metrics = []
for benchmark in benchmarks:
    print(benchmark)
    data_path = benchmarks_dir + benchmark + "/" + "program_prescheduler_out.report"
    if not os.path.isfile(data_path):
        data_path = benchmarks_dir + benchmark + "/" + "program_prescheduler_in.report"      
    with open(data_path, 'r') as input_file:
        for line in input_file:
            if 'qubits' in line:
                line = line.split(":")
                qubits = float(line[1])
            elif 'quantum gates' in line:
                line = line.split(":")
                gates = float(line[1])
            elif 'Duration' in line:
                if 'program_prescheduler_in' in data_path:
                    latency = gates
                else:    
                    line = line.split(":")
                    latency = float(line[1])
            elif 'Qubit cycles use' in line:
                line = line.split(":",1)
                qubit_cycles_use = ast.literal_eval(line[1])
                qubit_cycles_use_accumulate = 0
                for value in qubit_cycles_use.values():
                    qubit_cycles_use_accumulate += latency - value
                qubit_idling_score =  qubit_cycles_use_accumulate / (qubits *  latency)
            elif 'multi-qubit gates' in line:
                line = line.split(":")
                twoqgates = float(line[1])           
            else: 
                continue
    oneqgates = gates - twoqgates
    density = ((((2*twoqgates) + oneqgates)/latency) - 1)/(qubits-1)
    openql_metrics.append([benchmark, qubit_idling_score, density,latency])

df = pd.DataFrame(openql_metrics, columns=['benchmark', 'idlingScore','circuitDensity','Latency'])
df.to_excel(curdir + '/OQ_metrics.xlsx')
