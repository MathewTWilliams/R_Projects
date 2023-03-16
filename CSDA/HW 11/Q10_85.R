# Author: Matt Williams
# Version: 4/24/2022


data <- read.csv("NutritionStudy.csv", header = TRUE)

attach(data)

### Part a #####
### Age ###
model = lm(BetaPlasma ~ Age)
summary(model)


plot(Age, BetaPlasma)
lines(Age, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


### Fat ###
model = lm(BetaPlasma ~ Fat)
summary(model)


plot(Fat, BetaPlasma)
lines(Fat, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


### Fiber ###
model = lm(BetaPlasma ~ Fiber)
summary(model)


plot(Fiber, BetaPlasma)
lines(Fiber, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


### Alcohol ###
model = lm(BetaPlasma ~ Alcohol)
summary(model)


plot(Alcohol, BetaPlasma)
lines(Alcohol, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)


### BetaDiet ###
model = lm(BetaPlasma ~ BetaDiet)
summary(model)


plot(BetaDiet, BetaPlasma)
lines(BetaDiet, fitted(model))

hist(resid(model))

plot(fitted(model), resid(model))
abline(0,0)



#### Part B ####

model_1 = lm (BetaPlasma ~ Age + Fat + Fiber + Alcohol + BetaDiet)
summary(model_1)

model_2 = lm (BetaPlasma ~ Age + Fat + Fiber + BetaDiet)
summary(model_2)

model_3 = lm (BetaPlasma ~ Age + Fiber + BetaDiet)
summary(model_3)

model_4 = lm (BetaPlasma ~  Fiber + BetaDiet)
summary(model_4)

anova(model_2, model_1)

anova(model_3, model_1)

anova(model_4, model_1)

anova(model_3, model_2)

anova(model_4, model_2)

anova(model_4, model_3)