\name{plotParallel}
\alias{plotParallel}
\title{ Plot a Parallel Analysis Class Object }

\description{
 Plot a scree plot adding information about a parallel analysis.
 }

\usage{
 plotParallel(parallel,
              eig    = NA,
              x      = eig,
              model  = "components",
              legend = TRUE,
              ylab   = "Eigenvalues",
              xlab   = "Components",
              main   = "Parallel Analysis",
              ...
              )
 }

\arguments{
  \item{parallel}{ numeric:   vector of the results of a previous parallel analysis }
  \item{eig}{      depreciated parameter: eigenvalues to analyse (not used if
                   x is used, recommended)}
  \item{x}{        numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                   correlations or of covariances or a \code{data.frame} of data}
  \item{model}{    character: \code{"components"} or \code{"factors"} }
  \item{main}{     character: title of the plot }
  \item{xlab}{     character: label of the x axis }
  \item{ylab}{     character: label of the y axis }
  \item{legend}{   logical:   indicator of the presence or not of a legend }
  \item{...}{      variable: additionnal parameters to give to the \code{cor} or
                   \code{cov} functions}
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
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
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
 plotParallel(results, x=eig)
 plotParallel(results)

 }
 
\keyword{ Graphics }

