#' Calculate the mean, standard deviation, and N simultaneously
#'
#' @description This function allows you to express your love of cats.
#' @param .df An input dataframe, can be used as when piping.
#' @param ... The column(s) which you would like to summarize. Need to be numeric.
#' @return A dataframe summarizing the mean, standard deviation, and sample size for each numeric data column.
#' @note Not very tested yet. Might cause trouble if called on a matrix. When called on a list, counts each element in the list even if there is an NA within that element
#'
#' @export
#'
#' @examples
#' # Nothing yet
#'

summarise_msdn <- function(.df, ...) {
  res <- .df %>%
    dplyr::summarise_at(.vars = vars(...), .funs = funs(mean, sd, len_noNA), na.rm = T)
  # Find which columns are which measures
  means <-grepl(colnames(res), pattern = "mean$")
  sds <-grepl(colnames(res), pattern = "sd$")
  ns <-grepl(colnames(res), pattern = "len_noNA$")
  # and rename them how I like, with the measure first
  # Special case: if only summarizing one column, need to handle names specially
  if (dim(res)[2] == 3) {
    colnames(res)[means] <- stringr::str_c("m.", stringr::str_remove(as.character(vars(...)), "~"))
    colnames(res)[sds] <- stringr::str_c("sd.", stringr::str_remove(as.character(vars(...)), "~"))
    colnames(res)[ns] <- stringr::str_c("n.", stringr::str_remove(as.character(vars(...)), "~"))
  }
  # Else multiple columns, things are easier
  else {
    colnames(res)[means] <- stringr::str_remove(stringr::str_c("m.", colnames(res)[means]), "_mean")
    colnames(res)[sds] <- stringr::str_remove(stringr::str_c("sd.", colnames(res)[sds]), "_sd")
    colnames(res)[ns] <- stringr::str_remove(stringr::str_c("n.", colnames(res)[ns]), "_len_noNA")
  }
  res
}
