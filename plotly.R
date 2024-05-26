#plotly
#graphs presented in a digital online format
#when you want user to interact with the graph
install.packages("plotly")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("SnowballC")
install.packages("RColorBrewer")
install.packages("wordcloud")
library("ggplot2")
library(plotly)
library("quantmod")
library("wordcloud")
library("SnowballC")
library("RColorBrewer")
View(mtcars)
dim(mtcars)
df<-mtcars
#df$name<-row.names(mtcars)
#df$name
plot_ly(data=mtcars,x=~wt,y=~mpg, type = "scatter", mode = "markers")
plot_ly(data=df,x=~cyl,y=~disp,color=~factor(cyl))
plot_ly(data=df,x=~cyl,y=~disp,color=~factor(cyl),text=~name)
#histogram
attach(iris)
View(iris)
hist<-plot_ly(x=Sepal.Length,type='histogram')
hist
layout(hist,title="iris datset",xaxis=list(title="Sepal.Length"),yaxis=list(title="Count"))
#_________________________________________________
fig<-plot_ly(x=c("beverage","vegetable","dairy"),y=c(20,14,25),type="bar",colour="coral")
fig
library(dplyr)
fig%>%layout(title="Sales by parts",xaxis=list(title="parts"),yaxis=list(title="number_of_sold_product"))
fig<-fig%>%layout(title="2019 vs 2020",xaxis=list(title="parts"),yaxis=list(title="number_of_sales"),barmode="stack")
fig

