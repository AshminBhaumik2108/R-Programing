array.table <- c(5, 10, 15, 20, 25, 20)
class(array.table) # "numeric"
array.form <- array(array.table) # To make the values in the form of array...
print(array.form) # [1]  5 10 15 20 25 20
class(array.form) # [1] "array"

# To import an array table...
{
  array.table1 <- c(5, 10, 15, 20, 25, 30, 35, 40)
  array.making <- array(array.table1, dim = c(2, 3, 1))
  print(array.making)
  
  # OUTPUT...
  #      [,1] [,2] [,3]
  # [1,]    5   15   25
  # [2,]   10   20   20
  
  array.making1 <- array(array.table1, dim = c(2, 3, 2)) # array value to 2...
  print(array.making1) # gives the totaal number of sets....
  
}

{
  dim.row <- c("r1", "r2", "r3", "r4")
  dim.col <- c("c1", "c2", "c3")
  arr.vector1 <- c(1, 2, 3, 4, 5, 6, 12, 13, 14, 15)
  arr.vector2 <- c(7, 8, 9, 0, 1, 2, 23, 45, 21, 46)
  arr.form <- array(c(arr.vector1, arr.vector2), dim = c(4, 3, 2), 
                    dimnames = list(dim.row, dim.col, c("Ashmin", "Bhaumik")))
  print(arr.form) # c("Ashmin", "Bhaumik") <- Name of the matrix table present..
  
  # array_name[row, col, from_which_array]
  
  arr.form[3, , 2] # 1 21 3...
  arr.form[c(2,3), ,1] # row 2 & 3...
  arr.form[3,2,2]
  arr.form[ ,c(2,3),1]
}

{
  # With Arithematic Operators....
  dim.row1 <- c("r1", "r2", "r3", "r4")
  dim.col1 <- c("c1", "c2", "c3")
  # making tables array...
  arr.vector1.dim1 <- c(1, 2, 3, 4, 5, 6, 12, 13, 14, 15)
  arr.vector2.dim1 <- c(7, 8, 9, 0, 1, 2, 23, 45, 21, 46)
  arr.form1 <- array(c(arr.vector1.dim1, arr.vector2.dim1), dim = c(4, 3, 2), 
                    dimnames = list(dim.row1, dim.col1))
  arr.form1
  # dims..
  dim.row2 <- c("r1", "r2", "r3", "r4")
  dim.col2 <- c("c1", "c2")
  #making tables....
  arr.vector1.dim2 <- c(1, 2, 3, 4, 5, 6, 12, 13, 14, 15)
  arr.vector2.dim2 <- c(7, 8, 9, 0, 1, 2, 23, 45, 21, 46)
  arr.form2 <- array(c(arr.vector1.dim2, arr.vector2.dim2), dim = c(4, 2, 2), 
                    dimnames = list(dim.row2, dim.col2))
  addition.array <- arr.form1 + arr.form2
  print(addition.array)
  
}
 
# QUestions...
{
  dim.row1.q1 <- c("A1r1", "A1r2", "A1r3", "A1r4")
  dim.col1.q1 <- c("A1c1", "A1c2", "A1c3", "A1c4")
  dim.row1.q2 <- c("A2r1", "A2r2", "A2r3", "A2r4")
  dim.col1.q2 <- c("A2c1", "A2c2", "A2c3", "A2c4")
  dim.row1.q3 <- c("A3r1", "A3r2", "A3r3", "A3r4")
  dim.col1.q3 <- c("A3c1", "A3c2", "A3c3", "A3c4")
  dim.row1.q4 <- c("A4r1", "A4r2", "A4r3", "A4r4")
  dim.col1.q4 <- c("A4c1", "A4c2", "A4c3", "A4c4")
  dim.row1.q5 <- c("A5r1", "A5r2", "A5r3", "A5r4")
  dim.col1.q5 <- c("A5c1", "A5c2", "A5c3", "A5c4")
  dim.row1.q <- c(dim.row1.q1, dim.row1.q2, dim.row1.q3, dim.row1.q4, dim.row1.q5)
  dim.col1.q <- c(dim.col1.q1, dim.col1.q2, dim.col1.q3, dim.col1.q4, dim.col1.q5)
  # making tables array...
  arr.vector1.dim3 <- c(1, 2, 3, 4, 5, 6, 12, 13, 14, 15)
  arr.vector2.dim3 <- c(7, 8, 9, 0, 1, 2, 23, 45, 21, 46)
  table.names.dim3 <- c("Ash", "Min", "Bhau", "Mik", "Par")
  arr.form1.q <- array(c(arr.vector1.dim3, arr.vector2.dim3), dim = c(4, 4, 5), 
                     dimnames = list(dim.row1.q, dim.col1.q, table.names.dim3))
  print(arr.form1.q)
}

{
  dim.row1.q1 <- c("A1r1", "A1r2", "A1r3", "A1r4")
  dim.col1.q1 <- c("A1c1", "A1c2", "A1c3", "A1c4")
  dim.row1.q2 <- c("A2r1", "A2r2", "A2r3", "A2r4")
  dim.col1.q2 <- c("A2c1", "A2c2", "A2c3", "A2c4")
  dim.row1.q3 <- c("A3r1", "A3r2", "A3r3", "A3r4")
  dim.col1.q3 <- c("A3c1", "A3c2", "A3c3", "A3c4")
  dim.row1.q4 <- c("A4r1", "A4r2", "A4r3", "A4r4")
  dim.col1.q4 <- c("A4c1", "A4c2", "A4c3", "A4c4")
  dim.row1.q5 <- c("A5r1", "A5r2", "A5r3", "A5r4")
  dim.col1.q5 <- c("A5c1", "A5c2", "A5c3", "A5c4")
  dim.row1.q <- c(dim.row1.q1, dim.row1.q2, dim.row1.q3, dim.row1.q4, dim.row1.q5)
  dim.col1.q <- c(dim.col1.q1, dim.col1.q2, dim.col1.q3, dim.col1.q4, dim.col1.q5)
  # making tables array...
  arr.vector1.dim3 <- c(1, 2, 3, 4, 5, 6, 12, 13, 14, 15)
  arr.vector2.dim3 <- c(7, 8, 9, 0, 1, 2, 23, 45, 21, 46)
  table.names.dim3 <- c("Ash", "Min", "Bhau", "Mik", "Par")
  arr.form1.q <- array(c(arr.vector1.dim3, arr.vector2.dim3), dim = c(4, 4, 5), 
                       dimnames = list(dim.row1.q1, dim.col1.q1, table.names.dim3))
  print(arr.form1.q)
}












