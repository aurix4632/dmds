# Create a data frame with employee details
employee_data <- data.frame(
  EmployeeID = c(101, 102, 103, 104, 105),
  Name = c("John", "Sara", "Mike", "Anna", "David"),
  Age = c(25, 30, 28, 35, 40),
  Department = c("HR", "Finance", "IT", "Marketing", "Sales"),
  Salary = c(50000, 60000, 55000, 70000, 65000)
)

# Display the data frame
print("Employee Data:")
print(employee_data)

# Display summary of the data frame
print("Summary of Employee Data:")
summary(employee_data)

