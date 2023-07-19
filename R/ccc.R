#' An Rcpp implementation of Lin's Concordance Correlation Coefficient (CCC)
#'
#' @param x A numeric vector containing `x`.
#' @param y A numeric vector containing `y`.
#'
#' @return A numeric scalar representing the CCC between `x` and `y`.
#' @export
#'
#' @examples
#' # Create x and y vectors
#' x <- rnorm(100, sd = 1)
#' y <- rnorm(length(x), sd = 0.2)
#'
#' # Calculate CCC between x and y
#' ccc(x,y)
#'
ccc <- function(x,y) {

  result <- rcpp_ccc(x,y)

  return(result)

}
