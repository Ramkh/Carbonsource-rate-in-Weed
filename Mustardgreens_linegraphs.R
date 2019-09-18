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
weed <- summarySE(b, measurevar= ("mortality"), groupvars=c("Rates", "species"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed
a<-ggplot(data=weed, aes(x=Rates, y=mortality, group = species)) +geom_errorbar(aes(ymin=mortality-se, ymax=mortality+se), width=.2,position=position_dodge(0.05))+                                                                               
  geom_line() + geom_point() +geom_line(aes(color=species))+ geom_point(aes(shape=species, color=species)) 
b<-a+theme(text = element_text(size=12))+labs(title="",x="Mustard greens rates (g per kg)", y = "Mortality (%)")
b   
b+ geom_hline(yintercept=80,linetype="dashed")
