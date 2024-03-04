import os
import numpy as np
import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt
import statistics 
from operator import itemgetter
from os import listdir
from os.path import isfile, join
from networkx.drawing.nx_pydot import read_dot


curdir = os.path.dirname(__file__)


dot_path = os.path.join(curdir, 'Interaction_graphs/new_circuits/')
data = []
data_adj = []
gates = 0
twoqgates = 0 
bench_dir =os.path.join(curdir, 'circuits/')
benchmarks = [f for f in listdir(bench_dir) if isfile(join(bench_dir, f))]

for benchmark in benchmarks:
    print(benchmark)
    benchmark = benchmark.replace('.qasm','')
    bench_path = bench_dir + '/' + benchmark + '.qasm'

    with open(bench_path, 'r') as input_file:
        for line in input_file:
            if 'qubits' in line:
                res = [int(i) for i in line.split() if i.isdigit()]
                if (len(res) > 0):
                    qubits = res[0]
            if 'q[' in line:
                gates = gates + 1
            if ('cz' in line)  or ('cnot' in line)  or ('cr' in line):
                twoqgates = twoqgates + 1 

    bench_type = 'placeholder'

    plt.figure(dpi = 110)

    output_dir = dot_path + benchmark + '/'
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    dotfilepath = dot_path  + benchmark + '.dot'
    G = nx.Graph(read_dot(dotfilepath))
    weights = nx.get_edge_attributes(G,'label')
    for k, v in weights.items():
        weights[k] = int(v)

    nx.set_edge_attributes(G,weights,'weight')

    qubits = G.number_of_nodes()

    pos = nx.spring_layout(G)
    plt.axis('off')
    nx.draw_networkx_nodes(G,pos,node_color='g',alpha = 0.6)  # draws nodes
    nx.draw_networkx_edges(G,pos,edge_color='b',alpha = 0.3)  # draws edges
    nx.draw_networkx_edge_labels(G,pos,edge_labels = nx.get_edge_attributes(G,'weight'), font_size = 8, label_pos = 0.5) # edge lables
    nx.draw_networkx_labels(G,pos) # node labels

    fig = plt.gcf()
    #plt.show()
    fig.savefig(output_dir + '/' + benchmark + '_inter_graph.png', format= 'png')
    plt.close()

    #add more statistics

    twoqperc = float(float(twoqgates)/float(gates))

    if (qubits != 0 and  G.number_of_edges() != 0):
    
        #adjacency matrix data
        A=nx.adjacency_matrix(G)
        A_row = np.array(A.todense(), dtype=np.intc).flatten()
        #d_am = [benchmark, A.max(), A.min(), A.mean(), s.stdev(A_row), s.variance(A_row)]
        #data_adj.append(d_am)
        plt.xlabel('Weights')
        plt.ylabel('Number of edges')
        x,y = np.histogram(A.data, bins = 50)
        plt.xticks(A.data)
        plt.rc('xtick', labelsize=5)  
        plt.rc('ytick', labelsize=8)  
        plt.hist(y[:-1], y, weights=x/2) 
        plt.title('Adj. Matrix Distribution')
        fig = plt.gcf()
        fig.savefig(output_dir + '/' + benchmark + '_adj_matrix.png', format= 'png')
        plt.close()

        #plot and save degree distribution
        degrees = [G.degree(n) for n in G.nodes()]
        plt.xlabel('Degree')
        plt.ylabel('Number of nodes')
        plt.xticks(degrees)
        plt.rc('xtick', labelsize=6)  
        plt.hist(degrees, bins = 60)
        plt.title('Degree Distribution')
        fig = plt.gcf()
        fig.savefig(output_dir + '/' + benchmark + '_degree.png', format= 'png')
        plt.close()


        
        if (nx.is_connected(G)):
            #multi-core
            #d = [benchmark, bench_type,qubits, gates,twoqgates, twoqperc, statistics.mean(list(nx.closeness_centrality(G).values())), nx.diameter(G), statistics.mean(list(nx.average_degree_connectivity(G).values())), max(nx.degree(G),key=itemgetter(1))[1], min(nx.degree(G),key=itemgetter(1))[1], nx.average_clustering(G), nx.graph_clique_number(G),nx.graph_number_of_cliques(G), nx.edge_connectivity(G), nx.node_connectivity(G), max(nx.betweenness_centrality(G).values()),statistics.mean(list(nx.pagerank(G).values())) , statistics.mean(list(nx.core_number(G).values())),np.std(A_row)]
            #single-core long and short version
            #d = [benchmark, bench_type, qubits, gates, twoqgates, twoqperc, nx.average_shortest_path_length(G), nx.closeness_centrality(G), nx.diameter(G),nx.average_degree_connectivity(G), max(nx.degree(G),key=itemgetter(1))[1], min(nx.degree(G),key=itemgetter(1))[1], nx.average_clustering(G), nx.graph_clique_number(G),nx.graph_number_of_cliques(G), nx.edge_connectivity(G), np.std(A_row)]
            d = [benchmark, bench_type, qubits, gates, twoqgates,twoqperc, nx.average_shortest_path_length(G), nx.diameter(G),statistics.mean(list(nx.average_degree_connectivity(G).values())), max(nx.degree(G),key=itemgetter(1))[1], min(nx.degree(G),key=itemgetter(1))[1],np.std(A_row)]
        else:
            #d = [benchmark, bench_type,qubits, gates,twoqgates, twoqperc, statistics.mean(list(nx.closeness_centrality(G).values())), 0, nx.average_degree_connectivity(G), max(nx.degree(G),key=itemgetter(1))[1], min(nx.degree(G),key=itemgetter(1))[1], nx.average_clustering(G), nx.graph_clique_number(G),nx.graph_number_of_cliques(G), nx.edge_connectivity(G), nx.node_connectivity(G), max(nx.betweenness_centrality(G).values()), statistics.mean(list(nx.pagerank(G).values())) , statistics.mean(list(nx.core_number(G).values())),np.std(A_row)]
            #d = [benchmark, bench_type, qubits, gates, twoqgates, twoqperc, 0, nx.closeness_centrality(G), 0,nx.average_degree_connectivity(G), max(nx.degree(G),key=itemgetter(1))[1], min(nx.degree(G),key=itemgetter(1))[1], nx.average_clustering(G), nx.graph_clique_number(G),nx.graph_number_of_cliques(G), nx.edge_connectivity(G), np.std(A_row)]
            d = [benchmark, bench_type, qubits, gates, twoqgates,twoqperc, 0, 0,statistics.mean(list(nx.average_degree_connectivity(G).values())), max(nx.degree(G),key=itemgetter(1))[1], min(nx.degree(G),key=itemgetter(1))[1],np.std(A_row)]
        data.append(d)

#write benchmark metrics to file
df2 =  pd.DataFrame(data, columns =   ["benchmark","type","qubits","gates", "twoqgates","2-qubit gate percentage","average shortest path length", "diameter", "average degree connectivity", "max degree", "min degree", "SD of A"]) 
#df2 =  pd.DataFrame(data, columns =   ["benchmark","type","qubits","gates", "twoqgates","2-qubit gate percentage", "closeness", "diameter", "average degree connectivity", "max degree", "min degree", "average clustering", "max clique","num of max cliques","edge connectivity", "node connectivity", "central point of dominance", "pagerank","coreness","SD of A"]) 
df2.to_excel(curdir + "/data_ig_single_core.xlsx", index = False) 
#df2.to_excel(curdir + "/data_ig_multi_core.xlsx", index = False) 



