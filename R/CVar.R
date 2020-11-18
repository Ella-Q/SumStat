#' calculate the coefficient of variation
#'
#' @param x a numeric vector or list.
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
  purrr::map_dbl(x, ~ mean(.,na.rm = remove_na)/sd(.,na.rm = remove_na) )
}
