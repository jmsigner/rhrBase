#' Mean squared distance
#'
#' Mean squared distance from the center of activity.
#'
#' @param x Numeric vector, the x cooridnates
#' @param y Numeric vector, the y coordinates
#' @return Numeric matrix with the x and y coordinates of the new path.

#' @export

rhrBaseMSD <- function(x, y) {
  mx  <- mean(x)
  my  <- mean(y)
  meanSquaredDistance(x, y, mx, my)
}
