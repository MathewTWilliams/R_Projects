# Author: Matt Williams
# Version: 2/6/2022


data <- read.csv("ImmuneTea.csv", header = TRUE)

coffee = c()
tea = c()

n_samples = 10000
#p = .90
p = 0.99


for(i in 1:nrow(data))
{
  if(data$Drink[i] == "Coffee")
  {
    coffee = c(coffee, data$InterferonGamma[i])
  }
  else 
  {
    tea = c(tea, data$InterferonGamma[i])
  }
}

#tea_mean = mean(tea)
#cof_mean = mean(coffee)
#print(tea_mean - cof_mean)

diffs = vector("numeric", length = n_samples)
for(i in 1:n_samples)
{
  tea_sample = sample(tea, size = length(tea), replace = TRUE)
  cof_sample = sample(coffee, size = length(coffee), replace = TRUE)
  
  diffs[i] = mean(tea_sample) - mean(cof_sample)
  
}


a <- (1 - p) / 2
b = p + a

quantile(diffs, c(a,b))
