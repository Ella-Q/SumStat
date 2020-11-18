#' calculate the coefficient of variation
#'
#' @param x a numeric vector.
#' @param remove_na a logical value indicating whether NA values should be contained in the computation. The default value is _FALSE_.
#' @param ... further arguments passed to or from other methods
#'
#' @return
#' A vector containing the coefficient of variation of the input data
#' @export
#'
#' @examples
#' CVar(c(1:4))
CVar <- function(x, remove_na = FALSE, ...){
  if (!is.numeric(x)) stop("The input values are not numeric vectors\n")
  if (sum(is.na(x)>0)) warning("The input values contain NA's\n")
  mean <- mean(x, na.rm = remove_na)
  sd <- sd(x, na.rm = remove_na)
  mean/sd
}
