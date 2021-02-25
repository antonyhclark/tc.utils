#' Get HSCP-Locality-DZ11 lookup file
#'
#' @param file_path string path to the lookup file
#'
#' @return a tibble holding the data from the lookup file
#' @export
#'
#' @examples
#' get_HSCP_Loc_DZ11_lookup()
get_HSCP_Loc_DZ11_lookup <- function(file_path = "/conf/linkage/output/lookups/Unicode/Geography/HSCP Locality/HSCP Localities_DZ11_Lookup_20200825.rds") {
  readRDS(file_path) %>% tidyr::as_tibble()
}
