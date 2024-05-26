{
  a <- 21
  b <- 43
  print(a + b)
  cat(a+b, a, b)
}

#To do True and False 
v <- TRUE
print(class(v)) # logical...

# To Change the code again to the Redirected window
v <- FALSE
print(class(v)) # logical...

# For integer we need to specify L otherwise it will consider it as Numberic
Bhaumik <- 32L
class(Bhaumik) # integer...

# To tell the class of negative values...
select_line <- -12L
class(select_line) # integer...

# Letters, Numbers, Dots, Underscores can be present in Variable Names
{
  .select.lines2. <- 39
  class(.select.lines2.) # 'numeric'....
  .select.lines2. # 39...
}

# lets see with multiple dots in the score

{
  .select.lines2...32 <- 39
  class(.select.lines2...32) # numeric...
  .select.lines2...32 # 39
}

{
  .select.lines2.32 <- 39
  class(.select.lines2.32) 
  .select.lines2.32
}

#Dots at the starting...
{
  # .32Ashmin <- "Good Shop" == ERROR
  ..32Ashmin <- "Good Shop"
  class(..32Ashmin) # 'character'...
  ..32Ashmin # Good Shop...
}

# Concatination
{
  my <- "Ashmin"
  name <- "Bhaumik"
  #print(my, name)
  cat(my, name, "\n")
  cat(cat(my, name), "University", "\n") 
  cat(my, name, "University")
}

# Lets try Equals to

{
  my <- "Ashmin"
  name = "Bhaumik"
  #print(my, name)
  c <- cat(my, name, "\n")
  c
  cat(c, "University", "\n") #
  cat(my, name, "University")
}

#Print Numeric in Different Pattern
{
  a = 43
  b = 42
  a+b -> c
  c
}

{
  a = 43
  b = 42
  a+b -> c
  c
}

# list of Variables  Name
print(ls())

# To remove a Variable from the list = rm(<variable_name>)
{
  a = 43
  b = 42
  a+b == c
  c
  rm(a)
  a+b == c
  c
}

# 18 - 01 - 2023

{
  TereNam = "Ashmin"
  num1 -> 23L
  num2 = 34
  #cat(class(num1),class(num2), sep = "")
  #cat("Sum of 2 num: ", num1, "\n")
  #sum1 = paste0("Sum of 2 num: ", num1)
  print("Sum of 2 num: ", num1)
  #print(class(sum1))
}
  
# rm(list = ls()) use to remove every elements in the env.
print(ls())

{
  max1 = 2
  max2 = 1
  max1+max2 -> max3
  print(max3)
  rm(max2)
  print(max3)
}

# modulus = %%
# integer_division = %/%

#
{
  print(2 + 3)
  print(2 * 3)
  print(2 / 3) # finds the quotient and describes the quotient in float form...
  print(2 - 3)
  print(2 %% 3) # finds the reminder in the number...
  print(2 %/% 3) # finds the quotient of the number in integer....
  print(2 ^ 3) # it is a power of operator...
}

{
  print(-2 & 1)
}

{
  a <- 32
  b <- 0
  c <- (a<=b && b == 0)
  print(c)
}

# 24/01/2024

{
  nameString = "abc"
  class(nameString) # character
}

{
  hexaClass = charToRaw('hello')
  print(hexaClass)
  class(hexaClass)
}
# To print a particular range...
{
  print(3:10) # prints a particular range....
  # in another mode.....
  c(1, 2, 3, 4, 7, 8, 9, 3, 6)
  print(c(3:10))
}

# some class difference...
{
  typeInteger <- c(1, 2, 3, 4, 5, 6, 7)
  typeNumeric <- c(3:10)
  # class(typeInteger)
  # class(typeNumeric)
  
  # Making the output for different lines....
  typeInteger;typeNumeric # its semi-colon not colon...
  
  typeInteger[-1] # Gives output except the 1st ele..
  typeInteger[-2] # Gives output except the 2nd ele..
  
  typeNumeric[-2:-5] # access all except the range locations..
  
  floatInteger <- typeInteger[c(1.2:2.2)]
  floatInteger
}
# To print a particular range...
{
  rangePrintValues <- 2:-2
  rangePrintValues
}

