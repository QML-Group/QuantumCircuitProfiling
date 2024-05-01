import qiskit
from qiskit import transpile, IBMQ
from qiskit.circuit.quantumcircuit import QuantumCircuit
import math
import matplotlib.pyplot as plt
from qiskit import Aer, dagcircuit
from qiskit.transpiler import CouplingMap
from qiskit.providers.fake_provider import ConfigurableFakeBackend, FakeMelbourne
from qiskit.scheduler import measure
from qiskit.circuit.library import DraperQFTAdder, QuantumVolume, CDKMRippleCarryAdder, QFT
from qiskit.pulse import Schedule, InstructionScheduleMap, DriveChannel, ControlChannel, Play, Gaussian
from qiskit.circuit.random import random_circuit
import os
from openpyxl import load_workbook
from os import listdir
from os.path import isfile, join
import pandas as pd
from qiskit.visualization import plot_gate_map
from multiprocessing import Pool, Lock



def processBenchmark(b):
    #data before compilation
    circuit = QuantumCircuit.from_qasm_file(b[0])
    depth_before = circuit.depth()
    gates_before = circuit.size()
    gate_types_before = circuit.count_ops()
    #b[1] = b[1].replace('.qasm','')
    twoqgates_before = 0
    twoqgates_before = circuit.count_ops().get('cz', 0) + circuit.count_ops().get('cx', 0)
    l_data = []

    for dcm in devices_coupling_maps:

        #max_qubit_index = max(max(pair) for pair in dcm[1]) + 1
        num_phys_qubits = dcm[2]

        if circuit.num_qubits <= num_phys_qubits:
            # Transpile the circuit for the target device
            for ol in optimization_levels:
                for rt in routing_techniques:
                    #try:
                    transpiled_circuit = transpile(circuit, coupling_map = dcm[1],optimization_level = ol, routing_method = rt)
                    #except e:
                    #    print(e)
                    #    return

                    # Get the number of swaps, depth and fidelity after compilation
                    swaps = transpiled_circuit.count_ops().get('swap', 0)
                    depth = transpiled_circuit.depth()
                    gates = transpiled_circuit.size()
                    gate_types = transpiled_circuit.count_ops()
                    twoqgates = 0
                    twoqgates = transpiled_circuit.count_ops().get('cz', 0) + transpiled_circuit.count_ops().get('cx', 0) + 3*swaps
                    

                    # Save the data
                    d = [b[1], dcm[0], ol, rt, gates_before, gates, gate_types_before,gate_types ,twoqgates_before,twoqgates,swaps, depth_before,depth]
                    l_data.append(d)
    print(b[1])
    return l_data

