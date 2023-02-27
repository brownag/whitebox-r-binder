options(repos = c("http://rspatial.r-universe.dev/",
                  "http://r-spatial.r-universe.dev/",
                  getOption("repos"), 
                  "https://RcppCore.github.io/drat", 
                  "https://cloud.r-project.org"))
install.packages(c("whitebox", "devtools", "Rcpp", 
                   "terra", "sf", "ggplot2", "tidyterra", 
                   "rmarkdown", "httr", "caTools", "rprojroot"))
remotes::install_github("giswqs/whiteboxR")
