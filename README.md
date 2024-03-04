# Quantum Circuit Profiling
Quantum circuit profiling for improving compilation for single-core and multi-core quantum devices based on interaction graph and gate dependency graph properties.

The aim of our study is to enhance the under-
standing of quantum circuits by introducing graph theory-based
metrics that encompass their qubit interaction graph and gate
dependency graph properties, alongside conventional circuit-
describing parameters. This methodology facilitates a compre-
hensive examination and categorization of quantum circuits.
Furthermore, it enables the evaluation of circuit performance
on diverse quantum processors, thereby assisting in advancing
current mapping techniques. Our investigation uncovers a con-
nection between parameters rooted in interaction graphs and gate
dependency graphs, and the performance metrics for mapping,
across a range of established quantum device and mapping
configurations. Among the various device configurations, we
particularly emphasize modular (multi-core) quantum computing
architectures due to their high potential as a viable solution for
quantum device scalability. Additionally, when analyzing correla-
tions between these metrics and quantum circuit parameters for
multi-core devices, we not only consider performance metrics
for mapping but also incorporate metrics related to inter-core
communication (traffic).

Files description:

'translate_openqasm_to_cqasm' - translating OpenQASM files to cQASM used in this project;

'Qiskit_compilation_metrics' - extracting quantum circuit metrics before and after quantum compilation for different options (done in multi-thread);

'metrics_retrieving' - extracting quantum circuit metrics before and after quantum compilation for OpenQl compiler (compilation done in script 'bench_simulations_minextend');

'QASM_graph_visualizer' and 'interaction_graphs_cqasm' - extracting interaction graphs of quantum circuits;

'interaction_graph_data' - extracting interaction graph-based properties of quantum circuits;

'dep_graph_metrics' - extracting gate dependency graph metrics;

'longestRepeatingSubcircuit' - finding longest repeating subcircuit and the amount of time it repeats;

'extracting_additional_metrics' - extracting the rest of the relevant properties of quantum circuits;

'kmeans_2step_clustering' - clustering circuits based on their properties in two steps: based on size and based on extracted structural parameters.

For using this work please cite:

@article{bandic2023interaction,
  title={Interaction graph-based characterization of quantum benchmarks for improving quantum circuit mapping techniques},
  author={Bandic, Medina and Almudever, Carmen G and Feld, Sebastian},
  journal={Quantum Machine Intelligence},
  volume={5},
  number={2},
  pages={40},
  year={2023},
  publisher={Springer}
}





