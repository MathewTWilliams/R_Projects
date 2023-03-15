# Author: Matt Williams
# Version: 2/14/2022


data <- read.csv("SleepCaffeine.csv", header = TRUE)

sleep_group <- data[data$Group == "Sleep",]
caff_group <- data[data$Group == "Caffeine",]

p_hat = abs(mean(sleep_group$Words) - mean(caff_group$Words))


n_samples = 10000
results <- vector(mode = "numeric", length = n_samples)

n_data <- data

for(i in 1:n_samples){
  s <- sample(n_data$Words, size = nrow(n_data), replace = F)
  n_data$Words <- s
  
  s_g <- n_data[n_data$Group == "Sleep",]
  c_g <- n_data[n_data$Group == "Caffeine", ]
  
  results[i] = abs(mean(s_g$Words) - mean(c_g$Words))
}

p = sum(results >= p_hat)/n_samples
p