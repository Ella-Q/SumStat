CVar <- function(x, remove_na = FALSE, verbose = FALSE, ...){
  if (!is.numeric(x)) stop("The input values are not numeric vectors\n")
  if (sum(is.na(x)>0)) warning("The input values contain NA's\n")
  mean <- mean(x, na.rm = remove_na)
  sd <- sd(x, na.rm = remove_na)
  mean/sd
}
