#' Is_leap_year
#' @description Détermine si une année est bissextile
#' @param x une année
#' @return une belle phrase disant si l'année est bissextile
#' @import assertthat
#' @import lubridate
#' @examples
#' \dontrun{
#' is_leap_year(2013)
#' }
#' @export

is_leap_year <- function(x) {
  assertthat::assert_that(is.numeric(x) | is.Date(x) | is.POSIXt(x))
  lubridate::leap_year(x)}
