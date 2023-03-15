# Author: Matt Williams
# Version: 2/14/2022


n_samples = 10000
cut_off = 500
p_stat = 0.55
sample_size = 1000

data <- vector(mode = "numeric", length = sample_size)

for(i in 1:sample_size) {
  if(i <= cut_off) {
    data[i] = 1
  }
  else {
    data[i] = 0
  }
}

results <- vector(mode="numeric", length = n_samples)
for(i in 1:n_samples){
  s <- sample(data, size = sample_size, replace = T)
  results[i] = (sum(s) / sample_size)
  
}

results

p <- sum(results >= p_stat)/n_samples
p