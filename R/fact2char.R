change.factor.to.character <- function(data) {
  fact.col = which(sapply(data, class)=="factor")
  data[,fact.col] <- lapply(data[,fact.col], as.character)
  return(data)
}


change.factor.to.numbers <- function(data) {
  fact.col = which(sapply(data, class)=="factor")
  data[,fact.col] <- lapply(data[,fact.col], as.character)
  data[,fact.col] <- lapply(data[,fact.col], as.numeric)
  return(data)
}
