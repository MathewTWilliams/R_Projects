# Author: Matt Williams
# Version: 4/20/2022


# Checking Linear regression models
#1.	First, test linearity
#2.	average of residuals ~ 0
#3.	Constant Variability
#4.	Normality of the residuals 
#- a.	Histogram
#- b.	QQ-plot

# Code needs to be in the report

### Problem 1 ####
### Part a ###
data <- read.csv("FootballBrain.csv", header = TRUE)
attach(data)

g1 <- data[data$Group == "Control",]
g2 <- data[data$Group == "FBNoConcuss",]
g3 <- data[data$Group == "FBConcuss",]

summary(g1$Hipp)
summary(g2$Hipp)
summary(g3$Hipp)

### Part b ###
anova(lm(Group ~ Hipp))


# Problem 2 part a.

############# Youtube Model ############
data <- read.csv("marketing.csv", header = TRUE)

attach(data)
yt_model <- lm(sales~youtube)
summary(yt_model)
mean(resid(yt_model))
# Scatter plot
plot(youtube, sales)
lines(youtube, fitted(yt_model))
#Residual vs fit plot
plot(fitted(yt_model), resid(yt_model))
abline( a = 0, b = 0, col = "red")
#histogram
hist(resid(yt_model))
#QQ-plot
qqnorm(resid(yt_model))
qqline(resid(yt_model), col = "red")

############# Facebook Model ############
data <- read.csv("marketing.csv", header = TRUE)

attach(data)
fb_model <- lm(sales~facebook)
summary(fb_model)
mean(resid(fb_model))
#Scatter plot
plot(facebook, sales)
lines(facebook, fitted(fb_model))
#Residual vs fit plot
plot(fitted(fb_model), resid(fb_model))
abline(a=0, b=0, col="red")
#histogram
hist(resid(fb_model))
#QQ-plot
qqnorm(resid(fb_model))
qqline(resid(fb_model), col = "red")

############# Newspaper Model ############
data <- read.csv("marketing.csv", header = TRUE)

attach(data)
np_model <- lm(sales~newspaper)
summary(np_model)
mean(resid(np_model))
#Scatter plot
plot(newspaper, sales)
lines(newspaper, fitted(np_model))
#Residual vs Fit plot
plot(fitted(np_model), resid(np_model))
abline(a=0, b=0, col = "red")
#histogram
hist(resid(np_model))
#QQ-plot
qqnorm(resid(np_model))
qqline(resid(np_model), col = "red")

#Problem 2 Part b. 
data <- read.csv("marketing.csv", header = TRUE)

attach(data)

model_1 = lm(sales ~ youtube + facebook + newspaper)
summary(model_1)

model_2 = lm(sales ~ youtube + facebook)
summary(model_2)


