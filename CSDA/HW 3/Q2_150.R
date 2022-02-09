#Author: Matt Williams
#Version: 2/5/2022

data <- read.csv(file="PASeniors.csv", header=TRUE)
mean(data$HWHours, na.rm = TRUE)
sd(data$HWHours,na.rm = TRUE)

