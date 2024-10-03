import pandas as pd
from sklearn import tree
from sklearn.preprocessing import LabelEncoder

# Load the dataset
data = {
    "Experience": [10, 12, 5, 8, 7, 15],
    "Age": [35, 40, 25, 50, 28, 45],
    "Rank": [7, 9, 6, 8, 5, 9],
    "Nationality": ["American", "British", "American", "British", "American", "American"],
    "Go": ["Yes", "Yes", "No", "Yes", "No", "Yes"]
}

df = pd.DataFrame(data)

# Convert categorical 'Nationality' and 'Go' columns into numeric values using LabelEncoder
le_nationality = LabelEncoder()
le_go = LabelEncoder()

df['Nationality'] = le_nationality.fit_transform(df['Nationality'])
df['Go'] = le_go.fit_transform(df['Go'])

# Define feature columns (Experience, Age, Rank, Nationality)
X = df[['Experience', 'Age', 'Rank', 'Nationality']]
# Define target column (Go)
y = df['Go']

# Train the Decision Tree Classifier
clf = tree.DecisionTreeClassifier()
clf = clf.fit(X, y)

# Predict the class label for a new comedian's show
# Example: 40 years old American comedian, with 10 years of experience, and a comedy ranking of 7
new_comedian = [[10, 40, 7, le_nationality.transform(['American'])[0]]]

prediction = clf.predict(new_comedian)

# Convert the prediction back to the original class label (Yes/No)
result = le_go.inverse_transform(prediction)

print(f"The class label prediction for the comedian's show is: {result[0]}")
