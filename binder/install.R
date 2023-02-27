options(repos = c(getOption("repos"), 
                  "https://RcppCore.github.io/drat", 
                  "https://cloud.r-project.org",
                  "http://rspatial.r-universe.dev/bin/linux/jammy/4.2/",
                  "http://rspatial.r-universe.dev/"))
install.packages(c("devtools", "Rcpp", "terra", "rmarkdown", "httr", "caTools", "rprojroot", "ggplot2", "whitebox"))
remotes::install_github("giswqs/whiteboxR")
