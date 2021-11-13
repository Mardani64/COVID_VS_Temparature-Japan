covodVSTemp2021 <- read.delim(file.choose(), header = T,sep = "\t")
head(covodVSTemp2021)


# Install and load some packages
if (!require("gplots")) install.packages("gplots")
if (!require("stringr")) install.packages("stringr")
library("gplots")
library("stringr")

if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")

if (!require("RColorBrewer")) install.packages("RColorBrewer")
library("RColorBrewer")

library(ggplot2)


ggplot(covodVSTemp2021, aes(x=Newly.confirmed.cases, y=max)) + geom_point() + 
  geom_point(size=5, shape=20, colour = "red") + geom_smooth(method="auto", se=TRUE, fullrange=FALSE, level=0.95) + ggtitle("2021 corrilation COVID19 vs Temp") + 
  theme(legend.position = "none",panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        panel.background = element_blank(),
        axis.line = element_line(colour = "black", size = 1),
        text = element_text(size = 20), axis.text.x = element_text(size =35, color= "black", margin = unit(c(t = 8, r = 0, b = 0, l = 0), "mm")),
        axis.text.y = element_text(size =35, color= "black", margin = unit(c(t = 0, r = 8, b = 0, l = 0), "mm")), 
        axis.ticks = element_line(colour = "black", size = 2), 
        panel.border = element_rect(colour = "black", fill=NA, size=2),
        axis.ticks.length = unit(-0.25, "cm"))




