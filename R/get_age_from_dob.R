#' Calculate age
#'
#' By default, calculates the typical "age in years", with a
#' \code{floor} applied so that you are, e.g., 5 years old from
#' 5th birthday through the day before your 6th birthday. Set
#' \code{floor = FALSE} to return decimal ages, and change \code{units}
#' for units other than years.
#' @param dob date-of-birth, the day to start calculating age.
#' @param age_day the date on which age is to be calculated.
#' @param units unit to measure age in. Defaults to \code{"years"}. Passed to \code{\link[lubridate:duration]{lubridate::duration()}}.
#' @param floor boolean for whether or not to floor the result. Defaults to \code{TRUE}.
#' @return Age in \code{units}. Will be an integer if \code{floor = TRUE}.
#' @export
#' @importFrom lubridate today interval duration
#' @examples
#' my_dob <- as.Date('1983-10-20')
#' get_age_from_dob(my_dob)
#' get_age_from_dob(my_dob, units = "minutes")
#' get_age_from_dob(my_dob, floor = FALSE)

get_age_from_dob <- function(dob,
                             age_day = today(),
                             units = "years",
                             floor = TRUE) {
  age = interval(dob, age_day) / duration(num = 1, units = units)
  if (floor)
    return(as.integer(floor(age)))
  return(age)
}
