#' Permutate walk
#'
#' permuates a walk by reusing the original distances between steps and connecting them with angles drawn from a uniform distribution between 0 and 360.
#' @param x Numeric vector, the x coordinates.
#' @param y Numeric vector, the y coordinates.
#' @return Numeric matrix with the x and y coordinates of the new path.

#' @export
#'

rhrBasePRW <- function(x, y) {

  if (length(x) != length(y)) {
    stop("x and y are not of the same length")
  }

  if (!is.numeric(x) | !is.numeric(y)) {
    stop("x and y are required to be numeric")
  }

  d <- sqrt((x[-1] - x[-length(x)])^2 + (y[-1] - y[-length(y)])^2)
  d <- sample(d)

  rA <- runif(length(d), 0, 360)

  sinrA <- sin(rA * pi/180)
  cosrA <- cos(rA * pi/180)

  res <- simpleRandomWalk(x[1], y[1], sinrA, cosrA, d)

  return(cbind(res[["rx"]], res[["ry"]]))
}

