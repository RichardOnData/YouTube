library(dplyr)

diet <- read.csv("C:/Users/rbryant/Desktop/YouTube Scripts/stcp-Rdataset-Diet.csv", h = T)

diet$weightLoss <- diet$pre.weight - diet$weight6weeks
diet$Diet <- factor(diet$Diet)

av <- aov(weightLoss ~ Diet, data = diet)
summary(av)

pairwise.t.test(diet$weightLoss, diet$Diet)
