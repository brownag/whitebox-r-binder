options(repos = c("http://r-spatial.r-universe.dev/",
                  getOption("repos")))
install.packages(c("whitebox", "devtools", "Rcpp", 
                   "terra", "sf", "ggplot2", "tidyterra", 
                   "rmarkdown", "httr", "caTools", "rprojroot"))
remotes::install_github("giswqs/whiteboxR")
