#' Create small file from big one on file system
#' This function invokes Linux commands to create
#' a smaller file from a bigger one. This may be of use, e.g.,
#' to create a .csv file small enough to inspect in Excel from
#' a very large one.
#' @param big_file_path the full path to a large file (e.g. .csv file)
#' @param n_rows the number of rows to be kept in new small file
#'
#' @return NULL (Console will display full path of small file or Linux response if command fails)
#' @export
#'
#' @examples
#' big_file_path("/conf/LIST_analytics/Glasgow City/Training/TC/big_file.csv")
make_head_file <- function(big_file_path,n_rows=10000){
  nrows <- nrows + 1 # add one to account for assumed header
  big_file_path
  big_file_name <- basename(big_file_path)
  suffix <- paste0("_n",n_rows,".")
  small_file_name <- gsub("\\.",suffix,big_file_name)
  small_file_path <- file.path(dirname(big_file_path),small_file_name)
  this_command <- paste("head",paste0("-n",n_rows),
                        add_quotes(big_file_path),
                        ">",
                        add_quotes(small_file_path))
  system_response <- system(this_command,intern = T)
  cat(paste("Small file path:  ",small_file_path))
  cat(system_response)
}
