# Function to omit NAs ----------------------------------------------------
# This function omit the NA in a certain colum (http://stackoverflow.com/questions/11254524/omit-rows-containing-specific-column-of-na)
completeFun <- function(data, desiredCols) {
  completeVec <- complete.cases(data[, desiredCols])
  return(data[completeVec, ])
}