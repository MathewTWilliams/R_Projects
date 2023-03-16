# Author: Matt Williams
# Version: 4/17/2022


data <- read.csv("LightatNight4Weeks.csv", header = TRUE)

#response
bm_gain <- data$BMGain

#explanatory
cortico <- data$Corticosterone
data_pct <- data$DayPct
consump <- data$Consumption
activity <- data$Activity


mod = lm (bm_gain ~ cortico + data_pct + consump + activity)
summary(mod)

anova(mod)


pnorm(72, 78, 36, lower.tail = FALSE)