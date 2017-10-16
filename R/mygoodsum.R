#' My_good_sum
#' @description This computes the sum of two numbers
#' @param x a number
#' @param y another number
#' @return the sum
#' @import assertthat
#' @examples
#' \dontrun{
#' my_good_sum(3,4)
#' }
#' @export

my_good_sum <- function(x,y){

  assertthat::assert_that(is.number(x))
  assertthat::assert_that(is.number(y))

  return(x+y)
  }
