test_that("calculations work for numeric vector", {
  expect_equal(range(1:4),3)
})

test_that("calculations work for vector containing NA's", {
  expect_equal(range(c(1:4,NA),remove_na = T),3)
})

test_that("error message", {
  expect_error(range(c(1:4,"A")), "The input values are not numeric vectors\n")
})