if __name__ == '__main__':

    curdir = os.path.dirname(__file__)


    # Define your quantum circuit
    benchmarks_dir = os.path.join(curdir,"experiment_circuits_algorithm_profiling_openqasm/")
    benchmarks = [f for f in listdir(benchmarks_dir) if join(benchmarks_dir, f)] 

    # # Choose the target device
    devices_coupling_maps = [("Rigetti Aspen-1",[[0,1],[1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[0,7],[2,8],[3,9],[8,9],[8,10],[11,12],[12,13],[13,14],[14,15],[15,9],[1,0],[2,1],[3,2],[4,3],[5,4],[6,5],[7,6],[7,0],[8,2],[9,3],[9,8],[10,8],[12,11],[13,12],[14,13],[15,14],[9,15]],16),
                            ("Surface-17",[[2,0],[4,1],[0,3],[1,5],[2,6],[6,3],[4,7],[7,5],[5,8],[8,6],[6,9],[7,10],[10,8],[11,8],[8,11],[11,9],[9,12],[13,10],[10,14],[14,11],[11,15],[15,12],[13,16],[16,14],[0,2],[1,4],[3,0],[5,1],[6,2],[3,6],[7,4],[5,7],[8,5],[6,8],[9,6],[10,7],[8,10],[9,11],[12,9],[10,12],[10,13],[14,10],[11,14],[15,11],[12,15],[16,13],[14,16],[12,10]],17),
                            ("IBM Rochester",[[0,1],[1,2],[2,3],[3,4],[0,5],[4,6],[5,9],[6,13],[7,8],[8,9],[9,10],[10,11],[11,12],[12,13],[13,14],[14,15],[7,16],[16,19],[15,18],[11,17],[17,23],[18,27],[19,20],[20,21],[21,22],[22,23],[23,24],[24,25],[25,26],[26,27],[21,28],[28,32],[25,29],[29,36],[30,31],[31,32], [32,33],[33,34],[34,35],[35,36],[36,37],[37,38],[30,39],[39,42],[34,40],[40,46],[38,41],[41,50],[42,43],[43,44],[44,45],[45,46],[46,47],[47,48],[48,49],[49,50],[44,51],[48,52], [1,0],[2,1],[3,2],[4,3],[5,0],[6,4],[9,5],[13,6],[8,7],[9,8],[10,9],[11,10],[12,11],[13,12],[14,13],[15,14],[16,7],[19,16],[18,15],[17,11],[23,17],[27,18],[20,19],[21,20],[22,21],[23,22],[24,23],[25,24],[26,25],[27,26],[28,21],[32,28],[29,25],[36,29],[31,30],[32,31],[33,32],[34,33],[35,34],[36,35],[37,36],[38,37],[39,30],[42,39],[40,34],[46,40],[41,38],[50,41],[43,42],[44,43],[45,44],[46,45],[47,46],[48,47],[49,48] ,[50,49],[51,44],[52,48]],53),
                            ("Google Bristlecone",[[0,1],  [1,2],  [2,3],  [3,4],  [4,5], [5,6],  [6,7], [7,8],  [8,9], [9,10],  [10,11], [12,13], [13,14],  [14,15],  [15,16], [16,17], [17,18], [18,19],  [19,20], [20,21],  [21,22],  [22,23], [24,25],  [25,26],  [26,27], [27,28],[28,29], [29,30], [31,32],  [32,33],  [33,34],  [34,35],[36,37], [37,38],  [38,39],  [39,40], [40,41], [42,43],  [43,44],  [44,45], [45,46],  [46,47], [48,49],[49,50],[50,51], [51,52],  [52,53], [53,54], [54,55],  [55,56],  [56,57], [57,58], [58,59],[60,61],  [61,62], [62,63],  [63,64], [64,65],  [65,66],  [66,67], [67,68],  [68,69],  [69,70],  [70,71],[1,12],[1,14],[14,3],[3,16],[16,5],[5,18],[18,7],[7,20],[9,20],[9,22],[22,11],[13,24],[13,26],[15,26],[15,28],[28,17],[30,17],[30,19],[19,32],[32,21],[21,34],[34,23],[25,36],[25,38],[38,27],[40,27],[40,29],[42,29],[42,31],[31,44],[44,33],[33,46],[46,35],[37,48],[37,50],[50,39],[39,52],[52,41],[41,54],[54,43],[43,56],[45,56],[45,58],[58,47],[49,60],[49,62],[62,51],[51,64],[64,53],[53,66],[66,55],[55,68],[68,57],[57,70],[70,59], [1, 0], [2, 1], [3, 2], [4, 3], [5, 4], [6, 5], [7, 6], [8, 7], [9, 8], [10, 9], [11, 10], 
                            [13, 12], [14, 13], [15, 14], [16, 15], [17, 16], [18, 17], [19, 18], [20, 19], [21, 20], [22, 21], [23, 22],[25, 24], [26, 25], [27, 26], [28, 27], [29, 28], [30, 29], [32, 31], [33, 32], [34, 33], [35, 34], [37, 36], [38, 37], [39, 38], [40, 39], [41, 40], [43, 42], [44, 43], [45, 44], [46, 45], [47, 46],[49, 48], [50, 49], [51, 50], [52, 51], [53, 52], [54, 53], [55, 54], [56, 55], [57, 56], [58, 57], [59, 58], [61, 60], [62, 61], [63, 62], [64, 63], [65, 64], [66, 65], [67, 66], [68, 67], [69, 68], [70, 69], [71, 70], [12, 1], [14, 1], [3, 14], [16, 3], [5, 16], [18, 5], [7, 18], [20, 7], [20, 9], [22, 9], [11, 22], [24, 13], [26, 13], [26, 15], [28, 15], [17, 28], [17, 30], [19, 30], [32, 19], [21, 32], [34, 21], [23, 34],       [36, 25], [38, 25], [27, 38], [27, 40], [29, 40], [29, 42], [31, 42], [44, 31], [33, 44], [46, 33], [35, 46],[48, 37], [50, 37], [39, 50], [52, 39], [41, 52], [54, 41], [43, 54], [56, 43], [56, 45], [58, 45], [47, 58],[60, 49], [62, 49], [51, 62], [64, 51], [53, 64], [66, 53], [55, 66], [68, 55], [57, 68], [70, 57], [59, 70]],72)]

    data = []
    optimization_levels = [1,2] 
    routing_techniques = ['stochastic', 'sabre']
    lock = Lock()

    paths = [(benchmarks_dir + b,b) for b in benchmarks]
    with Pool(15) as p:
        results = p.map(processBenchmark, paths)

    for res in results:
        data.extend(res)
        
    #[processBenchmark(p) for p in paths]
    print(data)
    df =  pd.DataFrame(data, columns =   ["benchmarks names", "device name", "optimization level","routing technique","gates before", "num of gates", "different gates count before", "different gates count", "2qgates before","2qgates","number of swaps","depth before","depth"]) 
    #writer = pd.ExcelWriter(curdir + "/compilation_res.xlsx", engine='openpyxl', mode='a', if_sheet_exists='overlay')
    #file = pd.read_excel(r'C:/Users/mbandic/Desktop/PhD/Code/Subgraph isomorphism project/compilation_res.xlsx')
    #df.to_excel(writer,index=False,header=False,startrow=len(file)+1)
    df.to_excel(curdir + "single_core_compiler_results.xlsx", index=False)
    #writer.close()



