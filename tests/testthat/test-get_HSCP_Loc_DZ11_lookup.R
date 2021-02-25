test_that("dims are as expected", {
  expect_equal(dim( get_HSCP_Loc_DZ11_lookup() ),
               c(6976, 15) # dims of the HSCP-Loc-DZ11 file
               )
})
