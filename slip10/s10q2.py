import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from apyori import apriori

# Load dataset
store_data = pd.read_csv('iris.csv', header=None)

# Display first few rows to check the data
store_data.head()

# Convert the data into a list of transactions
records = []
# Adjust the range based on the actual number of rows and columns in your dataset
for i in range(0, len(store_data)):  
    records.append([str(store_data.values[i, j]) for j in range(0, store_data.shape[1])])

# Apply Apriori algorithm
association_rules = apriori(records, min_support=0.0045, min_confidence=0.2, min_lift=3, min_length=2)
association_results = list(association_rules)

# Print number of association rules found
print(f"Number of association rules: {len(association_results)}")

# Print the first association rule (if any exist)
if len(association_results) > 0:
    print(association_results[0])

# Print all the rules with details
for item in association_results:
    pair = item[0]
    items = [x for x in pair]
    
    if len(items) >= 2:  # Ensure there are at least two items
        print(f"Rule: {items[0]} -> {items[1]}")
    
    # Print support, confidence, and lift
    print(f"Support: {item[1]:.4f}")
    print(f"Confidence: {item[2][0][2]:.4f}")
    print(f"Lift: {item[2][0][3]:.4f}")
    print("========================================")
