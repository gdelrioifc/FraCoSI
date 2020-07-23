library(ggplot2)
library(reshape)
library(grid)
library(lattice)
library(gridExtra)

setwd("<PathToYourLocalData>")

data1=read.delim("DataForFigure2LatD6Concat.csv",head=TRUE, sep=",")
data1.long <- melt(data1, id="R0",measure=c("FEPPI"))
p1 <- ggplot(data1.long,aes(x=R0, value)) + geom_point(size=5, color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("A")

data2=read.delim("DataForFigure2LatD6Sum.csv",head=TRUE, sep=",")
data2.long <- melt(data2, id="R0",measure=c("FEPPI"))
p2 <- ggplot(data2.long,aes(x=R0, value)) + geom_point(size=5, color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("B")

data3=read.delim("DataForFigure2LatD7Concat1.csv",head=TRUE, sep=",")
data3.long <- melt(data3, id="R0",measure=c("FEPPI"))
p3 <- ggplot(data3.long,aes(x=R0, value)) + geom_point(size=5, color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("C")

data4=read.delim("DataForFigure2LatD7Concat2.csv",head=TRUE, sep=",")
data4.long <- melt(data4, id="R0",measure=c("FEPPI"))
p4 <- ggplot(data4.long,aes(x=R0, value)) + geom_point(size=5, color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("D")

data5=read.delim("DataForFigure2LatD7Concat3.csv",head=TRUE, sep=",")
data5.long <- melt(data5, id="R0",measure=c("FEPPI"))
p5 <- ggplot(data5.long,aes(x=R0, value)) + geom_point(size=5, color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("E")

data6=read.delim("DataForFigure2NoLatD8Concat.csv",head=TRUE, sep=",")
data6.long <- melt(data6, id="R0",measure=c("FEPPI"))
p6 <- ggplot(data6.long,aes(x=R0, value)) + geom_point(size=5, color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("F")

title1=textGrob("FraCoSI",gp=gpar(fontsize=28,fontface="bold"),rot=90)
title2=textGrob("R0",gp=gpar(fontsize=28,fontface="bold"),rot=0)
grid.arrange(p1,p2,p3,p4,p5,p6,ncol=3,left=title1, bottom=title2)
