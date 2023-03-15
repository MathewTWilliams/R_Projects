  #Author: Matt Williams
  #Version: 2/14/2022
  
  
  n_samples = 100
  sample_size = 20
  
  cut_off = 10
  
  sample = vector(mode="numeric", length = sample_size)
  
  p_hat = 0.15
  
  for(i in 1:sample_size) {
    
    if(i <= cut_off) {
      sample[i] = 1
    }
    
    else {
      sample[i] = 0
    }
  
  }
  
  results = vector(mode="numeric", length = n_samples)
  
  
  for (i in 1:n_samples) {
    s1 <- sample(sample, size = sample_size, replace = T)
    s2 <- sample(sample, size = sample_size, replace = T)
    
    results[i] <- (sum(s1) - sum(s2)) / sample_size
  }
  
  p = sum(results >= p_hat) / n_samples
  p