# install.packages("remotes")
remotes::install_github("jhelvy/xaringanBuilder", dependencies = TRUE, force = T)
remotes::install_github("rstudio/chromote")

library(xaringanBuilder)
library(webshot)

build_pdf("presentation/index.Rmd")
webshot("presentation/index.html","test.pdf")

build_pdf("presentation/index.Rmd", complex_slides = TRUE, partial_slides = TRUE)
