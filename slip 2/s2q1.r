# Define a function to calculate and print the multiplication table
multiplication_table <- function(n) {
  cat("Multiplication Table for", n, ":\n")
  for (i in 1:10) {
    result <- n * i
    cat(n, "x", i, "=", result, "\n")
  }
}

# Example usage
# Change the number here to generate a different multiplication table
number <- 5
multiplication_table(number)

