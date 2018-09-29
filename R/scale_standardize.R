# Scaling values for data -------------------------------------------------
scaling.var <- function(variable) {
  # Stats to recover
  mean.v = mean(variable)
  sd.v = sd(variable)
  # Scaling vector:
  scale.v = as.vector(scale(variable))
  return(list(scale = scale.v, mean = mean.v, sd = sd.v))
}

retreive.scale.var <- function(scale, mean, sd) {scale*sd+mean}