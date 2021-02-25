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
#' write.csv(x=data.frame(v1=rnorm(n=1e6),
#' v2=rnorm(n=1e6)),
#' file="~/dummy_data.csv")
#' make_head_file("~/dummy_data.csv")
make_head_file <- function(big_file_path, n_rows = 1000) {
  n_rows <- 100
  n_rows <- n_rows + 1 # add one to account for assumed header

  big_file_path <- path.expand("~/dummy_data.csv")


  big_file_name <- basename(big_file_path)
  suffix <- paste0("_n", n_rows - 1, ".")
  small_file_name <- gsub("\\.", suffix, big_file_name)
  small_file_path <-
    file.path(dirname(big_file_path), small_file_name)
  this_command <- paste(
    "head",
    paste0("-", n_rows),
    add_quotes(big_file_path),
    ">",
    add_quotes(small_file_path)
  )

  system_response <- system(this_command, intern = T)
  cat(paste("Small file path:  ", small_file_path))
  cat(system_response)
}
