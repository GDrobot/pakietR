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
})

test_that("test2",{
  expect_equal(selection_sort(c(3, -1, 3, 0, -5, 0, 2)), c(-5, -1, 0, 0, 2, 3, 3))
  expect_equal(insertion_sort(c(3, -1, 3, 0, -5, 0, 2)), c(-5, -1, 0, 0, 2, 3, 3))
  expect_equal(quick_sort(c(3, -1, 3, 0, -5, 0, 2)), c(-5, -1, 0, 0, 2, 3, 3))
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
  expect_equal(selection_sort(c(NA,NA,NA)), c(NA,NA,NA))
  expect_equal(insertion_sort(c(NA,NA,NA)), c(NA,NA,NA))
  expect_equal(quick_sort(c(NA,NA,NA)), c(NA,NA,NA))
})