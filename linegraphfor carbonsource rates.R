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
weed <- summarySE(b, measurevar= ("mortality"), groupvars=c("carbonsource", "rates", "species"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed
a<-ggplot(data=weed, aes(x=rates, y=mortality, group = carbonsource)) +
  geom_line() + geom_point() +geom_line(aes(color=carbonsource))+ geom_point(aes(shape=carbonsource, color=carbonsource))+facet_grid(~ species )  
b<-a+theme(text = element_text(size=12))+labs(title="",x="Carbon source amount", y = "Mortality (%)")
b   
b+ geom_hline(yintercept=80)
