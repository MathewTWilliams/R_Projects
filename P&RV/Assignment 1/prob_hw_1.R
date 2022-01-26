#Author: Matt Williams
#Version: 1/24/2022


##### Problem 1 #####
f <- expression(exp(1)^(4*x))
x = 1
eval(D(f,'x'))


#### Problem 2 ####
f <- expression(log(1-(2*x)))
x = 1
eval(D(f,'x'))


#### Problem 3 ####
f <- expression(x^3 * exp(4*x))
x = 1
eval(D(f,'x'))


#### Problem 4 ####
f <- expression(exp(x) / (x^2+1))
x = 2
eval(D(f, 'x'))


#### Problem 5 ####
f <- function(x) 3*x
integrate(f,0,1)


#### Problem 6 ####
f <- function(x) x / (1 + x^2)
integrate(f,0,1)


#### Problem 7 ####
f <- function(x) x * exp(x)
integrate(f,0,1)



#### Problem 8 ####
#install.packages("cubature")
library(cubature)
f <- function(x) {x[1] + x[2]}
adaptIntegrate(f, lowerLimit = c(0,0), upperLimit = c(2,1))