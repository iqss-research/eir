\name{tomogRxC}
\alias{tomogRxC}

\title{
  Plotting Ecological Inference Estimates with eiRxC information
}
\description{
 
}
\usage{
tomogRxC(formula, data, total=NULL, refine=100)
}
\arguments{
  \item{formula}{A formula of the form \code{cbind(col1, col2,...)~cbind(row1,row2,...)}}
 \item{data}{data that contains the data that corresponds to the
formula}
\item{total}{`total' is the name of the variable in the dataset that
	  contains the number of individuals in each unit}
\item{refine}{specifies the amount of refinement for the image.  Higher
numbers mean better resolution.} 
}
 
\details{
%%  ~~ If necessary, more details than the description above ~~
}


\references{
Gary King (1997). A Solution to the Ecological Inference Problem.  Princeton: Princeton University Press.
}
\author{
  Gary King <<email: king@harvard.edu>> and Molly Roberts <<email: roberts8@fas.harvard.edu>>
}

\examples{
data(RxCsample)
formula = cbind(turnout, noturnout) ~ cbind(white, black,hisp)
tomogRxC(formula, data=RxCsample)
}
