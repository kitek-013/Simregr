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
#' @examples
#' lin.regr(1:10, 11:20)
#' x <- seq(0, pi, pi/16)
#' lin.regr(x, sin(x))
#'
#' @export
lin.regr <- function(x, y, na.rm=FALSE)
{
    m <- .Call("lin_regr", x, y, na.rm, PACKAGE="Simregr")
    plot(x, y, col = "navy", lwd = 2,
    xlab = "X",
    ylab = "Y",
    main = "Linear regression with Method of Least Squares"
    )
    abline(a = m[2], b = m[1], col = "red", lwd = 3)
    legend("topleft",
       legend = sprintf("y = %.2f + %.2fx", m[1], m[2]),
       col = "red",
       lty = 1,
       lwd = 2,
       bty = "n")

    m
}
