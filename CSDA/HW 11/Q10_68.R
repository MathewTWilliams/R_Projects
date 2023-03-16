# Author: Matt Williams
# Version: 4/23/2022


data <- read.csv("StudentSurvey.csv", header = TRUE)

attach(data)


model <- lm(Pulse ~ Exercise)
summary(model)

plot(Exercise, Pulse)
lines(Exercise[!is.na(Exercise)], fitted(model))

hist(resid(model))


plot(fitted(model), resid(model))
abline(0, 0)