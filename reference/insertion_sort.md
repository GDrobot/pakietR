# InsertionSort

Sorts a numeric vector with the InsertionSort algorithm

## Usage

``` r
insertion_sort(x)
```

## Arguments

- x:

  numeric vector to be sorted

## Value

Returns a sorted numeric vector.

## Examples

``` r
insertion_sort(c(4, 2, 8, 1, 5))
#> [1] 1 2 4 5 8
stopifnot(insertion_sort(c(3, 1, 2)) == c(1, 2, 3))
```
