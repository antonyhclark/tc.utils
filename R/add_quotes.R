#' Add escaped quotes around a string
#'
#' This may be useful e.g. in preparing a Linux command to be
#' invoked via system()
#'
#' @param x a string
#'
#' @return the same string but enclosed with quotes
#' @export
#'
#' @examples
#' add_quotes("x")=='\"x\"'
add_quotes <- function(x){
  x_quoted <- paste0('\"',x,'\"')
  return(x_quoted)
}
