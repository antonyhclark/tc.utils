#' Title
#'
#' @param x a string
#'
#' @return the same string but enclosed with quotes
#' @export
#'
#' @examples
add_quotes <- function(x){
  x_quoted <- paste0('\"',x,'\"')
  return(x_quoted)
}
