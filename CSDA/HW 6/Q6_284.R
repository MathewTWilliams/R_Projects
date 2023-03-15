# Author: Matt Williams
# Version: 3/7/2022


data <- read.csv("PASeniors.csv", header = TRUE)


ci = 0.95
n = nrow(data)



sleep1_data <- data$Sleep1
sleep2_data <- data$Sleep2

diffs <- vector(mode = "numeric", length=n)

for(i in 1:n) {
  diffs[i] <- sleep2_data[i] - sleep1_data[i]
}

xd_bar = sum(diffs, na.rm = TRUE) / n
xd_bar
s = sd(diffs, na.rm = TRUE)


point = (1 - ci) / 2

t = abs(qt(point, n - 1))

SE = s / sqrt(n)
SE


lower = xd_bar - (t * SE)
lower
upper = xd_bar + (t * SE)
upper
