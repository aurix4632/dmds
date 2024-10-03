# Define two factors
factor1 <- factor(c("Apple", "Banana", "Cherry"))
factor2 <- factor(c("Date", "Elderberry", "Fig"))

# Display the original factors
cat("Factor 1:\n")
print(factor1)

cat("\nFactor 2:\n")
print(factor2)

# Concatenate the two factors
concatenated_factors <- c(factor1, factor2)

# Display the concatenated result
cat("\nConcatenated Factors:\n")
print(concatenated_factors)

