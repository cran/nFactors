\name{moreStats}
\alias{moreStats}

\title{ Statistical Summary of a Data Frame}

\description{
  This function produces another summary of a \code{data.frame}. This function
  was proposed in order to apply some functions globally on a \code{data.frame}:
  \code{quantile}, \code{median}, \code{min} and \code{max}. The usual \emph{R}
  version cannot do so.
 }

\usage{
 moreStats(x, quantile=0.95, show=FALSE)
 }

\arguments{

  \item{x}{          numeric: matrix or \code{data.frame}.}
  \item{quantile}{   numeric: quantile of the distribution.}
  \item{show}{       logical: if \code{TRUE} prints the quantile choosen.}
 }
 
\value{
  \item{values}{ numeric: \code{data.frame} of statistics:
                 mean, median, quantile, standard deviation, minimum and maximum. }
 }
 
\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\seealso{
 \code{\link{plotuScree}},
 \code{\link{nScree}},
 \code{\link{plotnScree}},
 \code{\link{plotParallel}}
 }

\examples{
## GENERATION OF A MATRIX OF 100 OBSERVATIONS AND 10 VARIABLES
 x   <- matrix(rnorm(1000),ncol=10)

## STATISTICS
 res <- moreStats(x, quantile=0.05, show=TRUE)
 res
 }

\keyword{ multivariate }

