factor2numeric <- function(data,columns.names.vector) {
  data[,cols] = apply(data[,cols], 2, function(x) as.numeric(as.character(x)))  
}

