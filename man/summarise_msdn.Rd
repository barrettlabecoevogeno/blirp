% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarise_msdn.R
\name{summarise_msdn}
\alias{summarise_msdn}
\title{Calculate the mean, standard deviation, and N simultaneously}
\usage{
summarise_msdn(.df, ...)
}
\arguments{
\item{.df}{An input dataframe, can be used as when piping.}

\item{...}{The column(s) which you would like to summarize. Need to be numeric.}
}
\value{
A dataframe summarizing the mean, standard deviation, and sample size for each numeric data column.
}
\description{
This function allows you to express your love of cats.
}
\note{
Not very tested yet. Might cause trouble if called on a matrix. When called on a list, counts each element in the list even if there is an NA within that element
}
\examples{
# Nothing yet

}
