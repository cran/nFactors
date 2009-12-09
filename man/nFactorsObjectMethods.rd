\name{nFactorsObjectMethods}
\alias{is.nFactors}
\alias{print.nFactors}
\alias{summary.nFactors}

\title{ Utility Functions for nScree Class Objects}

\description{
 Utility functions for \code{nFactors} class objects.
 }

\usage{
 \method{is}{nFactors}     (object)
 \method{print}{nFactors}  (x, ...)
 \method{summary}{nFactors}(object, ...)
 }

\arguments{
  \item{x}{         nFactors: an object of the class nFactors}
  \item{object}{    nFactors: an object of the class nFactors}
  \item{...}{       variable: additionnal parameters to give to the \code{print}
                    function with \code{print.nFactors} or to the \code{summary}
                    function with
                    \code{summary.nFactors}}
 }


\value{
 Generic functions for the nFactors class:

  \item{is.nFactors}{       logical: is the object of the class nFactors? }
  \item{print.nFactors }{   numeric: vector of the number of components/factors to
                            retain: same as the \code{nFactors} vector from the \code{nFactors}
                            object}
  \item{summary.nFactors }{ data.frame: details of the results from a nFactors object:
                            same as the \code{details} data.frame from the \code{nFactors}
                            object, but with easier control of the
                            number of decimals with the \code{digits} parameter}
 }

\seealso{
 \code{\link{nBentler}},
 \code{\link{nBartlett}},
 \code{\link{nCng}},
 \code{\link{nMreg}},
 \code{\link{nSeScree}}
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
## SIMPLE EXAMPLE
 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues
 N        <- dFactors$Raiche$nsubjects

 res <- nBartlett(eig,N); res; is.nFactors(res); summary(res, digits=2)
 res <- nBentler(eig,N);  res; is.nFactors(res); summary(res, digits=2)
 res <- nCng(eig);        res; is.nFactors(res); summary(res, digits=2)
 res <- nMreg(eig);       res; is.nFactors(res); summary(res, digits=2)
 res <- nSeScree(eig);    res; is.nFactors(res); summary(res, digits=2)
 
## SIMILAR RESULTS, BUT NOT A nFacors OBJECT
 res <- nScree(eig);      res; is.nFactors(res); summary(res, digits=2)
 }

\keyword{ multivariate }

