# pasted from: 
# http://jfisher-usgs.github.io/

KnitPost <- function(input, base.url = "/") {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}
# KnitPost("2012-07-03-knitr-jekyll.Rmd")

getwd()
setwd("~/Websites/crtahlin.github.com/_drafts/")

KnitPost("2014-08-04-Dynamic-Graphs-from-BAMC-Credit-Data.Rmd")
KnitPost("2014-08-05-Demo-Post.Rmd")
