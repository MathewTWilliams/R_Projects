# Author: Matt Williams
# Version: 2/7/2022


n_students = 20
n_samples = 10000
x <- vector("numeric", length = n_samples)

for(i in 1:n_samples)
{
  result <- sample(1:365, n_students, replace = TRUE)
  if(1 %in% result)
  {
    x[i] = 0
  }
  else 
  {
    x[i] = 1
  }
}

mean(x)