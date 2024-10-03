# Define the dimensions of the matrices
rows <- 2
cols <- 2

# Define two matrices
matrix1 <- matrix(c(1, 2, 3, 4), nrow = rows, ncol = cols)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = rows, ncol = cols)

# Calculate the sum of the two matrices
result_matrix <- matrix1 + matrix2

# Display the matrices and their sum
cat("Matrix 1:\n")
print(matrix1)

cat("\nMatrix 2:\n")
print(matrix2)

cat("\nSum of the Matrices:\n")
print(result_matrix)

