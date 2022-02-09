# Author: Matt Williams
# Version: 2/6/2022


n_people = 1000
cutoff = 753
n_samples = 10000
values <- vector('numeric', length = n_people)
probs <- vector('numeric', length = n_samples)
p = 0.90

for(i in 1:n_people)
{
  if(i <= cutoff)
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
  sample <- sample(values, size = n_people, replace = TRUE)
  count = 0
  for(val in sample)
  {
    if(val == TRUE)
    {
      count = count + 1
    }
  }
  
  probs[i] = count / n_people
}

a <- (1 - p)/2
b = a + p 

quantile(probs, c(a,b))
