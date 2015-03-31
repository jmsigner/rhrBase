#' Interval Check
#'
#' Checks if consecutive observations are separated by an interval or not.
#'
#' @param ts Numeric vector, the time stamps in seconds.
#' @param int Numeric scalar, the minimum time in seconds that two observations need to be separated.
#' @export
#' @import Rcpp
#' @return A logcial vector of length \code{length(ts)}, indicating if a given observation is seperated from the last chosen one by int.


rhrBaseIntervalSubset <- function(ts, int) {
  if (!is.numeric(ts) | is.numeric(int)) {
    stop("ts and int are required to be numeric")
  }

  t2cpp3(ts, int)
}
