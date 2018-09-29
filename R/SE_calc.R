# http://www.r-bloggers.com/standard-deviation-vs-standard-error/
stderr <- function(x) sqrt(var(x,na.rm=TRUE)/length(na.omit(x)))
std <- function(x) sd(x)/sqrt(length(x))

#computation of the standard error of the mean
sem<-function(x) sd(x,na.rm = FALSE)/sqrt(length(x)) # Careful, length is counting the number of NA

#95% confidence intervals of the mean
cfint = function(x) c(mean(x)-2*sem(x),mean(x,na.rm = FALSE)+2*sem(x))

# Example: 
# set.seed(20151204)
#generate some random data
# x<-rnorm(10)
#compute the standard deviation
# sd(x)

# Standard error of the mean
# It is a measure of how precise is our estimate of the mean.
# The main use of the standard error of the mean is to give confidence 
# intervals around the estimated means where it follows the same 68-95-99.7 
# rule BUT this time not for the data itself but for the mean. This can also 
# be extended to test (in terms of null hypothesis testing) differences between 
# means. For example if the 95% confidence intervals around the estimated 
# fish sizes under Treatment A do not cross the estimated mean fish size under 
# Treatment B then fish sizes are significantly different from one another 
# between the two Treatments. Note that the standard error of the mean depends 
# on the sample size, the standard error of the mean shrink to 0 as sample size 
# increases to infinity.
# 
# When to use standard deviation? When to use standard error?
# It depends. If the message you want to carry is about the spread and 
# variability of the data, then standard deviation is the metric to use. If 
# you are interested in the precision of the means or in comparing and testing 
# differences between means then standard error is your metric. Of course 
# deriving confidence intervals around your data (using standard deviation) or 
# the mean (using standard error) requires your data to be normally distributed. 
# Bootstrapping is an option to derive confidence intervals in cases when you 
# are doubting the normality of your data.
# 
