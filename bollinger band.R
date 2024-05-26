install.packages("plotly")
install.packages("quantmod")
install.packages("ggplot")


#bollinger band were developed by technical trader john Bollinger
#functions: download data charting
install.packages("quantmod")
library("quantmod")
getSymbols("AAPL")
head(AAPL, n=3)
View(AAPL)
#basechart i.e line chart
chartSeries(AAPL,type="line",theme = chartTheme('white'))
#BollingerBand will create the area that surrounds the trend
addBBands(n=20,sd=2)



#n represents number of moving average and sd represents the standard deviation
#it will draw some boundaries within the fluctuation


#text mining 
install.packages('tm')
install.packages("SnowballC")
install.packages("RColorBrewer")
install.packages("wordcloud")
library("wordcloud")
library('tm')
library("SnowballC")
library("RColorBrewer")
txt<-read.csv(file.choose(),header=TRUE)
class(txt)
corp<-iconv(txt$sentence)
class(corp)
View(corp)
#list of documents
corp<-Corpus(VectorSource(corp))
View(corp)

class(corp)
inspect(corp[1:5])
#start preproccessing
#text cleaning(convert to lowercase)
corp<-tm_map(corp,content_transformer(tolower))
inspect(corp[1:5])
#remove numbers
corp<-tm_map(corp,removeNumbers)
inspect(corp[1:5])
#remove stop words(common english words)
stopwords("english")
corp<-tm_map(corp,removeWords,stopwords("english"))
inspect(corp[1:5])
#remove punctutations
corp<-tm_map(corp,removePunctuation)
inspect(corp[1:5])
#remove extra white spaces
corp<-tm_map(corp,stripWhitespace)
inspect(corp[1:5])
#stemming text
corp<-tm_map(corp,stemDocument)
inspect(corp[1:5])
#removed additional stopwords
corp<-tm_map(corp,removeWords,c("get","told","took","gave","can","movie"))
inspect(corp[1:5])


#create TDM
#it will create words with frequency
corp<-TermDocumentMatrix(corp)
corp
corp<-as.matrix(corp)
corp
srt<-sort(rowSums(corp))
srt
View(srt
     )
d<-data.frame(word=names(srt),freq=srt)
View(d)
wordcloud(d$word,d$freq,random.order=FALSE,rot.per=0.6,scale=c(4,.5),min.freq=1,max.words=200,colors=brewer.pal(5,"Dark2"))
