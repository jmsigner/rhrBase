#' Least Square Cross Validation
#'
#' Least square cross validation to determine bandwidth for  kernel density estimation.
#'
#' @param x Numeric vector, the x coordinates.
#' @param y Numeric vector, the y cooridnates.
#' @param h Numeric vector, candidate bandwidth.
#' @export
#' @import Rcpp
#' @useDynLib rhrBase
#' @return Numeric vector, the score value for each of the proposed candidate bandwidths.
#' @references \url{http://www.esajournals.org/doi/abs/10.2307/2265701}
#'
#' @example inst/examples/rhrBaseLSCV.R


rhrBaseLSCV <- function(x, y, h) {

  if (length(x) != length(y)) {
    stop("x and y are required to be of the same length")
  }

  if (!is.numeric(x) | !is.numeric(y) | !is.numeric(h)) {
    stop("x, y and h are required to be numeric")
  }
  unbinnedCV(x, y, h)
}
