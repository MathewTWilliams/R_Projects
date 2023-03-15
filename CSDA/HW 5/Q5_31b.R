# Author: Matt Williams
# Version: 2/19/2022
# using abs on randomization sample statistic will allow us to get the p-value on just a right tail test

n_samples = 3000

# make data frame for smoking group 
n_group = 1080
g_quit = 148

n_indiv = 990 
i_quit = 120

n_total = n_group + n_indiv


values <- vector("numeric", length = n_total)
labels <- vector ("character", length = n_total)


# fill in vectors
for(i in 1:n_group) {
  labels[i] = "Group"
  if (i <= g_quit) {
    values[i] <- 1
  }
  else {
    values[i] <- 0
  }
}


for(i in 1:n_indiv) {
  labels[i+n_group] = "Individual"
  if (i <= i_quit) {
    values[i+n_group] <- 1
  }
  else {
    values[i+n_group] <- 0
  }
}


# make data frame 
data <- data.frame(values, labels)

stat_star = abs((g_quit/n_group) - (i_quit/n_indiv))

results <- vector("numeric", length = n_samples)


for(i in 1:n_samples){
  
  s <- sample(data$values, size = n_total, replace = FALSE)
  data$values = s
  
  group = data[data$labels == "Group", ]
  indiv = data[data$labels == "Individual", ]
  results[i] = abs((sum(group$values) / n_group) - (sum(indiv$values) / n_indiv))
  
}

m <- mean(results)
m

s <- sd(results)
s

p <- sum(results >= stat_star) / n_samples
p 


