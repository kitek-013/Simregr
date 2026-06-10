# Linear Regression

Function takes two vectors of the same length and calculates the
best-fit linear function using Method of Least Squares.

## Usage

``` r
lin.regr(x, y, na.rm = FALSE)
```

## Arguments

- x:

  numeric vector

- y:

  numeric vector

- na.rm:

  logical vector of length 1

## Value

Returns a numeric vector with two elements, the first one is slope of
the linear function which is best-fit for the data given, and the second
value is the y-intercept.
