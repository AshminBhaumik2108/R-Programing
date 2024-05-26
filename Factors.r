# Factors - these are the obj that is used to catageise the data, used to store 
#           both integer and characters and are useful in the 
#           columns that has a limited number of unique values.....

# create a charvector with name a and values will be T, F, F, T..
vector1 <- c("true", "false", "false", "false", "NEW")
vector1
class(vector1)
factor1 <- factor(vector1)
factor1 # returns all the unique values....
length(factor1) # 4 since length
length(levels(factor1))# unique elements are levels so, its len is 2

# adding elements on factor.....
factor2 <- factor(vector1)
factor2
factor2[7] <- "true" # only level category values can only be added...
# if we want to put any new values than we have to first put it in vector1 first
factor2

factor1[c(2, 3)] # include 2nd and 3rd element....
factor1[c(-4, -6)] # exclude 4th and 6th element....

vector.dir <- c("north", "east", "south", "west", "north", "west")
vector.dir

# adding levels
levels(factor1) <- c(levels(factor1), "TRUE", "FALSE")

# Making a dataBase.....
Height.data <- c(1.2, 2.5, 3.4, 6.8, 6.09, 4.7, 7.6)
Weight.data <- c(12, 34, 45, 32, 56, 19, 57)
Gender.data <- c('M', 'F', 'M', 'M', 'F', 'F', 'M') # Levels: F M (By default)..
factor.dataFrame <- data.frame(Height = Height.data, Weight = Weight.data, 
                               Gender = Gender.data)
print(factor.dataFrame)

# Gender.data in factor
Factor.Gender.data <- factor(c(factor.dataFrame$Gender, factor.dataFrame$Weight))
print(Factor.Gender.data)

# To change the orders of the levels(by default it is in alphabetical order)
orderChange.factor <- factor(Gender.data, levels=c('M', 'F'))
print(orderChange.factor) # Levels: M F

# To change the order of the names in name.data.....
Name.data <- c("Ashmin", "Ariyan", "Bhaumik", "Zaika", "Yusuf", "SkinWalker")
factor.Name.data <- factor(Name.data)
print(factor.Name.data)
#            Levels: Ariyan Ashmin Bhaumik SkinWalker Yusuf Zaika

# To find the 3rd element....
print(factor.Name.data[3])
# To find 5th and 6th element....
print(c(factor.Name.data[c(5, 6)]))
# To except all values except 5th element....
print(factor.Name.data[-5])
# add 3 more levels.....
levels(factor.Name.data) <- c(levels(factor.Name.data), "TRUE", "FALSE")
# modify Elements....
factor.Name.data[3] <- "Ashmin" 
print(factor.Name.data)
# Change order of levels......
ChangeLevels.factor.Name.data <- factor(factor.Name.data, 
                                      levels = c("Ashmin", "Ariyan", 
                                      "Bhaumik", "Zaika", "Yusuf", "SkinWalker"))
# To access elements using logical values......
print(factor.Name.data[c(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE)])
# TO PRINT IN BOOLEAN VALUES.....
print(c(factor.Name.data == (factor.Name.data[c(2, 4)]))



#..................................................................................
#      change data levels in our user defined sorting.......
factor.patternChange <- factor(factor.Name.data, 
                               levels = c("Ashmin", "Zaika", "Ariyan", "Bhaumik"
                                          , "Yusuf", "SkinWalker"))
print(factor.patternChange) # Levels: Ashmin Zaika Ariyan Bhaumik Yusuf SkinWalker

# Lable is a vector of labls for the resulting factor levels
# Create a levels.....
factor.label <- gl(2, 5, labels = c('R', "DBMS", "PYTHON"))
# 2 - Number of cols, 5 - No. of Repetitions......
print(factor.label)


























