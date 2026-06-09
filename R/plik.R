#' @useDynLib Simregr
"_PACKAGE"

#' @title
#' Linear Regression
#'
#' @description
#' I've no time for this.
#'
#' @param x numeric vector
#' @param y numeric vector
#' @param na.rm logical vector of length 1
#'
#' @return
#' Returns a numeric vector.
#'
#' @export
lin.regr <- function(x, y, na.rm=FALSE)
{
    x <- .Call("lin_regr", x, y, na.rm, PACKAGE="Simregr")
    cat(x)
}
