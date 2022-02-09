#Author: Matt Williams
#Version: 2/5/2022


n_samples <- 1000
#n <- 50
n <- 500
n_people = 1000
cut_off = 275

values <- vector("numeric", length = n_people)
props <- vector("numeric", length = n_samples)

for(i in 1:length(values))
{
  if(i <= cut_off)
  {
    values[i] = TRUE
  }
  else
  {
    values[i] = FALSE
  }
}


for(i in 1:n_samples)
{
  sample <- sample(values, size = n, replace = FALSE)
  count = 0
  for(val in sample){
    if(val == TRUE)
    {
      count = count + 1
    }
  }
  
  props[i] = count / length(sample)
}

hist(props)
sd(props)
