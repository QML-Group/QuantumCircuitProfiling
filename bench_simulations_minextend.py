from openql import openql as ql
import os
from os import listdir
from os.path import join

curdir = os.path.dirname(__file__)
file_path = os.path.join(curdir, "experiment_circuits_algorithm_profiling/")
har_config_path = os.path.join(curdir, "test_mapper_surf_100.json")
benchmarks = [f.split('.')[0] for f in listdir(file_path) if (os.path.isfile(join(file_path, f)))]
platform = ql.Platform('platform1',har_config_path)

for benchmark in benchmarks:
    print(benchmark)
    if benchmark != "desktop":
        output_dir = os.path.join(curdir,'test' +  benchmark)

        #general passes
        ql.set_option("output_dir", output_dir)
        ql.set_option('log_level', 'LOG_WARNING')
        ql.set_option("write_qasm_files", "yes")
        ql.set_option('write_report_files', 'yes')
        ql.set_option('print_dot_graphs', 'no')
        
        #decomposition of toffoli
        ql.set_option('decompose_toffoli', 'am')

        #scheduling 
        ql.set_option("scheduler", "ALAP")
        ql.set_option('scheduler_uniform', 'no')
        ql.set_option('scheduler_commute', 'yes')
        ql.set_option('scheduler_commute_rotations', 'yes')
        ql.set_option('prescheduler', 'yes')
        ql.set_option('scheduler_heuristic','random')

        #initial placement 
        ql.set_option('initialplace', 'no') 
        ql.set_option('initialplace2qhorizon', '0')
        ql.set_option('mapassumezeroinitstate', 'yes')

        #circuit optimization
        ql.set_option('clifford_premapper', 'yes')
        ql.set_option('clifford_postmapper', 'no')

        #routing 
        ql.set_option('mapper','minextend')
        ql.set_option('mapinitone2one', 'yes')
        ql.set_option('mapusemoves', 'no')
        ql.set_option('mapreverseswap', 'no')
        ql.set_option('mapselectswaps','all')
        ql.set_option('mappathselect', 'all')
        ql.set_option('maplookahead', 'noroutingfirst')
        ql.set_option('maptiebreak', 'first')
        ql.set_option('mapmaxalters', '50')


        p= ql.Program('Bench_simulations' + benchmark, platform)
     
        #read qasm files
        c = platform.get_compiler()
        c.prefix_pass('dec.Instructions')
        c.prefix_pass('io.cqasm.Read', '', {'cqasm_file': file_path + benchmark + '.qasm'})
        c.compile_with_frontend(platform)

