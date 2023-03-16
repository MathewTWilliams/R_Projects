# Author: Matt Williams
# Version: 4/24/2022


data <- read.csv("NutritionStudy.csv", header = TRUE)

attach(data)

model = lm(Cholesterol ~ Fat)
summary(model) 

plot(Fat, Cholesterol)
lines(Fat, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)