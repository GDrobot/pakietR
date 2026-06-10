#' @useDynLib pakietR
"_PACKAGE"

#' @title SelectionSort
#'
#' @description
#' Sorts a numeric vector with the SelectionSort algorithm
#'
#' @param x numeric vector to be sorted
#'
#' @return Returns a sorted numeric vector.
#' @export
#'
#' @examples
#' selection_sort(c(4, 2, 8, 1, 5))
#' stopifnot(selection_sort(c(3, 1, 2)) == c(1, 2, 3))
selection_sort <- function(x) {
    .Call("SelectionSort", x, PACKAGE = "pakietR") # nolint
}

#' @title InsertionSort
#'
#' @description
#' Sorts a numeric vector with the InsertionSort algorithm
#'
#' @param x numeric vector to be sorted
#'
#' @return Returns a sorted numeric vector.
#' @export
#'
#' @examples
#' insertion_sort(c(4, 2, 8, 1, 5))
#' stopifnot(insertion_sort(c(3, 1, 2)) == c(1, 2, 3))
insertion_sort <- function(x) {
    .Call("InsertionSort", x, PACKAGE = "pakietR") # nolint
}

#' @title QuickSort
#'
#' @description
#' Sorts a numeric vector with the Quick Sort algorithm.
#'
#' @param x numeric vector to be sorted
#'
#' @return Returns a sorted numeric vector.
#' @export
#'
#' @examples
#' quick_sort(c(4, 2, 8, 1, 5))
#' stopifnot(quick_sort(c(3, 1, 2)) == c(1, 2, 3))
quick_sort <- function(x) {
    .Call("QuickSort", x, PACKAGE = "pakietR") # nolint
}