# Now change the number by giving the particular range..
{
  # here the values will also change according to there datatypes
  rangePrintValues[rangePrintValues < 0] <- -2 
  rangePrintValues
}

{
  rangePrintValues[rangePrintValues < 1]
  rangePrintValues
}
{
  subset(rangePrintValues, rangePrintValues > 1)
}

# Maximum element from a given range of elements...
{
  max(rangePrintValues)
  
   # logical OR gives the... 
   vectorStated = c(3, 5, 3, 7, 10, 12, 15, 20)
   vectorStated[vectorStated > 12 | vectorStated < 5]
   # logical AND....
   vectorStated[vectorStated > 12 & vectorStated < 5]
}

# 'which' returns the index value where y value and y is maximum
{
  which(vectorStated == max(vectorStated))
}

# 25-01-2024

{
  checkClass = 1.0
  class(checkClass)
  typeof(checkClass)
}

# Class tasks...... find max, min, modify at least 3 data,
# greater than 5 and less than 8, 
# greater than 5 and less than 9,
# less than 7 and greater than 3.............. 

{
  dataClass = c(3, 5, 7, 5, 3, 2, 6, 8, 5, 6, 9)
  # max and min data...
  max(dataClass)
  min(dataClass)
  # index of max and min data..
  which(dataClass == max(dataClass)) # Print the index of the max Value...
  which(dataClass == min(dataClass)) # Print the index of the min Value...
  
  # greater than 5 and less than 8
  (dataClass > 5  & dataClass < 8) # print's the list of data in Boolean order
                                   # according to the list or vector...
  
  # greater than 5 and less than 9
  subset(dataClass, dataClass > 5 & dataClass < 9) # [1] 7 6 8 6
  dataClass[dataClass > 5 & dataClass < 9] # [1] 7 6 8 6

  
  # less than 7 and greater than 3
  subset(dataClass, dataClass > 3 & dataClass < 7) # [1] 5 5 6 5 6
  
  # modify at least 3 data..
  dataClass[3] <- 23
  dataClass[5] <- 29
  dataClass[7] <- 30
}

# Changing raw to Character...
{
  Character <- 'B'
  toRaw <- charToRaw(Character)
  print(toRaw)
  toChar <- rawToChar(toRaw)
  print(toChar)
}

# To find how many elements are present...
{
  dataClass = c(3, 5, 7, 5, 3, 2, 6, 8, 5, 6, 9, 9)
  which(dataClass == 6) # returns all the indexes..
  (dataClass == 6) # returns only Boolean Values...
  (dataClass[dataClass > 7]) # [1] 8 9 9
  print(which(dataClass > 7)) # prints the indexes
                              # of the list...
  (dataClass > 7) # returns Boolean values..
}

# NOTE: 'which' -> return the index of the character's according to the value...

# with characters...
{
  dataClassChar = c("Ashmin", "Bhaumik", "Vishnu", "Golden", "Apple")
  which(dataClassChar == "Golden") # returns all the indexes..
  (dataClassChar == "Apple") # returns only Boolean Values...
  print(which(dataClassChar > "Vishnu")) # Can't be called because of 
                                         # string Class...
}

# Its not a good coding practice.......
{
  dataClassChar1 = c("Ashmin", "Bhaumik", "Vishnu", "Golden",1, 10)
  which(dataClassChar1 == 1) # returns all the indexes..
  (dataClassChar1 == "Apple") # returns only boolean Values...
  (dataClassChar1[dataClassChar1 > "Ashmin"]) #[1] "Bhaumik" "Vishnu"  "Golden"
  (dataClassChar1 > 1) # returns Boolean values..
  class(dataClassChar1)
}

