#' calculate the range
#'
#' @param x a numeric vector.
#' @param remove_na a logical value indicating whether NA values should be contained in the computation. The default value is _FALSE_.
#'
#' @return
#' A vector containing the range of the input data
#' @export
#'
#' @examples
#' range(c(1,5,9,0,NA),remove_na = TRUE)
range <- function(x, remove_na = FALSE){
  if (!is.numeric(x)) stop("The input values are not numeric vectors\n")
  if (sum(is.na(x)>0)) warning("The input values contain NA's\n")
  max(x,na.rm = remove_na) - min(x,na.rm = remove_na)
}
