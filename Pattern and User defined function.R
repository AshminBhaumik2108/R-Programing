{
  rows.pyramid = 5
  for(i in 1:rows.pyramid) {
    for(j in 1:i) {
      cat('*'," ")
    }
    cat('\n')
  }
}

{
  rows.pyramid = 5
  for(i in 1:rows.pyramid) {
    for(j in 1:rows.pyramid) {
      cat('*'," ")
    }
    cat('\n')
  }
}

# User defined function using function Keyword...
{
  SumOfTwoNumbers <- function(num1, num2) {
    cat("The Sum of two numbers is:",num1+num2)
  }
  
  # Function Call....
  SumOfTwoNumbers(2, 3)
}

# By using Return Statements....
{
  SumOfTwoNumbers <- function(num1, num2) {
    return(cat("The Sum of two numbers: ",num1+num2)) 
  }
  
  # Function Call....
  cat(SumOfTwoNumbers(2, 3))
}

{
  MulOfTwoNum <- function() {
    num1 = as.numeric(readline("Enter num1: "))
    num2 = as.numeric(readline("Enter num2: "))
    num3 = as.numeric(readline("Enter num3: "))
    return(cat("The Sum of two numbers: ",num1*num2+num3)) 
  }
  
  # Function Call....
  cat(MulOfTwoNum())
}


# Calling the values by there names...........
{
  SumOfTwoNumbers <- function(num1, num2) {
    return(cat("The Sum of two numbers: ",num1+num2)) 
  }
  
  # Function Call....
  cat(SumOfTwoNumbers(num2 = 2, num1 = 3))
}

{
  MulOf3Num <- function() {
    num1 = as.numeric(readline("Enter num1: "))
    num2 = as.numeric(readline("Enter num2: "))
    num3 = as.numeric(readline("Enter num3: "))
    return(cat("The Mul of 3 numbers: ",num1*num2*num3)) 
  }
  
  # Function Call....
  cat(MulOf3Num())
}

{
  OfTwoNumbers <- function(num1 = 2, num2 = 3) {
    return(cat("The Sum of two numbers: ",num1+num2)) 
  }
  
  # Function Call....
  cat(OfTwoNumbers())
}

# Pyramid by function.....
{
  # Defining the function......
  pyramid.square <- function(x, y, sym) {
    for(i in 1:x) {
      for(j in 1:y) {
        cat(sym," ")
      }
      cat('\n')
    }
  }
  
  # Call function.....
  userInputx = as.numeric(readline("Enter the num x: "))
  userInputy = as.numeric(readline("Enter the num y: "))
  sym = as.character(readline("Enter the symbol: "))
  pyramid.square(userInputx, userInputy, sym)
}

{
  printSquarePattern <- function(n,x) {
    rows.pyramid = x
    for(i in 1:n) {
      for(j in 1:n) {
        cat(x," ")
      }
      cat('\n')
    }
  }
  userInput = as.numeric(readline("Enter the num: "))
  sym = as.character(readline("Enter the symbol: "))
  pyramid.square(userInput, sym)
}







