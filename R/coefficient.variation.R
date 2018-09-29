# https://www.r-bloggers.com/measure-of-relative-variability/
# The measure of relative variability is the coefficient of variation (CV). Unlike measures of absolute variability, the CV is unitless when it comes to comparisons between the dispersions of two distributions of different units of measurement. In R, CV is obtained using cv function of raster package (to install an R package, click here).
# Example 1. Below are the mean and standard deviation of the number of hours spent by Tonette every studying Stochastic Process Exam and the corresponding scores she got out of 100 items. Basing from this data, should one say the number of hours she spent in studying is more variable than her exam scores, or the other way around?
#    Variable 	 Mean 	 Standard Deviation
# Study Hours 	   25  	                2.6
#      Scores	     69	                  5.3

# This function gives you already the % in which the CV is given
CV <- function(mean, sd){
  (sd/mean)*100
}

# CV(mean = 25, sd = 2.6)
# CV(mean = 69, sd = 5.3)
# Interpretation: It is very clear from the computed CV that, the study hours is more variable than the exam scores, even though the standard deviation of the scores is higher than the spent hours.

CV2 <- function(vec){
  mean = mean(vec, na.rm = TRUE)
  sd = sd(vec, na.rm = TRUE)
  (sd/mean)*100
}

# heights <- c(151, 160, 162, 155, 154, 168, 153, 158, 157, 150, 167)
# weights <- c(61, 69, 73, 65, 64, 78, 63, 68, 67, 60, 77)
#
# library(raster) # In this package, there is a function that will calculate CV based on a vector
# CV(mean(heights), sd(heights))
# CV(mean(weights), sd(weights))
# CV2(heights)
# cv(heights)
# cv(weights)
# Interpretation: The weights of the students are more variable than their heights as proven by the computed coefficient of variation.
