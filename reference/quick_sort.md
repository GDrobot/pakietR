# QuickSort

Sorts a numeric vector with the Quick Sort algorithm.

## Usage

``` r
quick_sort(x)
```

## Arguments

- x:

  numeric vector to be sorted

## Value

Returns a sorted numeric vector.

## Examples

``` r
quick_sort(c(4, 2, 8, 1, 5))
#> [1] 1 2 4 5 8
stopifnot(quick_sort(c(3, 1, 2)) == c(1, 2, 3))
```