# To concatinate list variables together...
{
  list1Var <- 3:10
  list2Var <- c(list1Var, 15, 16, 17)
  list2Var
  list1Double <- 6.6 : 12.6
  (list1Double)
  list1Change <- 6.6 : 12.5
  (list1Change) #  6.6  7.6  8.6  9.6 10.6 11.6
  
  # Sequence function...
  sequenceFunction <- seq(1, 10) # its prints the values in sequence order...
  (sequenceFunction) # [1]  1  2  3  4  5  6  7  8  9 10
  
  # Sequence by 5 units
  sequenceFunction1 <- seq(0, 100, by= 5) # it also prints and Jumps the 
                                  # sequence order by 5 times given by user...
  (sequenceFunction1)
  
  # Length()..
  lengthString = "Ashmin"
  cat("The Length of String is", length(lengthString))
  # in number values...
  lengthString1 <- (c(8:100))
  length(lengthString1)
  lengthString2 = (c(8:100))
  cat(length(lengthString1) == length(lengthString2))
  cat("Comparison: ", (lengthString1+lengthString2)) # Adds two vectors Together.
  
  lengthCharVector = c("Mohan"=12, "Shayam"=32, "Ashmin"=35)
  cat(lengthCharVector["Mohan"], lengthCharVector["Shayam"]) 
  # Outputs..
  # Mohan 
  # 12
  lengthCharVector[1:2]
  (which(lengthCharVector > 12))
  lengthCharVector[c(1:4)] # Mohan Shayam Ashmin   <NA> 
  lengthCharVector[c(1:3)] # Mohan Shayam Ashmin
  seq = c(1:10)
  seq[c(-2, -3)] # 1  4  5  6  7  8  9 10
  
  app = c(TRUE, FALSE, 1L, 2L)
  print(class(app))
  print(app)
  
  
}
{
  # vectors + in condition..
  vector1 = c(3, 8, 4, 5, 0, 11, 15, 14, 1)
  vector2 = c(4, 11, 0, 8, 1, 2)
  sumVector = vector1+vector2;
  print(sumVector)
  
  # Sorting an element....
  SortingElement = c(3, 2, 6, 4, 7, 8, 9, 1)
  sort(SortingElement, decreasing = TRUE)
  sort(SortingElement, decreasing = FALSE)
  sort(SortingElement)
  -sort(-SortingElement) # to Print the elements in sorting order..
  
  # It gives the output in alphabatic order.....
  sortCharElement = c('a', 'c', 'z', 'd', 'A', 'F', 'R', 'T', 'U')
  sort(sortCharElement)
  sort(sortCharElement, decreasing = TRUE)
  sort(sortCharElement, decreasing = FALSE)
  
  # It contains mixed data such as character, numeric, etc.......
  sortMixedElements = c('A', 'P', 'a', 'l', 'G', 'X', 10, 4, 7, 3, 3+4i, TRUE)
  sort(sortMixedElements, decreasing = FALSE)
  sort(sortMixedElements, decreasing = TRUE) # It takes only the 1st Char.
  
  # It contains double, float and Complex values......
  sortMixedElements = c('A', 'P', 'a', 'X', 1, 4, 7, 3+5i, 3+4i, 10+5i, 5+5i, TRUE)
  sort(sortMixedElements, decreasing = FALSE)
  sort(sortMixedElements, decreasing = TRUE)
  paste("Elements:",sortMixedElements)
}

{
  # Repeat Values in Vector in three different ways...
  valRepeat = c(2, 3, 5)
  rep((valRepeat), each = 3)
  rep((valRepeat), times = 3)
  rep((valRepeat), times = c(5, 2, 1))
}

{
  # Converting dataTypes............
  intToNumeric = as.numeric(25L)
  intToNumeric
  class(intToNumeric) # if the value doesn't change according\
  # then also variable name class will change accordingly.
  complexToNumeric = as.numeric(3+4i)
  complexToNumeric
  class(complexToNumeric)
  boolToNumeric = as.numeric(TRUE)
  boolToNumeric
  class(boolToNumeric)
  charToNumeric = as.numeric('A')
  charToNumeric
  class(charToNumeric)
  charsToNumeric = as.numeric("abdfgt")
  charsToNumeric
  class(charsToNumeric)
  floatToInteger = as.integer(23.890)
  floatToInteger
  class(floatToInteger)# integer..
  complexToInteger = as.integer(2+4i)
  complexToInteger
  intToComplex = as.complex(2)
  intToComplex
  mixToComplex = as.complex("12344abc")
  mixToComplex
  complexToChar = as.character(3+2i)
  complexToChar
  number1 = c(10.00)
  class(number1)
  typeof(number1)
  class(typeof(number1))
}

