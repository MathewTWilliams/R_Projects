# Author: Matt Williams
# Version: 3/7/2022

data <- read.csv("ICUAdmissions.csv", header = TRUE)

ci = 0.95

alive_data <- data[data$Status == 0,]
dead_data <- data[data$Status == 1,]

alive_systolic <- alive_data$Systolic
s1 = sd(alive_systolic)
n1 = length(alive_systolic)

dead_systolic <- dead_data$Systolic
s2 = sd(dead_systolic)
n2 = length(dead_systolic)


estimate = (sum(alive_systolic) / n1) - (sum(dead_systolic)/n2)

point = (1 - ci) / 2
z_star = abs(qnorm(point))


SE = sqrt((s1**2/n1) + (s2**2/n2))


lower = estimate - (z_star * SE)
lower
upper = estimate + (z_star * SE)
upper

#####
sd(c(-8, -3, 3, -16, -7, 10, -3, -1))
sd(c(5, 11, -10, 25, -7, 0, 20, -7, 6, 7))