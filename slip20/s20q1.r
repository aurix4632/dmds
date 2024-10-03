# Create the vectors
names <- c("Alice", "Bob", "Charlie", "David", "Eva")
roll_numbers <- c(101, 102, 103, 104, 105)
addresses <- c("123 Main St", "456 Park Ave", "789 Oak Dr", "321 Pine St", "654 Maple St")
marks <- c(85, 90, 78, 88, 92)

# Create a data frame from the vectors
students_df <- data.frame(
  Name = names,
  RollNumber = roll_numbers,
  Address = addresses,
  Marks = marks
)

# Display the data frame
cat("Data Frame of Students:\n")
print(students_df)

