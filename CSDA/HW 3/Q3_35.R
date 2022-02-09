#Author: Matt Williams
#Version: 2/5/2022

data <- read.csv(file="CollegeScores2yr.csv", header=TRUE)

n_samples <- 10000

means <- vector("numeric", length=n_samples)

x <- data$Enrollment
#n <- 10
n <- 60 

for(i in 1:n_samples){
  
  s <- sample(x, size = n, replace = FALSE)
  means[i] = mean(s)
}

boxplot(means)
sd(means)