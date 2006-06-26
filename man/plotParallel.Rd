\name{plotParallel}
\alias{plotParallel}
\title{ PLOT A PARRALLEL ANALYSIS CLASS OBJECT }

\description{
 Plot a scree plot adding information about a parallel analysis.
}

\usage{
 plotParallel(x, 
              eig     = NA, 
              legend = TRUE,
              ylab   = "Eigenvalue",
              xlab   = "Component",
              main   = "Parallel Analysis"
              )
}

\arguments{
  \item{x}{       Result of a previous parallel analysis }
  \item{eig}{     Eigenvalues }
  \item{main}{    Title of the plot }
  \item{xlab}{    Label of the x axis }
  \item{ylab}{    Label of the y axis }
  \item{legend}{  Logical indicator of the presence or not of a legend }
}
\details{
  If \code{eig} is \code{FALSE} the plot shows only the parallel analysis without eigenvalues.
}

\value{
 Nothing returned.
}

\references{ 
Raiche, G., Riopel, M. and Blais, J.-G. (2006). \emph{Non graphical solutions for the Cattell's scree test}. 
Paper presented at the International Annual meeting of the Psychometric Society, Montreal. 
[\url{http://www.er.uqam.ca/nobel/r17165/RECHERCHE/COMMUNICATIONS/}] 
}

\author{ 
    Gilles Raiche, Universite du Quebec a Montreal
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
}


\seealso{ 
 \code{\link{plotuScree}}, 
 \code{\link{nScree}},
 \code{\link{plotnScree}}, 
 \code{\link{parallel}}  
}

\examples{
## SIMPLE EXAMPLE OF A PARALLEL ANALYSIS
## OF A CORRELATION MATRIX WITH ITS PLOT
 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues
 subject  <- dFactors$Raiche$nsubjects
 var      <- length(eig)
 rep      <- 100
 cent     <- 0.95
 results  <- parallel(subject,var,rep,cent)

 results


## PARALLEL ANALYSIS SCREE PLOT
 plotParallel(results)
 
}
\keyword{ multivariate }

