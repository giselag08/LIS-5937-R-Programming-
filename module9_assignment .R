# Weight Data for Domestic Cats 
catsM <- read.csv(file="~/Desktop/catsM.csv", header = TRUE)
# Basic graphics example 
summary(catsM)
with(catsM, plot(Bwt, Hwt))
title(main="Heart Weight (g) vs. Body Weight (kg)\nof Domestic Cats")
plot(Hwt ~ Bwt, data=catsM)
# Lattice example 
library(lattice)
str(catsM)
xyplot(Bwt ~ Hwt, data=catsM)
# ggplot2 example 
install.packages("ggplot2")
library("ggplot2")
cats <- ggplot(catsM, aes(x = Bwt, y = Hwt)) + geom_point()
cats + geom_vline(xintercept = 5)
