import pandas as pd
import matplotlib.pyplot as plt  # Importing matplotlib to handle the plots
import scipy.cluster.hierarchy as shc
from sklearn.cluster import AgglomerativeClustering

# Load dataset
dataset = pd.read_csv('Mall_Customers.csv')

# Extract relevant features
x = dataset.iloc[:, [3, 4]].values

# Plot the dendrogram
plt.figure(figsize=(10, 7))  # Set the figure size for better visibility
dendro = shc.dendrogram(shc.linkage(x, method="ward"))
plt.title("Dendrogram Plot")
plt.ylabel("Euclidean Distances")
plt.xlabel("Customers")
plt.show()

# Apply Agglomerative Clustering
hc = AgglomerativeClustering(n_clusters=5, affinity='euclidean', linkage='ward')
y_pred = hc.fit_predict(x)

# Visualizing the clusters
plt.figure(figsize=(10, 7))

plt.scatter(x[y_pred == 0, 0], x[y_pred == 0, 1], s = 100, c = 'blue', label = 'Cluster 1')
plt.scatter(x[y_pred == 1, 0], x[y_pred == 1, 1], s = 100, c = 'green', label = 'Cluster 2')
plt.scatter(x[y_pred == 2, 0], x[y_pred == 2, 1], s = 100, c = 'red', label = 'Cluster 3')
plt.scatter(x[y_pred == 3, 0], x[y_pred == 3, 1], s = 100, c = 'cyan', label = 'Cluster 4')
plt.scatter(x[y_pred == 4, 0], x[y_pred == 4, 1], s = 100, c = 'magenta', label = 'Cluster 5')

plt.title('Clusters of customers')
plt.xlabel('Annual Income (k$)')
plt.ylabel('Spending Score (1-100)')
plt.legend()
plt.show()
