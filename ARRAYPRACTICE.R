row <- c("r1", "r2")
col <- c("c1", "c2", "c3")
newMatrix <- array(1:24, dim = c(4,4, 1)
             )
newMatrix
newMatrix.matrix <- matrix(newMatrix, nrow = 4, ncol = 4)
newMatrix.matrix
newMatrix.matrix[2, ]
colMeans(newMatrix.matrix)

# Create three arrays
array1 <- array(1:9, dim = c(3, 3))
array2 <- array(10:18, dim = c(3, 3))
array3 <- array(19:27, dim = c(3, 3))

# Combine the three arrays into one
combined_array <- array(c(array1, array2, array3), dim = c(3, 3, 3))

# Print the combined array
print(combined_array)

#To combine the arrays such that the 
#first row of each array is combined 
#together
# Create three arrays
array1 <- array(1:9, dim = c(3, 3))
array2 <- array(10:18, dim = c(3, 3))
array3 <- array(19:27, dim = c(3, 3))

# Combine the first row of each array
combined_array <- rbind(array1[1, ], array2[1, ], array3[1, ])

# Print the combined array
print(combined_array)

#To find the third highest elemnt...

data = array(c(11, 18, 14, 15, 19, 12, 16, 17, 13))
data = sort(data)
data[3]



# Example vector
numbers <- c(1, 2, 3, 4, 2, 3, 5, 2, 1, 2)

# Value to count
value <- 2

# Count the occurrences of the value
count <- sum(numbers == value)

# Print the count
print(count)


# Example dataset
data <- data.frame(
  ID = c(1, 2, 3, 4, NA),
  Name = c("John", "Alice", "Bob", NA, "Eve"),
  Age = c(25, NA, 30, 35, 40)
)

# Check for null values in the dataset
has_null <- any(is.na(data))

# Print the result
if (has_null) {
  print("The dataset contains null values.")
} else {
  print("The dataset does not contain null values.")
}



# Example dataset
data <- data.frame(
  ID = c(1, 2, 3, NA, 5),
  Name = c("John", "Alice", NA, "Bob", "Eve"),
  Age = c(25, NA, 30, 35, 40)
)

# Identify NA values in the dataset
na_values <- unlist(data[is.na(data)])

# Print the NA values
print(na_values)
print(na.omit(data))








