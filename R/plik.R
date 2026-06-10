#' @useDynLib Simregr
"_PACKAGE"

#' @title
#' Linear Regression
#'
#' @description
#' Function takes two vectors of the same length and
#' calculates the best-fit linear function using
#' Method of Least Squares.
#'
#' @param x numeric vector
#' @param y numeric vector
#' @param na.rm logical vector of length 1
#'
#' @return
#' Returns a numeric vector with two elements,
#' the first one is slope of the linear function
#' which is best-fit for the data given, and the second
#' value is the y-intercept.
#'
#' @export
lin.regr <- function(x, y, na.rm=FALSE)
{
    m <- .Call("lin_regr", x, y, na.rm, PACKAGE="Simregr")
    cat(m,"\n")
    m
}
