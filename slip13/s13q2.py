import pandas as pd
from sklearn import linear_model

# Load the dataset
df = pd.read_csv("car.csv")

# Define the independent variables (Weight and Volume) and the dependent variable (CO2)
X = df[['Weight', 'Volume']]
y = df['CO2']

# Create a linear regression model and fit the data
regr = linear_model.LinearRegression()
regr.fit(X, y)

# Predict the CO2 emission of a car where the weight is 2300kg, and the volume is 1300cm3
predicted_CO2 = regr.predict([[2300, 1300]])

# Print the predicted CO2 value
print(predicted_CO2)

# To display the number of columns and names of the columns
print(df.columns)
