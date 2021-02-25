test_that("file size is as expected", {
  expect_true(all(dim(get_pop_data())==c(11426688,73)))
})
