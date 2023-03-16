#Author: Matt Williams
#Version: 3/28/2022

# Q 3.105 part b
# p(Y>=2) = 1 - p(y<=1)
#Y: number of people to choose from r
#N: Total number of people
#n: total number of people for the sample
#r: total number of people with a specific attribute
                                              
N = 8
n = 3
y = 1
r = 5

1 - phyper(y, r, N-r, n)


# Q 3.122 part a
#P(Y<=3)

lambda = 7
y = 3
ppois(y, lambda)



# Q 3.122 part b
#P(Y>=2) -> 1 - P(Y<=1)

lambda = 7
y = 1
1 - ppois(y, lambda)
