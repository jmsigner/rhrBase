#' Mean squared distance
#'
#' Mean squared distance from the center of activity.
#'
#' @param x Numeric vector, the x cooridnates
#' @param y Numeric vector, the y coordinates
#' @return Numeric matrix with the x and y coordinates of the new path.
#' @references \url{http://www.esajournals.org/doi/abs/10.2307/1937590}

#' @export
#' @example inst/examples/rhrBaseMSD.R

rhrBaseMSD <- function(x, y) {

  if (length(x) != length(y)) {
    stop("x and y are not of the same length")
  }

  if (!is.numeric(x) | !is.numeric(y)) {
    stop("x and y are required to be numeric")
  }

  mx  <- mean(x)
  my  <- mean(y)
  meanSquaredDistance(x, y, mx, my)
}
