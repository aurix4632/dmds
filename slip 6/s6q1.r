# Define two vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 2)
vector2 <- c(7, 8, 3, 9, 10, 11, 3)

# Create a data frame using the two vectors
df <- data.frame(Column1 = vector1, Column2 = vector2)

# Display the data frame
print("Data Frame:")
print(df)

# Combine the vectors and find duplicate elements
combined_vector <- c(vector1, vector2)
duplicates <- combined_vector[duplicated(combined_vector)]

# Display the duplicate elements
if (length(duplicates) > 0) {
  print("Duplicate Elements:")
  print(unique(duplicates)) # Show unique duplicates
} else {
  print("No duplicate elements found.")
}
