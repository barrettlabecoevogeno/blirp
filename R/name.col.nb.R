name.column.nb<- function(dataset, name.col) 
  # dataset: is the name of the dataset
  # name.col: is the name of the column you want to know the number in "".
  {which(colnames(dataset)==name.col)}
