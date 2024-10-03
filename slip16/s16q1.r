# Create data
years <- c(2001, 2002, 2003)
exports <- c(26, 32, 35)
imports <- c(35, 40, 50)

# Create a data frame for better handling of the data
data <- data.frame(years, exports, imports)

# Set the barplot parameters
bar_positions <- barplot(as.matrix(data[, -1]), 
                         beside = TRUE, 
                         col = c("blue", "red"),
                         names.arg = data$years,
                         main = "Exports and Imports (2001-2003)",
                         xlab = "Year", 
                         ylab = "Value",
                         legend.text = c("Exports", "Imports"),
                         args.legend = list(x = "topright"))

# Display the bar plot
