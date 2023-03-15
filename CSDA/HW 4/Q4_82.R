#Author: Matt Williams
#Version: 2/13/2022


data <- read.csv("FootballBrain.csv",  header = TRUE)

fb_nc = data[data$Group == "FBNoConcuss",]
fb_c = data[data$Group == "FBConcuss",]

diff_mean <- mean(fb_nc$Hipp) - mean(fb_c$Hipp)

n_samples = 10000

y <- vector("numeric", length = n_samples)

n_data <- data[data$Group != "Control",]


for(i in 1:n_samples) {
  s <- sample(n_data$Hipp, size = nrow(n_data), replace = FALSE)
  n_data$Hipp <- s
  
  f_c <- n_data[n_data$Group == "FBConcuss",]
  f_nc <- n_data[n_data$Group == "FBNoConcuss",]
  
  
  y[i] <- mean(f_nc$Hipp) - mean(f_c$Hipp)
}

y
p <- sum(y >= diff_mean) / n_samples
p