#' Length of a vector, without NAs
#'
#' A function which give the length of an object, but does not count NAs
#'
#' Not very tested yet. Might cause trouble if called on a matrix or array. When
#' called on a list, counts each element in the list even if there is an NA
#' within that element, so be careful.
#'
#' @param vector A vector.
#' @param ... There for compatibility with internal function calls.
#' @return Returns and integer giving the length of the vector, not counting NAs
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
#' len_noNA(listz)
#' length(listz) # returns 4
#' len_noNA(z) # returns 3
#'

len_noNA <- function(vector, ...) {
  as.integer(sum(is.na(vector) == F))
}

