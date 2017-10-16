#' Save_as_csv
#' @description Cette fonction enregistre un jeu de données au format csv
#' @param dataset un jeu de données
#' @param filename un nom de fichier
#' @param row.names des noms de lignes
#' @import assertthat
#' @importFrom utils write.csv2
#' @examples
#' \dontrun{
#' save_as_csv(fichier)
#' }
#' @export

save_as_csv <- function (dataset, filename, row.names = FALSE, ...) {

  asserthat::assert_that(has_extension(filename,"csv"))
  asserthat::assert_that(is.dir(dirname(filename)))
  asserthat::assert_that(is.writeable(dirname(filename)))
  asserthat::assert_that(not_empty(dirname(filename)))
  asserthat::assert_that(not_empty(dataset))
  asserthat::assert_that(is.data.frame(dataset))

  write.csv2(x = dataset, file = filename, row.names = row.names, ...)

  invisible(normalizePath(filename))

}
