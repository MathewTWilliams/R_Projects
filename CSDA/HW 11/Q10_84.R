# Author: Matt Williams
# Version: 4/24/2022


data <- read.csv("FloridaLakes.csv", header = TRUE)

attach(data)


model_1 = lm(AvgMercury ~ Alkalinity + pH + Calcium + Chlorophyll)
summary(model)


model_2 = lm(AvgMercury ~ Alkalinity  + Calcium + Chlorophyll)
summary(model_2)


model_3 = lm(AvgMercury ~ Alkalinity + Chlorophyll)
summary(model_3)


anova(model_2, model_1)

anova(model_3, model_1)

anova(model_3, model_2)