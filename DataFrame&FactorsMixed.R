# Create a dataFrame keep the information with height weight and gender....
#           Total number of data items is 7

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



































