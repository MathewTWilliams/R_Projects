# Author: Matt Williams
# Version: 4/24/2022

data <- read.csv("LightatNight4Weeks.csv", header = TRUE)


attach(data)
### multi-regression model
model = lm(BMGain ~ Corticosterone + DayPct + Consumption + Activity)
summary(model)





## Corticosterone
model = lm(BMGain ~ Corticosterone)
summary(model)

plot(Corticosterone, BMGain)
lines(Corticosterone, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


## DayPct


model = lm(BMGain ~ DayPct)
summary(model)

plot(DayPct, BMGain)
lines(DayPct, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


## Consumption

model = lm(BMGain ~ Consumption)
summary(model)

plot(Consumption, BMGain)
lines(Consumption, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


## Activity
model = lm(BMGain ~ Activity)
summary(model)

plot(Activity, BMGain)
lines(Activity, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)



