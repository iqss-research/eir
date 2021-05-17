#@x - ei.object to plot
#Plots in ei.

plot.ei <- function(x, ...){
  ei.object <- x
  function.list <- list("tomogD" = .tomog, "tomog"=.tomogl,
                        "tomogCI"=.tomog80CI, "tomogCI95"=.tomog95CI,
                        "tomogE"=.tomogE, "tomogP" = .tomogP2,
                        "betab"=.betabd,
                        "betaw"=.betawd, "xt"=.xt, "xtc"=.xtc,
                        "xtfit"=.xtfit, "xtfitg"=.xtfitg,
                        "estsims"=.estsims, "boundXb"=.boundXb,
                        "boundXw"=.boundXw,
                        "truth"=.truthfn,"eiRxCtomog"=.bndplot,
                        "movieD"=.movieD, "movie"=.movie)
  arguments <- list(...)
  results <- list()
  if (length(arguments)!=1) {row = round(length(arguments)/2+.1)
                             par(mfrow=c(row, 2))
                           }
  for (arg in arguments) {
    if (arg %in% names(function.list)){
      results[[arg]] <- function.list[[arg]] (ei.object)
    }
    else
      results[[arg]] <- NA
  }
}
