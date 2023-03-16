# Author: Matt Williams
# Version: 3/6/2022


# Part a
data <- read.csv("FloridaLakes.csv", header = TRUE)

x_null = 1

mercury_levels = data$AvgMercury
n = length(mercury_levels)
df = n - 1

x_bar = sum(mercury_levels) / n

s = sd(mercury_levels)

t_star = (x_bar - x_null) / (s/sqrt(n))

pt(t_star, df)


#Part B
data <- read.csv("FloridaLakes.csv", header = TRUE)

x_null = 0.5

mercury_levels = data$AvgMercury
n = length(mercury_levels)
df = n - 1

x_bar = sum(mercury_levels) / n
s = sd(mercury_levels)
t_star = (x_bar - x_null)/ (s/sqrt(n))

pt(t_star, df)
