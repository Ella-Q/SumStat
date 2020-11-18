test_that("calculations work for numeric vector", {
  expect_equal(CVar(1:4),mean(1:4)/sd(1:4))
})

test_that("calculations work for vector containing NA's", {
  expect_equal(CVar(c(1:4,NA),remove_na = T),
               mean(c(1:4,NA),na.rm = T)/sd(c(1:4,NA),na.rm = T))
})

test_that("calculations work for a numeric list", {
  expect_equal(CVar(list(1:4,2:5)), c(mean(1:4)/sd(1:4),mean(2:5)/sd(2:5)))
})

