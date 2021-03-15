library(ggplot2)
library(reshape)
library(grid)
library(lattice)
library(gridExtra)

setwd("<PathToYourLocalData>")

data1=read.delim("DataForFigure1.csv",head=TRUE, sep=",")
data1.long <- melt(data1, id="R0",measure=c("FRACOSI"))
data1$shape <- as.factor(data1$shape)
p1 <- ggplot(data1.long,aes(x=R0, value)) + ylim(85,100) + geom_point(size=5, aes(shape=data1$shape), color="black") + geom_smooth(method=lm,  linetype="dashed",color="darkred", fill="blue", level=0.95) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background=element_rect(fill='white', colour='black'),legend.position="none", plot.title = element_text(hjust=0.5), axis.title.x = element_blank(), axis.title.y = element_blank()) + ggtitle("")

title1=textGrob("FraCoSI",gp=gpar(fontsize=28,fontface="bold"),rot=90)
title2=textGrob("R0",gp=gpar(fontsize=28,fontface="bold"),rot=0)
grid.arrange(p1,ncol=1,left=title1, bottom=title2)
