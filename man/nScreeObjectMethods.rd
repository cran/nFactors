\name{nScreeObjectMethods}
\alias{is.nScree}
\alias{plot.nScree}
\alias{print.nScree}
\alias{summary.nScree}


\title{ Utility Functions for nScree Class Objects}

\description{
 Utility functions for \code{nScree} class objects. Some of these functions are
 already implemented in the \code{nFactors} package, but are easier to use with
 generic functions like these.
 }

\usage{
 \method{is}{nScree}     (object)
 \method{plot}{nScree}   (x, ...)
 \method{print}{nScree}  (x, ...)
 \method{summary}{nScree}(object, ...)
 }

\arguments{
  \item{x}{         nScree: an object of the class \code{nScree}}
  \item{object}{    nScree: an object of the class \code{nScree}}
  \item{...}{       variable: additionnal parameters to give to the \code{print}
                    function with \code{print.nScree}, the \code{plotnScree} with
                    \code{plot.nScree} or to the \code{summary} function with
                    \code{summary.nScree}}
 }


\value{
 Generic functions for the nScree class:

  \item{is.nScree}{       logical: is the object of the class \code{nScree}? }
  \item{plot.nScree }{    graphic: plots a figure according to the \code{plotnScree}
                          function}
  \item{print.nScree }{   numeric: vector of the number of components/factors to
                          retain: same as the \code{Components} vector from the \code{nScree}
                          object}
  \item{summary.nScree }{ data.frame: details of the results from a nScree analysis:
                          same as the \code{Analysis} data.frame from the \code{nScree}
                          object, but with easier control of the
                          number of decimals with the \code{digits} parameter}
 }

\seealso{
 \code{\link{plotuScree}}, 
 \code{\link{plotnScree}},
 \code{\link{parallel}},
 \code{\link{plotParallel}},  
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

\examples{
## INITIALISATION
 data(dFactors)                      # Load the nFactors dataset
 attach(dFactors)
 vect         <- Raiche              # Use the example from Raiche
 eigenvalues  <- vect$eigenvalues    # Extract the observed eigenvalues
 nsubjects    <- vect$nsubjects      # Extract the number of subjects
 variables    <- length(eigenvalues) # Compute the number of variables
 rep          <- 100                 # Number of replications for the parallel analysis
 cent         <- 0.95                # Centile value of the parallel analysis

## PARALLEL ANALYSIS (qevpea for the centile criterion, mevpea for the mean criterion)
 aparallel    <- parallel(var     = variables,
                          subject = nsubjects, 
                          rep     = rep, 
                          cent    = cent
                          )$eigen$qevpea  # The 95 centile

## NOMBER OF FACTORS RETAINED ACCORDING TO DIFFERENT RULES 
 results      <- nScree(x=eigenvalues, aparallel=aparallel)
 
 is.nScree(results)
 results
 summary(results)
 
## PLOT ACCORDING TO THE nScree CLASS 
 plot(results)
 }

\keyword{ multivariate }

