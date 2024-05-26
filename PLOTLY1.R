# Load necessary libraries
library(plotly)
library(dplyr)
install.packages('tm')
install.packages("SnowballC")
install.packages("RColorBrewer")
install.packages("wordcloud")
library("wordcloud")
library('tm')
library("SnowballC")
library("RColorBrewer")

# Load Iris dataset
data(iris)

#Scatter Plot with Colors
plot_ly(iris, x = ~Sepal.Length, y = ~Sepal.Width, color = ~Species, 
        type = "scatter", mode = "markers", 
        marker = list(size = 10, opacity = 0.8)) %>%
  layout(title = "Scatter Plot of Sepal Length vs. Sepal Width",
         xaxis = list(title = "Sepal Length"),
         yaxis = list(title = "Sepal Width"))
