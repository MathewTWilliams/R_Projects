# Author: Matt Williams
# Version: 2/6/2022

data <- read.csv("CarDepreciation.csv", header = TRUE)
#mean(data$Depreciation)
#sd(data$Depreciation)


n_samples = 1000

means = vector("numeric", length = n_samples)


for(i in 1:n_samples)
{
  sample <- sample(data$Depreciation, size = length(data$Depreciation), replace = TRUE)

  means[i] = mean(sample)
}


boxplot(means)
sd(means)




