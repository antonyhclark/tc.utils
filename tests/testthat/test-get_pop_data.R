test_that("file size is as expected", {
  expect_true(nrow(get_pop_data())>1e5)
  expect_true(ncol(get_pop_data())==162)

})
