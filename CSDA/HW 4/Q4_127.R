#Author: Matt Williams
#Version: 2/13/2022


data <- read.csv("DietDepression.csv", header = TRUE)

# measuring difference in depression levels
# Larger numbers mean more improvement in depression symptoms

x_diet = data[data$Group == "Diet",]
x_con = data[data$Group == "Control",]

mean_diff = mean(x_diet$DASSDiff) - mean(x_con$DASSDiff)
mean_diff

n_samples = 10000

y <- vector("numeric", length = n_samples)

n_data <- data

for(i in 1:n_samples) {
  s <- sample(n_data$DASSDiff, size = nrow(data), replace = F)
  n_data$DASSDiff <- s
  
  x_d <- n_data[n_data$Group == "Diet",]
  x_c <- n_data[n_data$Group == "Control",]
  
  y[i] <- mean(x_d$DASSDiff) - mean(x_c$DASSDiff)
}
y

p <- sum(y >= mean_diff) / n_samples
p