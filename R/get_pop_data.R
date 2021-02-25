#' Get DataZone population file from cl-out
#'
#' @param pop_file_path RDS file path
#'
#' @return Population data in long format in tibble
#' @export
#'
#' @examples
#' get_pop_data("/conf/linkage/output/lookups/Unicode/Populations/Estimates/DataZone2011_pop_est_2011_2019.rds")

get_pop_data <- function(pop_file_path =
                           "/conf/linkage/output/lookups/Unicode/Populations/Estimates/DataZone2011_pop_est_2011_2019.rds") {
  df_pop_wide <- readRDS(pop_file_path)
  age_cols <- df_pop_wide %>% dplyr::select(dplyr::contains("age")) %>% colnames()
  df_pop_long <- df_pop_wide %>%
    tidyr::pivot_longer(
      cols = dplyr::all_of(age_cols),
      names_to = "age",
      values_to = "pop"
    )
  return(df_pop_long)
}
