# Dummy change
# https://r-pkgs.org/whole-game.html
# The above URL is an excellent resource on building packages in R

# Package dependencies

# https://stackoverflow.com/questions/22565024/how-to-properly-include-dependencies-in-r-package
#

# dummy change

# Make sure this script is NOT in the R folder!!!
# It should be in the root project folder
# libs
library(devtools)
# check wd is as expected
# "/conf/LIST_analytics/Glasgow City/Training/TC/tc.utils"
getwd()

# One-time set up stuff ####
# Invoke the following command to get local git to manage the project
# use_git() # use local git, it will be synced with GitHub later
# use_mit_license("Antony H. Clark") # set licence
# use_testthat() # this will help us create test scripts

# add function to package ####
# 0 make script file
use_r("my_function") # create the .R script file in ./R dir

# 1 write function ####
# put function definition in script with same name as function (this is just a convention)
# e.g. my_function <- function(){} ; my_function.R
# this script should go in the R folder of the project folder

# 2 add roxygen skeleton ####
# by place cursor within function def (just after "function(" works).
# then Code/Insert Roxygen Skeleton (menu bar)
# go into script function .R script and add details to Roxygen Skeleton
# These will be used in the help documentation of the function
# 2.1 check documentation
document() # this will build a help file for the new function
# ?make_head_file #test that this bring up the documentation in Help viewer

# 3 check function is now available under package
load_all() # !!! if this script is in R folder, this command will fail !!!
# tc.utils:: #when you type the name of the package,
# the new function should be seen in the dropdown of functions
tc.utils::get_pop_data()

# 4 create test scripts - need to read up on this more
use_test("get_pop_data")

# 5 dependencies - package level
usethis::use_package("tidyr")
usethis::use_package("dplyr")
usethis::use_package("magrittr")
usethis::use_pipe()
test()

document()
check()
build()

# documentation
# open R/<function>.R in the source editor
# and put the cursor somewhere in the function definition.
# Now do Code > Insert roxygen skeleton.
# A very special comment should appear above your function,
# in which each line begins with #'.
# RStudio only inserts a barebones template,
# so you will need to edit it to look something like that below.

# after doing the roxygen step...
document()

check()

# unit testing

use_test("win_to_lin") # this creates ./tests/testthat/test-<function_name>.R
use_test("add_quotes")
# you have to go into these files and define unit tests

# system("git remote rm origin")
# this command has to be used if GitHub repo creation process fails
# to push code (credentials issue?)
usethis::use_github()
# the following command is a workaround # don't think this works!!! see PHS intro to git and github for command line solution that works
# system("git push --set-upstream origin master")

# use the Push button in the Git tab of the Environment pane !!!!!!!!!!****************
# authenticate with username=antonyhclark i.e. actual github username and PAT token


