#Author: Matt Williams
#Version: 1/31/2022

data <- read.csv(file="AllCountries.csv", header=TRUE)


hist(data$BrithRate)
hist(data$DeathRate)