# inserting data frames.....
data_frames= data.frame(Training=c("Strength","stamina","other"),pulse=c(100,150,120),Duration=c(60,30,45))
data_frames # dataFrame in Python...

#data_frames= data.frame(Training=c("Strength","stamina","other"),pulse=c(150,120,70,80,90),Duration=c(45,50)
##this will give the error, as the numbers of items should be same

str(data_frames)
names(data_frames)#it will give the names of data frames
data_frames[1] #1st column will be displayed
data_frames[1:2]
data_frames[,-2]
data_frames[-2]
c=data_frames[["Training"]]
c
c1=data_frames["Training"]
c1
c3=data_frames $"Training" 
class(c)
class(c1)
class(c3)

#--------------------------------------------------
#adding rows
new_row<- rbind(data_frames,c("weight",110,120))
new_row

new_row<- rbind(data_frames,c("weight",110,120,"w2")) #error
new_row
new_row<- rbind(data_frames,c("weight",120)) #error

#adding column
new_col<- cbind(data_frames,Steps=c(1000,6000,2000))
new_col

new_col<- cbind(data_frames,Steps=c(1000,6000,2000,4000))
new_col

#--------------------------------------------------
#create a table for students. Details are name,age,state,qualification, course and cgpa.
#10 entries

students= data.frame(Name=c("Aditya","Aman","Kartik","Priya","Raj","shiv","Atul","Mahi","vaibhav","aastha"),age=c(20,21,22,23,24,25,26,19,27,28),
                     state=c("punjab","bihar","gujarat","mp","up","rajasthan","haryana","jharkhand","west bengal","karnatka"),
                     qualification=c(10,11,12,"interm","matric",4,6,7,8,"graduate"),
                     course=c("btech","cse","bba","mba","pharmacy","agri","bcom","mcom","llb","hot.mang."),
                     cgpa=c(6,7,8,9,5.4,6,8,9,7.4,9.2))
students
#display the name of students whose cgpa is greater than 8
hcgpa=students$Name[students$cgpa>8]
hcgpa

#display the name of students whose cgpa is  greater than 4 and less than 8

hcgpa2=students$Name[students$cgpa>4 & students$cgpa<8]
hcgpa2

B<-subset(students,cgpa>4 & cgpa<8,1)
B

#display all the details of student studying btech except their age
alldetails=students$Name,students$state,students$qualification,students$cgpa,[students$course="btech"]
details<-subset(students,course=="btech",select=-age)
details
#display the name , course and cgpa of students whose cgpa is below 2 and more than 5.
details2<-subset(students, cgpa<2 | cgpa>9, select= c(Name,course,cgpa))     
details2

# 29-2-2024....
library(help = "datasets")
trees
str(trees)
names(trees)
head(trees)
head(trees, n=3)
head(trees, n=10)
head(trees) # by default 6 observation....
tail(trees) # by default 6 observation....

# describing the specific roes and columns..
trees[10:20,1:2] # 10:20 describes roe index, 1:2 describes column index...
trees[10:20, c(-1, -2)]
class(trees[10:20, 3])
dim(trees) # finding the dimensions....

# finding the conditional formats......
subset.trees <- subset(trees, (Height>80 & Volume>19), select = -Volume)
subset.trees 
subset.trees1 <- trees[trees$Height>80, 2]
subset.trees1

# new Data frame builds......

state.data <- c("Punjab", "Tripura", "Chennai", "Maharashtra", "Dwarka", "UP")
state.rank <- c(100, 20, 30, 40, 50, 60)
top.states <- data.frame(city = state.data, rank = state.rank)
top.states
class(top.states)
typeof(top.states)

# data Frame to join together.....

new.dataframe <- data.frame(name=c("ABC", "XYZ"), age=c(20,25))
new.dataframe
new1.dataframe <- data.frame(name=c("ABC1", "XYZ1"), age=c(26,27))
new1.dataframe
join.dataframe <- cbind(new.dataframe, new1.dataframe)
join.dataframe

active.csvfile1 <- read.csv("C://Users//ashmi//Downloads//diabetes.csv")
active.csvfile1
class(active.csvfile1)
typeof(active.csvfile1)
dim(active.csvfile1)

# practice csv file download...

# To apply head and tail function in all the columns
# To find min, max, mean, median, Standard deviations, in all columns
# To display all the data except texture whose id is greater than 20
# To display the smoothness and compactness where texture is less than 10
# To display the rows from 80 to 100
# To display all the odd columns 
# To display the elements 98 row and 10th column
# Tp display the element of 10th Row and 10th column

# Document.......
active.csvfile <- read.csv("C://Users//ashmi//Downloads//Prostate_cancer.csv")
active.csvfile
dim(active.csvfile)

# 1. Head and Tail function
head(active.csvfile)
tail(active.csvfile)

# 2. min, max from all columns
column.names <- active.csvfile[min(active.csvfile$radius), ]
column.names
  
# 3. display except texture and id > 20....
display.list <- subset(active.csvfile, (id>=20), select = -texture)
display.list

# 4. display smoothness and compactness where texture is less than 10.....
display.smooth.compact <- subset(active.csvfile, 
                      texture<10, select = c(smoothness, compactness))
display.smooth.compact

# 5. display rows from 80 to 100
active.csvfile[80:100,]

# 6. display Odd columns...
display.odd <- active.csvfile[, c(1, 3, 5, 7, 9)]
display.odd

# 7. 98th row and 10th column
display.particular <- active.csvfile[98, 10]
display.particular

# 8. 10th row and 10 column
display.particular1 <- active.csvfile[10, 10]
display.particular1
