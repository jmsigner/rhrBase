#' Interval Check
#'
#' Checks if consecutive observations are separated by an interval or not. If \code{int} is used up, than the next observation is used.
#'
#' @param ts Numeric vector, the time stamps in seconds.
#' @param int Numeric scalar, the minimum time in seconds that two observations need to be separated.
#' @export
#' @import Rcpp
#' @return A logcial vector of length \code{length(ts)}, indicating if a given observation is seperated from the last chosen one by int.
#' @example inst/examples/rhrBaseIntervalSubset.R


rhrBaseIntervalSubset <- function(ts, int) {

  if (length(ts) < 2) {
    stop("length(ts) < 2")
  }

  if (!is.numeric(ts) | !is.numeric(int)) {
    stop("ts and int are required to be numeric")
  }

  as.logical(t2cpp3(ts, int))
}
