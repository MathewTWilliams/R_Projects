# Author: Matt Williams
# Version: 3/6/2022

data <- read.csv("ICUAdmissions.csv", header = TRUE)

ci = 0.95

#split data set
data_infect <- data[data$Infection == 1, ]
data_other <- data[data$Infection == 0, ]

# get n1 and n2
n_infect <- nrow(data_infect)
n_other <- nrow(data_other)

# get numerator for p_hats
n_died_infect <- nrow(data_infect[data_infect$Status == 1,])
n_died_other <- nrow(data_other[data_other$Status == 1,])

# calculate p_hats
p1_hat = n_died_infect / n_infect
p2_hat = n_died_other / n_other

# calculate estimate stat
p_hat_diff = p1_hat - p2_hat

# fractions to calculate SE
f1 = (p1_hat * (1 - p1_hat))/n_infect
f2 = (p2_hat * (1 - p2_hat))/n_other

# calculate SE
SE = sqrt(f1 + f2)

area = (1 - ci) / 2

z = abs(qnorm(area))


lower_bound = p_hat_diff - (z * SE)
upper_bound = p_hat_diff + (z * SE)

lower_bound
upper_bound


#####
sd(c(-2, 1, -5, 8, -1, -20, -15, 4, -9, 12))


