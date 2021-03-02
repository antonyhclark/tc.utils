# Follow these steps to add a package to an existing package
library(devtools)

# Make sure this script is NOT in the R folder!!!
# It should be in the root project folder
getwd()

usethis::use_r(new_function_name) # create the .R script file in ./R dir
# insert roxygen skeleton and update documentation
# do not forget to add an example otherwise function won't
# by available after package is installed
roxygen2::roxygenise() # this will build a help file for the new function
use_test(new_function_name) # build unit test script


check() # check that the package is in order

github
#install.packages("gert")
