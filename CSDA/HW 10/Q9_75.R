# Author: Matt Williams
# Version: 4/16/2022


data <- read.csv("SampCountries.csv", header = TRUE)
health = data$Health
life_expectancy = data$LifeExpectancy

mod = lm(life_expectancy~health)

newx = data.frame(health = 50)
predict(mod, newx, interval="prediction")
