# Author: Matt Williams
# Version: 2/6/2022


n_samples <- 10000
means <- vector("numeric", length = n_samples)
p <- 0.90

# part a
data <- read.csv("SampColleges2yr.csv")


for(i in 1:n_samples)
{
  sample <- sample(data$Cost, size = length(data$Cost), replace = TRUE)
  means[i] = mean(sample)
}

a = (1 - p) / 2
b = a + p

quantile(means,c(a,b))


# part b
data <- read.csv("CollegeScores2yr.csv", header = TRUE)
print(mean(data$Cost, na.rm = TRUE))