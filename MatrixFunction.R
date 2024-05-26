# Syntax of writing matrix....
# matrix(<data>, nrow = <value>, ncol = <value>, byrow, dim_name)...
# byrow <- Gives the value column wise (meanse it will complete the column first)...

# Without byrow...
vector.matrix1 <- matrix(c(11, 13, 15, 12, 14, 16), nrow = 2, ncol = 3, byrow = FALSE)
print(vector.matrix1)
# OUTPUT...
# [,1] [,2] [,3]
# [1,]   11   15   14
# [2,]   13   12   16

vector.matrix2 <- matrix(c(11, 13, 15, 12, 14, 16), nrow = 2, ncol = 3, byrow = TRUE)
print(vector.matrix2)
# output...
#      [,1] [,2] [,3]
# [1,]   11   13   15
# [2,]   12   14   16

vector.matrix3 <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
print(vector.matrix3)
# OUTPUT...
#      [,1] [,2] [,3]
# [1,]    5    6    7
# [2,]    8    9   10
# [3,]   11   12   13
# [4,]   14   15   16


vector.matrix3 <- matrix(c(5:19), nrow = 4, ncol = 3, byrow = TRUE)
print(vector.matrix3)
# OUTPUT....
#      [,1] [,2] [,3]
# [1,]    5    6    7
# [2,]    8    9   10
# [3,]   11   12   13
# [4,]   14   15   16

vector.matrix3.rowChange <- matrix(c(5:19), nrow = 5, ncol = 3, byrow = TRUE)
print(vector.matrix3.rowChange)
#      [,1] [,2] [,3]
# [1,]    5    6    7
# [2,]    8    9   10
# [3,]   11   12   13
# [4,]   14   15   16
# [5,]   17   18   19

vector.matrix3.lessElements <- matrix(c(5:9), nrow = 5, ncol = 3, byrow = TRUE
                              dimnames = list(row_Name, col_Name))
print(vector.matrix3.lessElements)
# OUTPUT...
#       [,1] [,2] [,3]
# [1,]    5    6    7
# [2,]    8    9    5
# [3,]    6    7    8
# [4,]    9    5    6
# [5,]    7    8    9

# Accessing elements from the matrix...
vector.matrix3.lessElements[1, 3] # OUTPUT: 7

# Naming in rows and Columns....
{
  # Names of the rows.....
  row_Name <- c("1", "2", "3")
  col_Name <- c("Name", "Class", "Roll_No")
  Name <- c("Ashmin", "Bhaumik", "Rahul")
  nameClass <- c(12, 11, 10)
  RollNo <- c(123, 145, 178)
  vector.matrix3.lessElements <- matrix(c(Name, nameClass, RollNo), 
                                 nrow = 3, ncol = 3, byrow = FALSE, 
                                 dimnames = list(row_Name, col_Name))
  print(vector.matrix3.lessElements)
}

# Matrix changes all the Characters of type character...
# VERY VERY IMPORTANT NOTATION....
{
  # Names of the rows.....
  row_Name <- c("1", "2", "3")
  col_Name <- c("Name", "Class", "Roll_No")
  Name <- c("Ashmin", "Bhaumik", "Rahul")
  nameClass <- c(12, 11, 10)
  nameClass
  class(nameClass)
  RollNo <- c(123, 145, 178)
  
  vector.matrix3.lessElements <- matrix(c(Name, c(12, 11, 10), c(123, 145, 178)), 
                                        nrow = 3, ncol = 3, byrow = FALSE, 
                                        dimnames = list(row_Name, col_Name))
  print(vector.matrix3.lessElements)
}

# 21-2-23.................................................................

{
  attributes(vector.matrix3.lessElements)
  
  # without names...
  vector.matrix123 <- matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE)
  print(vector.matrix123)
  attributes(vector.matrix123) # its returns the <row>, <column>...
  # Output...
  # $dim
  # [1] 4 3
  
  # to make matrix to null or vector...
  dim(<matrix_table_name>) <- NULL;
  
  # binding some elements in matrix...
  rbind(vector.matrix3.lessElements, c(2, 90, 8))
  
}

{
  dimnames.gap.row <- list("ER1", "ER2", "ER3", "ER4", "ER5")
  dimnames.gap.col <- list("EC1", "EC2", "EC3")
  matrix.gap.element <- matrix(seq(1000,15000, by = 1000), nrow = 5, ncol = 3, 
                               byrow = TRUE, dimnames = list(dimnames.gap.row, 
                                                             dimnames.gap.col))
  print(matrix.gap.element)
}

{
  dimnames.gap.row1 <- list("ER1", "ER2", "ER3", "ER4")
  dimnames.gap.col1 <- list("EC1", "EC2")
  matrix.gap.element1 <- matrix(seq(1000,15000, by = 1000), nrow = 4, ncol = 2, 
                               byrow = TRUE, dimnames <- list(dimnames.gap.row1, 
                                                       dimnames.gap.col1))
  matrix.gap.element1 
  vector.matrix1234 <- matrix(seq(100, 1500, by = 50), nrow = 5, ncol = 3, byrow = TRUE)
  vector.matrix1234
  new.sumNums1 <- matrix.gap.element1+vector.matrix1234
  new.sumNums1 # Error in matrix.gap.element1 + vector.matrix1234 : 
               # non-conformable arrays....
}

{
  # Transpose...
  t(vector.matrix1234)
  # OUTPUT...
  # [,1] [,2] [,3] [,4] [,5]
  # [1,]  100  250  400  550  700
  # [2,]  150  300  450  600  750
  # [3,]  200  350  500  650  800
  
  # Multiplication.....
  print(t(vector.matrix1234))
  multiplication.vector.matrix1234 <- vector.matrix1234 %*% t(vector.matrix1234)
  multiplication.vector.matrix1234
  
}

{
  matrix.1997 <- matrix(c(1:9), nrow = 3, ncol = 3)
  print(matrix.1997 %*% t(matrix.1997))
  print(matrix.1997 * t(matrix.1997))
}









