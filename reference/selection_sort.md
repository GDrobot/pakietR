# SelectionSort

Sorts a numeric vector with the SelectionSort algorithm

## Usage

``` r
selection_sort(x)
```

## Arguments

- x:

  numeric vector to be sorted

## Value

Returns a sorted numeric vector.

## Examples

``` r
selection_sort(c(4, 2, 8, 1, 5))
#> [1] 1 2 4 5 8
stopifnot(selection_sort(c(3, 1, 2)) == c(1, 2, 3))
```
