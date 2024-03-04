import matplotlib.pyplot as plt
import sklearn
from sklearn.cluster import KMeans, DBSCAN
from sklearn.metrics import silhouette_score
from sklearn.preprocessing import StandardScaler
import pandas as pd
from pandas.plotting import parallel_coordinates
import os
from sklearn.decomposition import PCA
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns
import matplotlib as mtp
from sklearn import metrics
import plotly.express  as px
import math
import gmpy2
from gmpy2 import mpz, mpfr
import sys

#Cluster circuts based on structural parameters
def cluster_quantum_circuits(dataframe, n_clusters, cluster_number):
      scaled_features_graph_char = scaler.fit_transform(dataframe[['averageShortestPathLength','averageDegreeConnectivity','stdDevofAdjMatrix','LengthOfLongestRepeatingSubcircuit', 'NumberOfCriticalPathsWithMaxTwoQubitsGates', 'NumberOfRepetitionsOfLongestRepeatingSubcircuit', 'PathLengthMean', 'percentageOfGatesInCriticalPath','IdlingScore','circuitDensity']])
      kmeans = KMeans(n_clusters=n_clusters, random_state=10).fit(scaled_features_graph_char)
      labels_graph_char = kmeans.labels_
      dataframe["cluster_final"] = labels_graph_char

      #evaluate clustering quality
      print("Silhouette Coefficient: %0.3f"
            % metrics.silhouette_score(scaled_features_graph_char, labels_graph_char))


      fig = px.parallel_coordinates(dataframe[['averageShortestPathLength','averageDegreeConnectivity','stdDevofAdjMatrix','LengthOfLongestRepeatingSubcircuit', 'NumberOfCriticalPathsWithMaxTwoQubitsGates', 'NumberOfRepetitionsOfLongestRepeatingSubcircuit', 'PathLengthMean', 'percentageOfGatesInCriticalPath','IdlingScore','circuitDensity','cluster_final']], color="cluster_final", labels={
      "averageShortestPathLength": "Average shortest path length", "averageDegreeConnectivity": "Average degree connectivity","stdDevofAdjMatrix": "Std. dev. of adj. matrix", "LengthOfLongestRepeatingSubcircuit":"Length of longest repeating subcircuit","NumberOfCriticalPathsWithMaxTwoQubitsGates":"Number of critical paths with max 2q gates","NumberOfRepetitionsOfLongestRepeatingSubcircuit":"Number of repetitions of longest repeating subcircuit","PathLengthMean":"Path-length mean","percentageOfGatesInCriticalPath":"% of gates in critical path", 'IdlingScore':'Idling score','circuitDensity':'Circuit density'},
                              color_continuous_scale=('#DE3163','#FFBF00','#6495ED','#8E44AD','#138D75','#616A6B','#C0392B','#17202A'),
                              color_continuous_midpoint=3, title = "Clustering based on graph characterization: group 0")
      fig.show()

      dataframe.to_excel(curdir + "/cluster" + cluster_number + "_sc.xlsx", index=False) 




curdir = os.path.dirname(__file__)

#retrieve data for single- or multi-core computation
data = pd.read_excel(curdir  + "/Interaction_and_Dep_Graphs/all_data_sc.xlsx")


#fix data columns with too high values
for i, d in enumerate(data['NumberOfCriticalPaths']):
    d = mpz(d)
    if d > sys.maxsize:
        data['NumberOfCriticalPaths'][i] = sys.maxsize

for i, d in enumerate(data['NumberOfCriticalPathsWithMaxTwoQubitsGates']):
    d = mpz(d)
    if d > sys.maxsize:
        data['NumberOfCriticalPathsWithMaxTwoQubitsGates'][i] = sys.maxsize


#Pearson correlation matrix for feature selection
plt.figure(figsize=(12,10),dpi=80)
plt.rcParams.update({'font.size': 10})
cor = data.iloc[:,2:].corr()
sns.heatmap(cor, annot=True, cmap=plt.cm.Reds) #TODO: change color scheme for the paper
plt.show() 

#normalizing data
scaler = StandardScaler()
scaled_features = scaler.fit_transform(data.iloc[:, 2:])

# KMeans 2-level clustering and plotting: 1) based on size-related circuit parameters and 2) based on structure of the circuits:

###Level 1

scaled_features_alg_info = scaler.fit_transform(data[['qubits', 'gates','2-qubit gate percentage','Latency']])
kmeans = KMeans(n_clusters=5, random_state=10).fit(scaled_features_alg_info)
labels_alg_info = kmeans.labels_
data["cluster"] = labels_alg_info

#evaluate clustering quality
print("Silhouette Coefficient: %0.3f"
      % metrics.silhouette_score(scaled_features_alg_info, labels_alg_info))

fig = px.parallel_coordinates(data[["qubits","gates","2-qubit gate percentage","Latency","cluster"]], color="cluster", labels={"qubits": "Num. of qubits",
                "gates": "Num. of gates", "2-qubit gate percentage": "2q gate percentage","Latency":"Latency"},
                             color_continuous_scale=('#DE3163','#FFBF00','#6495ED','#8E44AD','#138D75','#616A6B','#C0392B','#17202A'),
                             color_continuous_midpoint=3, title = "Clustering based on algorithm size")
fig.show()

data_group_0 = []
data_group_1 = []
data_group_2 = []
data_group_3 = []
data_group_4 = []


for row in data.itertuples():
      if row.cluster == 0:
            data_group_0.append(row)

      elif row.cluster == 1:
            data_group_1.append(row)

      elif row.cluster == 2:
            data_group_2.append(row)

      elif row.cluster == 3:
            data_group_3.append(row)
      
      elif row.cluster == 4:
            data_group_4.append(row)

data_group_0 = pd.DataFrame(data_group_0)
data_group_1 = pd.DataFrame(data_group_1)
data_group_2 = pd.DataFrame(data_group_2)
data_group_3 = pd.DataFrame(data_group_3)
data_group_4 = pd.DataFrame(data_group_4)


###Level 2

#cluster group 0
cluster_quantum_circuits(data_group_0,4,0)

#cluster group 1
cluster_quantum_circuits(data_group_1, 6, 1)

#cluster group 2
cluster_quantum_circuits(data_group_2,7,2)

#cluster group 3
cluster_quantum_circuits(data_group_3,2,3)

#cluster group 4
cluster_quantum_circuits(data_group_4,6,4)

