# Function to calculate Fibonacci numbers
fibonacci_numbers <- function(n) {
  # Initialize the first two Fibonacci numbers
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  
  # Calculate Fibonacci numbers
  for (i in 3:n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
  }
  
  return(fib)
}

# Get the first 20 Fibonacci numbers
first_20_fibonacci <- fibonacci_numbers(20)

# Display the result
cat("The first 20 Fibonacci numbers are:\n")
print(first_20_fibonacci)


