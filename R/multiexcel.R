#' Multi_excel
#' @description  Lis un fichier excel (xlsx)
#' @param path le chemin qui mene au fichier excel
#' @import readxl
#' @import assertthat
#' @return a list of dataframes
#' @examples
#' \dontrun{
#' my_csv_reader("fichier.xlsx")
#' }
#' @export

multi_excel <- function(path) {
  asserthat::assert_that(has_extension(path,".xlsx"))
  asserthat::assert_that(is.dir(dirname(path)))
  sheet_n <- length(excel_sheets(path))
  readxl::readxl_2 <- function(i) {read_xlsx(path,i)}
  lapply(c(1:sheet_n),readxl_2)

}
