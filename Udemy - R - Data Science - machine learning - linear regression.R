#------------------------------------------------------------
# R Machine Learning - Linear Regression - PART I EXPLORATORY
#------------------------------------------------------------
setwd("C:/Users/eva.hong/Desktop/Eva.Hong/Udemy/R- Data Science/Machine Learning/1. Linear Regression")
df <- read.csv("student-mat.csv",sep = ";")
head(df)
colnames(df)
summary(df)

any(is.na(df))
str(df)

install.packages("corrgram")
install.packages("corrplot")
library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)

num.cols <- sapply(df,is.numeric)
cor.data <- cor(df[,num.cols])
cor.data

corrplot(cor.data, method="color")
corrgram(df)

corrgram(df,order=TRUE, lower.panel=panel.shade,upper.panel=panel.pie, text.panel=panel.txt)
ggplot(df,aes(x=G3)) + geom_histogram(bins=20,alpha=0.5,fill='blue')

#------------------------------------------------------------
# R Machine Learning - Linear Regression - PART II MODELLING
#------------------------------------------------------------
install.packages("caTools")
library(caret)

set.seed(101)
Sample <- createDataPartition(df$G3, p = .8, list = FALSE, times = 1)
summary(Sample)

train <- df[Sample]
test <- subset(df,Sample==F)
train
test

require(caTools)