# Taking INPUT from users.....
{
  takeInputName <- readline("Enter the Name: ") # works without prompt also
  takeInputAge <- readline(prompt = "Enter the Age: ")
  integerAge <- as.integer(takeInputAge)
  paste("My name is", takeInputName,"& my age is:", integerAge)
}

{
  takeNum <- readline(promp = "Enter the Number to print: ")
  integerNum <- as.integer(takeNum)
  paste("My number is:",integerNum)
  cat("My number is:",integerNum)
}

# list() in R programing...

listName <- list("Ashmin", "Bhaumik", "Rahul")
class(listName) # class name is changed to list...
cat("List of Names:",listName) # cat can't work with lists but it can with vectors
paste("List of Names:", listName) # it givis the output..
paste(listName)

# vector to list...
# diff between vector and list..
listNameVector.0 <- (c("Ashmin", "Bhaumik", "Rahul"))
listNameVector <- list(c("Ashmin", "Bhaumik", "Rahul"))
listNameVectorNum <- list(c(1, 2, 3, 4))
cat("List of Names:", listNameVector.0) # List of Names: Ashmin Bhaumik Rahul
paste("List of Names:", listNameVector.0) # "List of Names: Ashmin"  "List of Names: Bhaumik"
                                          # [3] "List of Names: Rahul"
paste("List of Names:", listNameVector)
paste("List of Names:", listNameVectorNum)
(listNameVectorNum)

{
  list_data <- list("Shivam", c("Ashmin","Arprit"), 
                    c(1, 2, 3, 4), TRUE, FALSE, 3+4i, 6+7i)
  length(list_data)
  class(list_data)
  list_data[[2]][2] # For searching element...
  list_data[[2]][2] <- "Bhaumik"
  list_data[[2]][2] # changed value...
  rm(list_data[[1]]) # can't use rm function in list...
  list_data[[1]] <- NULL # it removes the data from the list...
  list_data[[1]]
}

# concatination of list by vectors concept....
list1 <- list(1, 2, 3, 4, 5)
list2 <- list("Ashmin", "Bhaumik", "Menthol", "Dynamic", "Island")
add_list <- c(list1, list2)
paste0(list1, "-",list2)
(add_list)
length(add_list)

{
  sno <- c(1:5)
  name1 <- c("veer", "jai", "ajay", "rahul", "rohit", "Vijay")
  CGPA <- c(6:10)
  listTxt1 <- list(sno, name1, CGPA)
  listTxt1 # lenght of the list is 3...
  listTxt1[[2]][[5]]
  # giving the name to the list...
  listNameTxt1 <- list("Roll No.: " = sno, "Name: " = name1, "Marks: " = CGPA)
  listNameTxt1
  listNameTxt1[[3]] # gives withot name..
  listNameTxt1[3]
  class(listTxt1[[1]]) # integer
  typeof(listTxt1[[1]]) # integer
  class(listTxt1)
}

