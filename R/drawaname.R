#' Draw_a_name
#' @description Dessine un graphique du nombre de fois que le prénom a été donné par année
#' @param pren Le prénom en question
#' @param s Le genre du prénom
#' @return un graphique ggplot du prénom
#' @import ggplot2
#' @import assertthat
#' @importFrom magrittr %>%
#' @examples
#' \dontrun{
#' draw_a_name()
#' draw_a_name("Gustave","M")
#' draw_a_name("Marie","F")
#' }
#' @export

draw_a_name <- function(pren = "Vincent", s = "M") {
  assertthat::assert_that(is.character(pren))
  assertthat::assert_that(is.character(s))
  ggplot2::ggplot(prenoms %>%
           filter(name == pren, sex ==s) %>%
           group_by(year) %>%
           summarize(Total = sum(n)),
         aes(year,Total)) + geom_line() + ggtitle(paste("Number of ",pren," in time"))
}
