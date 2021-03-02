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
  df_pop_wide <- readRDS(pop_file_path) %>% dplyr::rename(age90=age90plus)
  age_cols <- df_pop_wide %>% dplyr::select(dplyr::contains("age")) %>% colnames()
  df_pop_long <- df_pop_wide %>%
    tidyr::pivot_longer(
      cols = dplyr::all_of(age_cols),
      names_prefix = "age",
      names_to = "age",
      values_to = "pop"
    )
  df_pop_long  <-  df_pop_long %>%
    dplyr::left_join(get_HSCP_Loc_DZ11_lookup() %>%
                       dplyr::select(datazone2011,hscp_locality))
  cols_of_interest <- c("year", "hb2019name", "hscp2019name",
                        "hscp_locality", "intzone2011name", "datazone2011name",
                        "age","sex","pop","hb2019","hscp2019","intzone2011","datazone2011")
  df_pop_long <- df_pop_long %>% dplyr::select(dplyr::all_of(cols_of_interest),dplyr::contains("simd2020"))
  return(df_pop_long)
}
