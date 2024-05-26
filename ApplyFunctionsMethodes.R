AF.Matrix <- matrix(c(1:10), nrow = 5, ncol = 3)
AF.Matrix
# Apply functions.....
apply(AF.Matrix, 1, sum) # 1 represents rows wise sum
apply(AF.Matrix, 2, sum) # 2 represents column wise sum

# Multiply and function inside..............
AF.multiplyRow <- apply(AF.Matrix, 1, function(x) x*2)
print(AF.multiplyRow)
AF.multiplyCol <- apply(AF.Matrix, 2, function(x) x*2)
print(AF.multiplyCol)

# Defining Inbuild user Function..........
{
  AF.add <- function(x) {
    return(x+1)
  }
  AF.Matrixaddins <- matrix(c(10:20), nrow = 5, ncol = 3)
  apply(AF.Matrixaddins, 2, AF.add)
}


# Converting to list.....
{
  data <- c("Ashmin", "Bhaumik", "Rahul", "Garami")
  # UpperCase.........
  AF.Result <- lapply(data, toupper)
  print(AF.Result)
  class(AF.Result)
  AF.ResultUnlist <- unlist(lapply(data, toupper))
  print(AF.ResultUnlist)
  class(AF.ResultUnlist)
  
  # Lowercase.........
  dataNum <- c(1:10)
  # UpperCase.........
  AF.Result <- lapply(dataNum, toupper)
  print(AF.Result)
  class(AF.Result)
  AF.ResultUnlist <- unlist(lapply(data, toupper))
  print(AF.ResultUnlist)
  class(AF.ResultUnlist)
}
{
 list1<- list(x=c(1,2,3),y=data.frame(p=1:5,q=6:10))
list1
lapply(list1,sum)
class(list1)

{
  #sapply
  b1<- c(2,4,6,3,4)
result<-sapply(b1,sqrt)
result
class (result)
}

{
b1<- c(2,4,6,3,4)
result<-sapply(b1,mean,simplify=FALSE)
result
class (result)
}

{
  
}











