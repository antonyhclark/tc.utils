
test_that("stats path conversion",{
  win_path <- "\\\\stats\\LIST_analytics\\Glasgow City"
  lin_path <- "/conf/LIST_analytics/Glasgow City"
  expect_equal(win_to_lin(win_path),lin_path)
})
