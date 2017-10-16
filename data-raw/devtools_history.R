devtools::use_data_raw()
devtools::use_data(iris)
devtools::use_data(jeux)

devtools::use_package("magrittr")
devtools::use_package("ggplot2")
devtools::use_package("stats")
devtools::use_package("tidyr")
devtools::use_package("readxl")
devtools::use_package("prenoms")

devtools::use_vignette("Devoir16oct")
devtools::build_vignettes()
