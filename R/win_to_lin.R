win_to_lin <- function(win_path){
  tmp_path <- win_path
  # if you don't have the argument fixed=T then you need to escape '\' with '\\\'

  # remove escaped quotes (applies if it's a Windows file path with quotes)
  tmp_path <- gsub("\"","",tmp_path,fixed = T)
  tmp_path <- gsub("\\\\","/",tmp_path,fixed=T)
  tmp_path <- gsub("\\","/",tmp_path,fixed=T)
  tmp_path <- gsub("/cl-out","/linkage/output",tmp_path)
  tmp_path <- gsub("stats","conf",tmp_path)
  lin_path <- tmp_path

}
