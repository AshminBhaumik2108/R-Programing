install.packages("sqldf")
library("sqldf")
#stu <- read.csv(file.choose())
stu <- read.csv("C:/Users/ashmi/Downloads/students.csv")
stu
View(stu)
sqldf("Select * from stu")
sqldf("Select count(*) from stu")
sqldf("Select count() from stu")
View(sqldf("select * from stu where marks>80"))
sqldf("select * from stu where marks<80")
sqldf("select * from stu where name = 'Veer'")
sqldf("select * from stu where marks = 45")
sqldf("Select * from stu order by roll_no desc")
sqldf("Select * from stu order by roll_no desc limit 3")
sqldf("Select * from stu order by roll_no desc limit 2, 1")
sqldf("Select * from stu order by roll_no desc limit 2, 3")
sqldf("Select * from stu group by name having name like 'V%'")
sqldf("Select * from stu group by roll_no having name like 'V%'")
sqldf("Select distinct name from stu")
sqldf("Select sum(marks) from stu")
sqldf("Select avg(marks) from stu")
sqldf("Select sum(marks) from stu group by name having name like 'V%'")
sqldf("Select sum(marks) from stu where name like 'Vi%'")
sqldf("Select name, sum(marks) from stu where name in ('Vikas', 'Ankit') group by name")









