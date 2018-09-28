#' Calculate the mean, standard deviation, and N simultaneously
#'
#' @description This function allows you to express your love of cats.
#' @param .df An input dataframe, can be used as when piping.
#' @param ... The
#' @return Returns and integer giving the length of the vector, not counting NAs
#' @note Not very tested yet. Might cause trouble if called on a matrix. When called on a list, counts each element in the list even if there is an NA within that element
#'
#' @export
#'
#' @examples
#' # With vector
#' z <- c(1,2,3, NA)
#' length(z) # returns 4
#' len_noNA(z) # returns 3
#'
#' # with lists
#' listz <- list(z1 = z, z2 = z, z3 = c(NA, 2, 4), NA)
#' length_noNA(listz)
#' length(listz) # returns 4
#' len_noNA(z) # returns 3
#'


summarise_msdn <- function(.df, ...) {
  # Do the summarizing
  res <- .df %>%
    dplyr::summarise_at(.vars = vars(...), .funs = funs(mean, sd, len_noNA), na.rm = T)
  # Find which columns are which measures
  means <-grepl(colnames(res), pattern = "mean$")
  sds <-grepl(colnames(res), pattern = "sd$")
  ns <-grepl(colnames(res), pattern = "len_noNA$")
  # and rename them how I like, with the measure first
  colnames(res)[means] <- stringr::str_remove(stringr::str_c("m.", colnames(res)[means]), "_mean")
  colnames(res)[sds] <- stringr::str_remove(stringr::str_c("sd.", colnames(res)[sds]), "_sd")
  colnames(res)[ns] <- stringr::str_remove(stringr::str_c("n.", colnames(res)[ns]), "_len_noNA")
  res
}
