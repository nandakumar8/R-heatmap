
### heatmap 

###read data
INTERNET_HEAT<-read.csv("C:\\Users\\Nandakumar\\Desktop\\ggplot\\internet.csv")
###prepare data
DATA<-INTERNET_HEAT[1:50,]
###change row names to match country name 
row.names(DATA)<-DATA$Country.name
###remove column one
DATA<-DATA[,2:5]
###create data matrix-heatmaps allow only numeric matrix
INTERNET_DATA<-data.matrix(DATA)
HEATMAP<-heatmap(INTERNET_DATA,Rowv =NA,Colv=NA,col=cm.colors(256),scale="column",margins=c(8,12))
###change color scheme
HEATMAP<-heatmap(INTERNET_DATA,Rowv =NA,Colv=NA,col=heat.colors(256),scale="column",margins=c(8,8))

