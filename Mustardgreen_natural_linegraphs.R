rm()
b<-read.table(file = "clipboard", sep = "\t", header=TRUE)
b
attach(b)
str(b)
library(plyr)
library(plyr)
library(ggplot2)
library(Rmisc)
library(grid)
library(ggplot2)
library(ggExtra)
library(grid)
library(reshape2)
weed <- summarySE(b, measurevar= ("inhibition"), groupvars=c("Rates", "species"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed
a<-ggplot(data=weed, aes(x=Rates, y=inhibition, group = species)) +
  geom_line() + geom_point() +geom_line(aes(color=species))+ geom_point(aes(shape=species, color=species)) 
b<-a+theme(text = element_text(size=12))+labs(title="",x="Mustard greens rates (g per kg)", y = "Inhibition (%)")
b   
b+ geom_hline(yintercept=80)
