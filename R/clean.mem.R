#' Remove everything from R memory
#'
#' @description Will delete everything in R's memory
#' @param ... Runs by itself.
#' @return Deletes everything
#' @note Just be careful before deleting your Global environment to be sure this is what you wanted!
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' # With vector
#' z <- c(1,2,3, NA)
#' rm(list=ls(all=TRUE))
#' z
#' }

clean.mem <- function () {
  rm(list = ls(all.names = TRUE, envir = globalenv()),
     envir = globalenv())
  return(invisible(NULL))
}

