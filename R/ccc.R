#' @title An Rcpp implementation of Lin's Concordance Correlation Coefficient (CCC)
#'
#' @description
#' This `ccc()` function leverages the speed of C++ to implement Lin's Concordance Correlation Coefficient (CCC) via [Rcpp]. This
#' implementation is faster than other varieties of CCC calculation from other packages, i.e.,
#' [DescTools::CCC()] and [epiR::epi.ccc()].
#'
#' @param x A numeric vector containing `x`.
#' @param y A numeric vector containing `y`.
#'
#' @return A numeric scalar representing the CCC between `x` and `y`.
#'
#' @details
#' For more details on the calculation of the CCC, see: [https://en.wikipedia.org/wiki/Concordance_correlation_coefficient](https://en.wikipedia.org/wiki/Concordance_correlation_coefficient)
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
