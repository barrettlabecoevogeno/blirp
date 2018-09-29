# test vector:
x = 1:10
y = 1:100
# Weighted mean: 
weighted.mean(y)

# Mean:
mean(y)

# Geometric mean:
geom.mean <- function(x) {
  try(if(0 %in% x) {stop("Yo! There are '0's in here. Add +1 or delete the '0's, log(0) = -Inf")})
    exp(mean(log(x))) # Cannot take 0 values
  # prod(x)^(1/length(x)) #compute the geometric mean, same thing 
  }
geom.mean(x)

# Definition:
# In mathematics, the geometric mean is a type of mean 
# or average, which indicates the central tendency or 
# typical value of a set of numbers by using the product 
# of their values (as opposed to the arithmetic mean 
# which uses their sum). The geometric mean is defined 
# as the nth root of the product of n numbers, i.e., for 
# a set of numbers x1, x2, ..., xn, the geometric mean 
# is defined as



# Harmonic mean: 
har.mean <- function(x) {
    try(if(0 %in% x) {stop("Yo! There are '0's in here. Add +1 or delete the '0's, log(0) = -Inf")})
  1/mean(1/x)} # Cannot take 0 values
har.mean(x)

# Definition: 
# Typically, it is appropriate for situations when 
# the average of rates is desired. The harmonic mean 
# can be expressed as the reciprocal of the arithmetic 
# mean of the reciprocals