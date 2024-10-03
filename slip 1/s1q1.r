# Define two integer vectors of length at least 4
vector1 <- c(10, 20, 30, 40)
vector2 <- c(5, 4, 3, 2)

# Perform addition
addition_result <- vector1 + vector2
cat("Addition Result:\n")
print(addition_result)

# Perform multiplication
multiplication_result <- vector1 * vector2
cat("Multiplication Result:\n")
print(multiplication_result)

# Perform division
# Ensure vector2 does not contain zeros to avoid division by zero
if (all(vector2 != 0)) {
  division_result <- vector1 / vector2
  cat("Division Result:\n")
  print(division_result)
} else {
  cat("Division cannot be performed due to zero in vector2.\n")
}
