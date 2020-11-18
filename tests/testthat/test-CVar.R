test_that("calculations work for numeric vector", {
  expect_equal(CVar(1:4),mean(1:4)/sd(1:4))
})

test_that("calculations work for vector containing NA's", {
  expect_equal(CVar(c(1:4,NA),remove_na = T),
               mean(c(1:4,NA),na.rm = T)/sd(c(1:4,NA),na.rm = T))
})

test_that("error message", {
  expect_error(CVar(c(1:4,"A")), "The input values are not numeric vectors\n")
})

