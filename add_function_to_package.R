# DUMMY CHANGE 3/5/21
# another dummy change
# another dummy change
# The purpose of this script is to define a workflow
# for adding new functions to a package.
# Follow these steps to add a package to an existing package
library(devtools) # this package was written to make R package dev easy

# This will be the name of the .R script of the function
# It makes sense to name the function and the script file with the same name
new_function_name <- "get_age_from_dob"

# Make sure this script (add_function_to_package.R) is NOT in the R folder!!!
# It should be in the root project folder
getwd()

usethis::use_r(new_function_name) # create the .R script file in ./R dir

# insert Roxygen skeleton and update documentation (document())
# to insert Roxygen skeleton, put cursor in function def
# then go to Code/Insert Roxygen Skeleton - special comments should appear above function def.
# do not forget to add an example otherwise function won't
# by available after package is installed.

document() # update NAMESPACE, write help (.Rd) files
load_all() # load functions locally, after this you should be able to run functions in package e.g. at the bottom of this script

use_test(new_function_name) # build unit test script - creates .R script to unit test function

# if you are using a function (1st) within the package within another function (2nd) within the package,
# add the 1st function via document() before trying to add the second (to the namespace) via document()


#!!! ALWAYS add any external packages used in your package to the DESCRIPTION file under 'Imports:'
# In a given R script (at the moment, 5/3/21, I am using one script per function),
# either have package::function in the code OR import specific functions via the Roxygen skeleton,
# e.g. "@importFrom lubridate today interval duration" to avoid using :: with those functions OR
# e.g. "@import lubridate" in which case any function can be used in code without ::

check() # check that the package is in order

# Some test runs of
get_age_from_dob(as.Date('1979-06-21'))
get_value_from_key(c("x"="This is x"),"x")

# Spot check documentation manually
?tc.utils::`%>%`
?tc.utils::get_age_from_dob

