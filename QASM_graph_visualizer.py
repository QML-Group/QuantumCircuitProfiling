import openql as ql
import os
from os import listdir
from os.path import join


curdir = os.path.dirname(__file__)
path = curdir + '/Algo profiling simulations/experiment_circuits_algorithm_profiling'
benchmarks = [f.split('.')[0] for f in listdir(path) if (os.path.isfile(join(path, f)))]

for benchmark in benchmarks:
    print(benchmark)
    output_dir = os.path.join(curdir, 'Interaction_and_Dep_Graphs/visualizer_example_output/new_circuits' + benchmark)
    ql.set_option('output_dir', output_dir)
    ql.set_option('optimize', 'no')
    ql.set_option('log_level', 'LOG_INFO')
    ql.set_option('unique_output', 'yes')
    ql.set_option('write_qasm_files', 'no')
    ql.set_option('write_report_files', 'no')

    c = ql.Compiler("testCompiler")
    c.add_pass("Visualizer")
    c.add_pass("BackendCompiler")

    file_path = path + benchmark + '.qasm'
    vis_config_path = curdir + 'Interaction_and_Dep_Graphs/visualizer_config_example5.json' 
    har_config_path = curdir +'Interaction_and_Dep_Graphs/hardware_config_custom_100.json'

    c.set_pass_option("Visualizer", "visualizer_type", "INTERACTION_GRAPH")
    c.set_pass_option("Visualizer", "visualizer_config_path", vis_config_path )
    c.set_pass_option("BackendCompiler", "eqasm_compiler_name", "cc_light_compiler")

    platform = ql.Platform('starmon', har_config_path)
    num_qubits = 100
    p = ql.Program("test_", platform, num_qubits, 0)
    k = ql.Kernel("kernel", platform, num_qubits, 0)
    reader = ql.cQasmReader(platform,p)
    reader.file2circuit(file_path)

    p.add_kernel(k)
    c.compile(p)

