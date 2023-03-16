#Author: Matt Williams
#Version: 2/12/2021

sample_n = 100
n_samples = 1000
cut_off = 50
stat_star = 0.38

samples <- vector(mode = "numeric", length = sample_n)

# make our artificial sample described in the problem
for( i in 1:sample_n){
  if (i <= cut_off){
    samples[i] = 1
  }
  else {
    samples[i] = 0
  }
}

rand_samples <- vector(mode = "numeric", length = n_samples)


for(i in 1:n_samples){
  s <- sample(samples, size=sample_n, replace = T)
  rand_samples[i] = sum(s)/sample_n
  
}

p <- sum(rand_samples <= stat_star)/n_samples
p

