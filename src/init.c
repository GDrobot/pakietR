#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>
#include <stdlib.h>
#include <R_ext/Rdynload.h>

extern SEXP SelectionSort(SEXP x);
extern SEXP InsertionSort(SEXP x);
extern SEXP QuickSort(SEXP x); 

static const R_CallMethodDef CallEntries[] = {
    {"SelectionSort", (DL_FUNC) &SelectionSort, 1},
    {"InsertionSort", (DL_FUNC) &InsertionSort, 1},
    {"QuickSort",     (DL_FUNC) &QuickSort,     1},
    {NULL, NULL, 0}
};

void R_init_pakietR(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
