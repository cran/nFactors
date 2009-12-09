\name{structureSimObjectMethods}
\alias{boxplot.structureSim}
\alias{is.structureSim}
\alias{plot.structureSim}
\alias{print.structureSim}
\alias{summary.structureSim}


\title{ Utility Functions for nScree Class Objects}

\description{
 Utility functions for \code{structureSim} class objects Note that with the
 \code{plot.structureSim} a black dotted vertical line shows the median number of
 factors retain by all the different indices.
 }

\usage{
 \method{boxplot}{structureSim} (x, nFactors=NULL, eigenSelect=NULL,
                                 vLine="green", xlab="Factors",
                                 ylab="Eigenvalues", main="Eigen Box Plot", ...)
 \method{is}{structureSim}      (object)
 \method{plot}{structureSim}    (x, nFactors=NULL, index=NULL,
                                 main="Index Acuracy Plot", ...)
 \method{print}{structureSim}   (x, index=NULL, ...)
 \method{summary}{structureSim} (object, index=c(1:15), eigenSelect=NULL, ...)
 }

\arguments{
  \item{eigenSelect}{ numeric: vector of the index of the selected eigenvalues}
  \item{index}{       numeric: vector of the index of the selected indices}
  \item{main}{        character: main title}
  \item{nFactors}{    numeric: if known, number of factors}
  \item{object}{      structureSim: an object of the class structureSim}
  \item{vLine}{       character: color of the vertical indicator line of the
                      initial number of factors in the eigen boxplot}
  \item{x}{           structureSim: an object of the class structureSim}
  \item{xlab}{        character: x axis label}
  \item{ylab}{        character: y axis label}
  \item{...}{         variable: additionnal parameters to give to the
                      \code{boxplot}, \code{plot}, \code{print} and \code{summary
                      functions.} }
 }


\value{
 Generic functions for the structureSim class:
  \item{boxplot.structureSim }{ graphic: plots an eigen boxplot }
  \item{is.structureSim}{       logical: is the object of the class structureSim? }
  \item{plot.structureSim }{    graphic: plots an index acuracy plot}
  \item{print.structureSim }{   numeric: data.frame of statistics about the number
                                of components/factors to retain according to different indices
                                following a \code{structureSim} simulation}
  \item{summary.structureSim }{ list: two data.frame, the first with the details
                                of the simulated eigenvalues, the second with the
                                details of the simulated indices}
 }

\seealso{
 \code{\link{nFactors-package}}
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
 library(xtable)
 library(nFactors)
 nFactors  <- 3
 unique    <- 0.2
 loadings  <- 0.5
 nsubjects <- 180
 repsim    <- 10
 var       <- 36
 pmjc      <- 12
 reppar    <- 10
 zwick     <- generateStructure(var=var, mjc=nFactors, pmjc=pmjc,
                                loadings=loadings,
                                unique=unique)

## SIMULATIONS
mzwick    <-  structureSim(fload=as.matrix(zwick), reppar=reppar,
                           repsim=repsim, details=TRUE,
                           N=nsubjects, quantile=0.5)

## TEST OF structureSim METHODS
 is(mzwick)
 summary(mzwick, index=1:5, eigenSelect=1:10, digits=3)
 print(mzwick, index=1:10)
 plot(x=mzwick, index=c(1:10), cex.axis=0.7, col="red")
 boxplot(x=mzwick, nFactors=3, vLine="blue", col="red")
 }

\keyword{ multivariate }

