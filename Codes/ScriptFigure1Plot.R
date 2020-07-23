library(grid)
library(lattice)
library(gridExtra)
library(ggplot2)

setwd("<PathToYourLocalData>")

data=read.csv("DataForFigure1.csv",check.names = FALSE, head=TRUE)

p <- ggplot() + geom_point(aes(x=data$Index[1:6], y=data$Distance[1:6], shape=factor(data$ModelGroup[1:6])), size=5, colour="red") 
p <- p + geom_point(aes(x=data$Index[7:12], y=data$Distance[7:12], shape=factor(data$ModelGroup[7:12])), size=5, colour="blue") 
p <- p + geom_point(aes(x=data$Index[13:18], y=data$Distance[13:18], shape=factor(data$ModelGroup[13:18])), size=5, colour="purple")

p <- p + ylab("Distance") + xlab("Protein pair")
p <- p + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none",plot.title = element_blank(), axis.text.x=element_text(size=15),axis.text.y = element_text(size=15), axis.title.x=element_text(size=28, face="bold"),axis.title.y=element_text(size=28,face="bold"))

p
