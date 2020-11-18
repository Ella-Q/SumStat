range <- function(x, remove_na = FALSE, ...){
  if (!is.numeric(x)) stop("The input values are not numeric vectors\n")
  if (sum(is.na(x)>0)) warning("The input values contain NA's\n")
  max(x,na.rm = remove_na) - min(x,na.rm = remove_na)
}
