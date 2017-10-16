#' my_csv_reader
#'
#' Lit des fichiers au format ".csv"
#' @param x un dossier
#' @return (ouvre le fichier)
#' @import assertthat
#' @examples
#' my_csv_reader(fichier.csv)
#' @export

my_csv_reader <- function(folder = getwd()) {
  files <- (list.files(folder, pattern = ".*csv$", full.names = TRUE))
  output <- lapply(files,read.csv)
  names(output) <- basename(files)
  return (output)
}
