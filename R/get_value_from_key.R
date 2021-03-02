#' TBC
#'
#' @param key A name in the named vector
#' @param key_value_vector A named vector
#'
#' @return
#' @export
#'
#' @examples
#' get_value_from_key(c("x"="This is x"),"x")
get_value_from_key <- function(key_value_vector,key){
  if (!is.na(key_value_vector[key])){
    return(key_value_vector[key])}
  else
    return(key)
}
