#' Title
#'
#' @param win_path a windows file path
#'
#' @return a Linux path on the PHS stats/conf box
#' @export
#'
#' @examples
#' win_to_lin("\\\\Isdsf00d03\\LIST_analytics\\Glasgow City")
win_to_lin <- function(win_path=""){
  if (win_path==""){win_path=readline(prompt = "Enter Windows path: ")}
  tmp_path <- win_path
  # fixed=TRUE seems safer/easier to read when escaping backslash
  # tmp_path <- gsub("\"","",tmp_path,fixed = T)
  tmp_path <- gsub("\\\\","/",tmp_path,fixed=T)
  tmp_path <- gsub("\\","/",tmp_path,fixed=T)

  # odd case of linkage files directory
  tmp_path <- gsub("/cl-out","/linkage/output",tmp_path)
  tmp_path <- gsub("Isdsf00d03","conf",tmp_path)
  tmp_path <- gsub("stats","conf",tmp_path)
  lin_path <- tmp_path
  return(lin_path)

}
