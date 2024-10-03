fibonacci <- function(n) {
  fib_seq <- numeric(n)  
  fib_seq[1] <- 0  
  if (n > 1) {
    fib_seq[2] <- 1  
    for (i in 3:n) {
      fib_seq[i] <- fib_seq[i-1] + fib_seq[i-2]  
    }
  }
  return(fib_seq)
}

first_10_fib <- fibonacci(10)

print("First 10 Fibonacci Numbers:")
print(first_10_fib)

