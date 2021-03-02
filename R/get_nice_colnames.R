#' get_nice_colnames
#' Rename columns according to named vector
#' @param r_names Existing column names
#' @param name_dict A named vector mapping existing column names to new names
#'
#' @return
#' @export
#'
#' @examples
#' my_col_dict <- c("mpg"="Miles per gallon")
#' names(mtcars) <- get_nice_colnames(names(mtcars),my_col_dict)
get_nice_colnames <- function(r_names,name_dict){
  nice_names <- sapply(r_names, get_value_from_key,key_value_vector=name_dict)
  return(nice_names)
}
