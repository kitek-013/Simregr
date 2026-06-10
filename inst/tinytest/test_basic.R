library(tinytest)
library(Simregr)

stopifnot(lin.regr(c(1:10), c(11:20)) == c(1, 10))

stopifnot(round(lin.regr(c(1, 3, 5), c(1, 9, 25)), 2) == c(6, -6.33))


stopifnot(lin.regr(c(1,2,3,4,5), c(1,2,3,4,10)) == c(2, -2))
