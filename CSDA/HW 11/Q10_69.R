# Author: Matt Williams
# Version: 4/23/2022


data <- read.csv("NutritionStudy.csv", header = TRUE)


attach(data)

model <- lm (Calories ~ Fat)


plot(Fat, Calories)
lines(Fat, fitted(model))

hist(resid(model))


plot(fitted(model), resid(model))
abline(0,0)