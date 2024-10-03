# Create a list of employees (names)
employee_list <- list("John", "Sara", "Mike", "Anna", "David")

# a. Display names of employees in the list
cat("Names of employees in the list:\n")
print(employee_list)

# b. Add an employee at the end of the list
new_employee <- "Emily"
employee_list <- c(employee_list, new_employee)  # Append new employee
cat("\nAfter adding a new employee:\n")
print(employee_list)

# c. Remove the third element of the list
employee_list <- employee_list[-3]  # Remove the third element
cat("\nAfter removing the third element:\n")
print(employee_list)
