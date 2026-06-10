library(testthat)

test_that("test1", {
  expect_equal(selection_sort(numeric(0)), numeric(0))
  expect_equal(insertion_sort(numeric(0)), numeric(0))
  expect_equal(quick_sort(numeric(0)), numeric(0))
  
  expect_equal(selection_sort(42), 42)
  expect_equal(insertion_sort(42), 42)
  expect_equal(quick_sort(42), 42)
  
  expect_equal(selection_sort(c(10, 20, 30, 40)), c(10, 20, 30, 40))
  expect_equal(insertion_sort(c(10, 20, 30, 40)), c(10, 20, 30, 40))
  expect_equal(quick_sort(c(10, 20, 30, 40)), c(10, 20, 30, 40))

  expect_equal(selection_sort(c(5, 4, 3, 2, 1)), 1:5)
  expect_equal(insertion_sort(c(5, 4, 3, 2, 1)), 1:5)
  expect_equal(quick_sort(c(5, 4, 3, 2, 1)), 1:5)

  expect_equal(selection_sort(c(3, 3, 3, 3, 3)), c(3, 3, 3, 3, 3))
  expect_equal(insertion_sort(c(3, 3, 3, 3, 3)), c(3, 3, 3, 3, 3))
  expect_equal(quick_sort(c(3, 3, 3, 3, 3)), c(3, 3, 3, 3, 3))
})

test_that("test2",{
  expect_equal(selection_sort(c(3, -1, 3, 0, -5, 0, 2)), c(-5, -1, 0, 0, 2, 3, 3))
  expect_equal(insertion_sort(c(3, -1, 3, 0, -5, 0, 2)), c(-5, -1, 0, 0, 2, 3, 3))
  expect_equal(quick_sort(c(3, -1, 3, 0, -5, 0, 2)), c(-5, -1, 0, 0, 2, 3, 3))

  expect_equal(selection_sort(c(3.2, -1.9, 3.1, 0.7, -5.2, 0.9, 2.4)), c(-5.2, -1.9, 0.7, 0.9, 2.4, 3.1, 3.2))
  expect_equal(insertion_sort(c(3.2, -1.9, 3.1, 0.7, -5.2, 0.9, 2.4)), c(-5.2, -1.9, 0.7, 0.9, 2.4, 3.1, 3.2))
  expect_equal(quick_sort(c(3.2, -1.9, 3.1, 0.7, -5.2, 0.9, 2.4)), c(-5.2, -1.9, 0.7, 0.9, 2.4, 3.1, 3.2))
})

test_that("test3",{
  set.seed(123)
  random_vector <- rnorm(100)
  expected_values <- sort(random_vector)
  
  expect_equal(selection_sort(random_vector), expected_values)
  expect_equal(insertion_sort(random_vector), expected_values)
  expect_equal(quick_sort(random_vector), expected_values)
})

test_that("test4",{
  expect_error(selection_sort(c(3, NA, 1)), regexp = "x contains NA or NAN or Inf")
  expect_error(insertion_sort(c(3, NA, 1)), regexp = "x contains NA or NAN or Inf")
  expect_error(quick_sort(c(3, NA, 1)), regexp = "x contains NA or NAN or Inf")
})

test_that("test5",{
  expect_error(selection_sort(c(3, "hi", 1)), regexp = "x not numeric")
  expect_error(insertion_sort(c(3, "hi", 1)), regexp = "x not numeric")
  expect_error(quick_sort(c(3, "hi", 1)), regexp = "x not numeric")
})