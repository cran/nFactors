\name{structureSim}
\alias{structureSim}
\title{ Population or Simulated Sample Correlation Matrix from a Given Factor Structure Matrix}

\description{
 The \code{structureSim} function return a population and a sample correlation
 matrices from a predefined congeneric factor structure.
 }

\usage{
 structureSim(fload, reppar=30, repsim=100, N, quantile=0.95,
              model="components", adequacy=FALSE, details=TRUE,
              r2limen=0.75, all=FALSE)
 }

\arguments{
  \item{fload}{     matrix:    loadings of the factor structure}
  \item{reppar}{    numeric:   number of replication for the parallel analysis}
  \item{repsim}{    numeric:   number of replication of the matrix correlation
                    simulation}
  \item{N}{         numeric:   number of subjects}
  \item{quantile}{  numeric:   quantile for the parallel analysis}
  \item{model}{     character: \code{"components"} or \code{"factors"} }
  \item{adequacy}{  logical:   if \code{TRUE} print the recovered population
                    matrix from the factor structure}
  \item{details}{   logical:   if \code{TRUE} output details of the
                    \code{repsim} simulations }
  \item{r2limen}{   numeric:   R2 limen value for the R2 index of Nelson}
  \item{all}{       logical:   if \code{TRUE} computes athe Bentler and Yuan
                    index (very long computating time to consider)}
 }

\value{
  \item{values}{ the output depends of the logical value of details. If \code{FALSE},
                 returns only statistics about the eigenvalues: mean, median, quantile,
                 standard deviation, minimum and maximum. If \code{TRUE},
                 returns also details about the \code{repsim} simulations.
                 If \code{adequacy} = \code{TRUE} return the recovered factor structure}
 }

\seealso{
 \code{\link{principalComponents}},
 \code{\link{iterativePrincipalAxis}},
 \code{\link{rRecovery}}
 }

\references{
  Zwick, W. R. and Velicer, W. F. (1986). Comparison of five rules for
   determining the number of components to retain. \emph{Psychological bulletin, 99}, 432-442.
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
# .......................................................
# Example inspired from Zwick and Velicer (1986, table 2, p. 437)
## ...................................................................
 nFactors  <- 3
 unique    <- 0.2
 loadings  <- 0.5
 nsubjects <- 180
 repsim    <- 30
 zwick     <- generateStructure(var=36, mjc=nFactors, pmjc=12,
                                loadings=loadings,
                                unique=unique)
## ...................................................................

# Produce statistics about a replication of a parallel analysis on
# 30 sampled correlation matrices

 mzwick.fa <-  structureSim(fload=as.matrix(zwick), reppar=30,
                            repsim=repsim, N=nsubjects, quantile=0.5,
                            model="factors")

 mzwick    <-  structureSim(fload=as.matrix(zwick), reppar=30,
                            repsim=repsim, N=nsubjects, quantile=0.5, all=TRUE)

# Very long execution time that could be used only with model="components"
# mzwick    <-  structureSim(fload=as.matrix(zwick), reppar=30,
#                            repsim=repsim, N=nsubjects, quantile=0.5, all=TRUE)

 par(mfrow=c(2,1))
 plot(x=mzwick,    nFactors=nFactors, index=c(1:14), cex.axis=0.7, col="red")
 plot(x=mzwick.fa, nFactors=nFactors, index=c(1:11), cex.axis=0.7, col="red")
 par(mfrow=c(1,1))

 par(mfrow=c(2,1))
 boxplot(x=mzwick,    nFactors=3, cex.axis=0.8, vLine="blue", col="red")
 boxplot(x=mzwick.fa, nFactors=3, cex.axis=0.8, vLine="blue", col="red",
         xlab="Components")
 par(mfrow=c(1,1))
# ......................................................
 }

\keyword{ multivariate }
