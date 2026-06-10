#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>
#include <stdio.h>

SEXP SelectionSort(SEXP x)
{
if(!Rf_isReal(x)) Rf_error("x not numeric");
int var=0;
if (Rf_isInteger(x)) var=1;
size_t n = XLENGTH(x);
if(n<=1) return x;//validation

SEXP ans = Rf_allocVector(REALSXP,n);
PROTECT(ans);
double *px=REAL(x),*pans=REAL(ans);
for(size_t i=0;i<n;i++)
{
pans[i]=px[i];
if (!R_finite(pans[i])) Rf_error("x contains NA or NAN or Inf");
}//creating vector and validation

double temp;
size_t pos=0;
for(size_t i=0;i<n-1;i++)
{
for(size_t j=i+1;j<n;j++)
if(pans[j]<pans[pos])
pos=j;
temp=pans[i];
pans[i]=pans[pos];
pans[pos]=temp;
pos=i+1;
}//algorithm

UNPROTECT(1);
if(var==1)
ans=Rf_coerceVector(ans, INTSXP);
return ans;//showing result
}

SEXP InsertionSort(SEXP x)
{
if(!Rf_isReal(x)) Rf_error("x not numeric");
int var=0;
if (Rf_isInteger(x)) var=1;
size_t n = XLENGTH(x);
if(n<=1) return x;//validation

SEXP ans = Rf_allocVector(REALSXP,n);
PROTECT(ans);
double *px=REAL(x),*pans=REAL(ans);
for(size_t i=0;i<n;i++)
{
pans[i]=px[i];
if (!R_finite(pans[i])) Rf_error("x contains NA or NAN or Inf");
}//creating vector and validation

double val=pans[1];
int j=0;
for(size_t i=1;i<n;i++)
{
j=i-1;
val=pans[i];
while(j>=0 && val<pans[j])
{
pans[j+1]=pans[j];
j--;
}
pans[j+1]=val;
}//algorithm

UNPROTECT(1);
if(var==1)
ans=Rf_coerceVector(ans, INTSXP);
return ans;//showing result
}

void qs(double *pans, int l,int r)//algorithm
{
if(l>=r) return;
int i=l,j=r;
double p=pans[(l+r)/2],temp;
while(i<=j)
{
while(pans[i]<p) 
i++;
while(pans[j]>p) 
j--;
if(i<=j)
{
temp=pans[i];
pans[i]=pans[j];
pans[j]=temp;
i++;
j--;
}
}
if(j>l)
qs(pans,l,j);
if(i<r)
qs(pans,i,r);
}

SEXP QuickSort(SEXP x)
{
if(!Rf_isReal(x)) Rf_error("x not numeric");
int var=0;
if (Rf_isInteger(x)) var=1;
int l=0,r=XLENGTH(x)-1;
if(r<=0 || l>=r) return x;//validation

SEXP ans = Rf_allocVector(REALSXP,r+1);
PROTECT(ans);
double *px=REAL(x),*pans=REAL(ans);
for(size_t i=0;i<r+1;i++)
{
pans[i]=px[i];
if (!R_finite(pans[i])) Rf_error("x contains NA or NAN or Inf");
}//creating vector and validation

qs(pans,l,r);//algorithm

UNPROTECT(1);
if(var==1)
ans=Rf_coerceVector(ans, INTSXP);
return ans;//showing result
}
