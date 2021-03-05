test_that("Gets Tony's age right on 2021-03-05", {
  my_dob <- as.Date('1979-06-21')
  this_age_day <- as.Date('2021-03-05')
  expect_equal(get_age_from_dob(dob=my_dob,age_day=this_age_day), 41)
})
