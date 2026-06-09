#ifndef R_NO_REMAP
#define R_NO_REMAP
#endif
#include <R.h>
#include <Rinternals.h>
#include <stdio.h>



double sum1(const double *x, size_t n)
{
    double r=0;
    for(size_t i=0; i<n; i++)
        r += x[i];
    return r;
}

int sum1(const int *x, size_t n)
{
    int r=0;
    for(size_t i=0; i<n; i++)
        r += x[i];
    return r;
}

double* mnoz1(const double* x,const double* y, size_t n)
{
    double* r = (double*)malloc(n * sizeof(double))
    for(size_t i=0; i<n; i++)
        r[i] = x[i]*y[i];
    return r;
}

int* mnoz2(const int* x,const int* y, size_t n)
{
    int* r = (int*)malloc(n * sizeof(int))
    for(size_t i=0; i<n; i++)
        r[i] = x[i]*y[i];
    return r;
}

double* square1(const double *x, size_t n)
{
    double* r = (double*)malloc(n * sizeof(double));
    for(size_t i=0; i<n; i++)
        r[i] = x[i] * x[i];
    return r;
}

int* square2(const int *x, size_t n)
{
    int* r = (int*)malloc(n * sizeof(int));
    for(size_t i=0; i<n; i++)
        r[i] = x[i] * x[i];
    return r;
}

SEXP lin_regr(SEXP x, SEXP y, SEXP na_rm)
{

    if ((!Rf_isReal(x)) && (!Rf_isInteger(x))) Rf_error("x is not numeric vector");
    if ((!Rf_isReal(y)) && (!Rf_isInteger(y)) Rf_error("y is not numeric vector");
    if(!(Rf_isLogical(na_rm))) Rf_error("na.rm is not logical");
    if(!(XLENGTH(na_rm) == 1)) Rf_error("na.rm is not of length 1");

    size_t nx = XLENGTH(x);
    size_t ny = XLENGTH(y);
    if(!(nx == ny)) Rf_error("x and y are not of the same length");

    double r[2];

    if(Rf_isInteger(x) && Rf_isInteger(y)){
        int *px = INTEGER(x);
        int *py = INTEGER(y);
        int *pxy = mnoz2(x, y, nx);
        int *pxx = mnoz2(x, x, nx);
        int *pxsq = square2(x, nx);
        int pxsum = sum2(px, nx);
        r[0] = ((nx * sum2(pxy, nx)) - (pxsum * sum2(py, ny)))/(nx * sum2(pxsq, nx) - pxsum * pxsum)

    }
    else
    {
        double *px = REAL(x);
        double *py = REAL(y);
    }



    SEXP z = Rf_allocVector(REALSXP, 2);
    PROTECT(z);
    UNPROTECT(z);
    return z;

}
