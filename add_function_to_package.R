# Follow these steps to add a package to an existing package
library(devtools)

new_function_name <- "get_nice_colnames"

# Make sure this script is NOT in the R folder!!!
# It should be in the root project folder
getwd()

usethis::use_r(new_function_name) # create the .R script file in ./R dir
# insert roxygen skeleton and update documentation
# do not forget to add an example otherwise function won't
# by available after package is installed

use_test("get_value_from_key") # build unit test script
load_all() # if you are using a function (1st) within the package within another function (2nd) within the package, add the 1st function via document() before trying to add the second (to the namespace) via document()
document()
check() # check that the package is in order

github
#install.packages("gert")
tc.utils::get_value_from_key(c("x"="This is x"),"x")