{
  # defining names in another process....
  listName2 <- list(c(1, 2, 3, 4), c("Ashmin", "Bhaumik", "Rahul", "Durga"), list("Math", "Phy", "Chem", "Bio"))
  names(listName2) <- c("Roll_No", "Names", "Subjects")
  listName2
  listName21 <- list(c(1, 2, 3, 4), c("Ashmin", "Bhaumik", "Rahul", "Durga"), c("Math", "Phy", "Chem", "Bio"))
  names(listName21) <- c("Roll_No", "Names", "Subjects")
  listName21
  
  
  listName3 <- list(c(1:10), c(123:132), c("Ashmin", "Bhaumik", "Rahul", "Durga", "anga", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"), 
                    list("Math", "Phy", "Chem", "Bio", "Math", "Phy", "Chem", "Bio", "Chem", "Bio"), 
                    c(4,4,4,4,4,4,4,4,4,4))
  # to give column headings of the list...
  names(listName3) <- c("Registration No.", "Course ID", "Names", "Teacher Name", "Semister")
  listName3
}
# list pattern...

{
  insideCC <- list("c31", "c32")
  insideC <- list(2+3i, "West Eastern", insideCC, c(23:30))
  insideE <- list("True", c(20:30))
  listValues <-list(c(1:10), c("keep", "it", "up", "Accordingly"), insideC, "Rahul Saha", insideE)
  listValues
}

# little complex...
 
{
  insideCC1 <- list("c31", "c32")
  insideC1 <- list(2+3i, "West Eastern", insideCC1, c(23:30))
  insideE1 <- list("True", c(20:30))
  insideA <- c(1:10)
  insideB <- c("keep", "it", "up", "Accordingly")
  insideD <- c(45:55)
  listValues1 <-list(insideA, insideB, insideC1, insideD, insideE1)
  listValues1
}

# user input by scan...
{
  nameInteger <- scan() # used for taking multiple inputs for 
  # doesn't strings...
  nameInteger
  nameCharacter <- scan(what  = "character") # changes to character &
                           # takes input as character...
  nameCharacter
}

list6 <- list(c("Ashm", "Bhau", "mik"), c(100, 200, 300), c("R"), c("Java")
              , c("Python"))
best <- c(list6[[4]],list6[[5]]) # list6[c(4,5)] - same...
best

{
  # Dollers to access list 
  nameList <- list(a=1, b=2, c=3, d=4, e=5, f=6)
  nameList
  nameList$f # Dollars to print some values...
}

# 14-02-2024

{
  list4 <- list(c("aashi", "kimi", "gargi"), c(100, 200, 300), list("R", "Java"
                                                          , "Python", 54, 88))
  c(list4[[1]][2], list4[[3]][c(1,3)]) # to print lists...
}
{
  listDollars <- list(a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10,
                      list('a', 'b')) # return with address...
  listDollars
  listDollars1 <- list(a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10,
                      list(a = 11, b = 12)) # return with names with dollars..
  listDollars1
  # for accessing 12...
  listDollars1[[11]]$b
  
  # adding new elements in the lists.....
  listDollars1[["Gender"]] <- list('M', 'F', 'T', 'M', 'M')
  listDollars1
  
  # for removing the list from the list...
  listDollars1[["Gender"]] = NULL
  listDollars1
}

{
  # Taking input from users as there dataTypes...
  RollNumber <- as.integer(readline(prompt = "Enter the Roll Number: "))
  marks <- as.integer(readline(prompt = "Enter the marks: "))
  values <- as.character(readline(prompt = "Enter any Value: "))
  userList <- c("Roll No.: " = RollNumber, "Marks: " = marks, 
                "Values: " = values)
  userList
  class(marks)
  typeof(marks)
  class(RollNumber) # is of type integer but comes output as "35"...
  
  # Taking another column from the user input...
  Gender <- as.character(readline("Enter Column Name: "))
  userList[[Gender]] <- as.character(readline("Enter Gender: "))
  userList
  
  # To take Multiple Input...
  userList[["Gender"]] = NULL
  userList[[Gender]] <- scan(what = "character")
  
  # Chaanging list to Vector Type...
  ListToVector <- unlist(userList)
  ListToVector
  class(ListToVector) # has changed to Character
}

{
  SumOfNumbers <- list(a=1, b=2, c=3)
  SumOfNumbers(a + b + c) # Gives error...
  # Sum of the Numbers: 
  (SumOfNumbers[[1]] + SumOfNumbers[[2]] + SumOfNumbers[[3]])
  (SumOfNumbers$a + SumOfNumbers$b + SumOfNumbers$c)
  
  # in functions for sum:
  with(SumOfNumbers, a+b+c) # Very important functions...
  within(SumOfNumbers, returnVariable <- a+b+c) # Very important functions...
  
  # list slicing in number list with calling by there domain name...
  SumOfNumbers$a
  
  
 }













