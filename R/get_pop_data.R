#' Get DataZone population file from cl-out
#'
#' @param pop_file_path RDS file path
#'
#' @return Population data in long format in tibble
#' @export
#'
#' @examples
#' df_pop <-get_pop_data("/conf/linkage/output/lookups/Unicode/Populations/Estimates/DataZone2011_pop_est_2011_2019.rds")
#' @importFrom tidyr as_tibble
get_pop_data <- function(pop_file_path =
                           "/conf/linkage/output/lookups/Unicode/Populations/Estimates/DataZone2011_pop_est_2011_2019.rds") {
  as_tibble(readRDS(pop_file_path))

}
get_pop_data()
