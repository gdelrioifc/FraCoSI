library(grid)
library(lattice)
library(gridExtra)
library(ggplot2)

setwd("<PathToYourLocalData>")

data=read.csv("DataForFigure3.csv",check.names = FALSE, head=TRUE)

p <- ggplot() + geom_point(aes(x=data$Index[1:6], y=data$FEPPI[1:6], shape=factor(data$ModelGroup[1:6])), size=5, colour="red") + scale_x_discrete(limits=c("1","2","3","4","5","6"))
p <- p + geom_point(aes(x=data$Index[7:12], y=data$FEPPI[7:12], shape=factor(data$ModelGroup[7:12])), size=5, colour="blue") + scale_x_discrete(limits=c("1","2","3","4","5","6","7","8","9","10","11","12"))

p <- p + ylab("FEPPI") + xlab("ML algorithm")
p <- p + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none",plot.title = element_blank(), axis.text.x=element_text(size=15),axis.text.y = element_text(size=15), axis.title.x=element_text(size=28, face="bold"),axis.title.y=element_text(size=28,face="bold"))

p
