# Author: Matt Williams
# Version: 2/21/2022


### Part 1

trials <- 10000
n_drawn <- 2

successes <- 0
Balls <- c("R", "R", "R", "R", "W", "W", "W")

check_1 <- c("R","R")


for(i in 1:trials) { 
  s <- sample(Balls, size = n_drawn, replace = FALSE)
  
  if(identical(s, check_1)) {
    successes <- successes + 1
  }
}

p = successes / trials
p


### Part 2 
trials <- 10000
successes <- 0
satisfy_cond <- 0
Balls <- c("R", "R", "R", "R", "W", "W", "W")
check_2 <- c("R")


for(i in 1:trials) {
  s1 <- sample(Balls, size = 1, replace = FALSE)
  
  if(identical(s1, check_2)) {
    
    satisfy_cond <- satisfy_cond + 1
    n_balls <- c("R", "R", "R", "W", "W", "W")
    s2 <- sample(n_balls, size = 1, replace = FALSE)
    
    if(identical(s2, check_2)) {
      successes <- successes + 1
    }
    
  }

}


p <- successes / satisfy_cond
p
