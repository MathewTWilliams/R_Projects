# Author: Matt Williams
# Version: 4/16/2022


data <- read.csv("StudentSurvey.csv", header = TRUE)

gpa <- data$GPA
verbal_sat <- data$VerbalSAT


mod = lm(gpa = 2.03 + 0.00189*verbal_sat)
newx = data.frame(verbal_sat = 700)
predict(mod, newx, interval="confidence")