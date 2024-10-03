list1 <- list("x", "y", "z")
list2 <- list("X", "Y", "Z", "x", "y", "z")

print("Original list")
print(list1)
print(list2)

print("All elements of list2 that are not in list1 : ")
setdiff(list2,list1)
