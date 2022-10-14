test_that("binning_numbers gives the right frequency", {
  expect_equal(as.vector(binning_numbers(0:10, 2)), rep(2,5))
})
