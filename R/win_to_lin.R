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
# Example of Windows path - copied from Windows Explorer
# \\stats\LIST_analytics\Glasgow City\COVID19\UC\UC_C19_Weekly_R_Project
win_dir <- rstudioapi::showPrompt(title = "Windows to Linux filepath",message = "Windows path:")

lin_path <- win_to_lin(win_dir)


# Example of Windows file path - from Windows clipboard via right-click 'save as path'
# "\\stats\LIST_analytics\Glasgow City\COVID19\UC\UC_C19_Weekly_R_Project\test_doc.txt"
win_file <- rstudioapi::showPrompt(title = "Windows to Linux filepath",message = "Windows path:")
win_file
lin_file <- win_to_lin(win_file)
lin_file
