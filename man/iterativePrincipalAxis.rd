\name{iterativePrincipalAxis}
\alias{iterativePrincipalAxis}
\title{ Iterative Principal Axis Analysis }

\description{
 The \code{iterativePrincipalAxis} function returns a principal axis analysis with
 iterated communality estimates. Four different choices of initial communality
 estimates are given: maximum correlation, multiple correlation (usual and
 generalized inverse) or estimates based
 on the sum of the squared principal component analysis loadings. Generally statistical
 packages initialize the communalities at the multiple correlation value.
 Unfortunately, this strategy cannot always deal with singular correlation or
 covariance matrices.
 If a generalized inverse, the maximum correlation or the estimated communalities
 based on the sum of loadings
 are used insted, then a solution can be computed.
 }

\usage{
 iterativePrincipalAxis(R,
                        nFactors=2,
                        communalities="component",
                        iterations=20,
                        tolerance=0.001)
 }

\arguments{
  \item{R}{             numeric: correlation or covariance matrix}
  \item{nFactors}{      numeric: number of factors to retain}
  \item{communalities}{ character: initial values for communalities
                        (\code{"component", "maxr",
                        "ginv" or "multiple"})}
  \item{iterations}{    numeric: maximum number of iterations to obtain a solution}
  \item{tolerance}{     numeric: minimal difference in the estimated
                        communalities after a given iteration}
 }

\value{
  \item{values}{       numeric: variance of each component }
  \item{varExplained}{ numeric: variance explained by each component }
  \item{varExplained}{ numeric: cumulative variance explained by each component }
  \item{loadings}{     numeric: loadings of each variable on each component }
  \item{iterations}{   numeric: maximum number of iterations to obtain a solution}
  \item{tolerance}{    numeric: minimal difference in the estimated communalities
                       after a given iteration}
 }

\references{
 Kim, J.-O., Mueller, C. W. (1978). \emph{Introduction to factor analysis. What it
  is and how to do it}. Beverly Hills, CA: Sage.

 Kim, J.-O., Mueller, C. W. (1987). \emph{Factor analysis. Statistical methods and
  practical issues}. Beverly Hills, CA: Sage.
 }

\seealso{
 \code{\link{componentAxis}},
 \code{\link{principalAxis}},
 \code{\link{rRecovery}}
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
# .......................................................
# Example from Kim and Mueller (1978, p. 10)
# Population: upper diagonal
# Simulated sample: lower diagnonal
 R <- matrix(c( 1.000, .6008, .4984, .1920, .1959, .3466,
                .5600, 1.000, .4749, .2196, .1912, .2979,
                .4800, .4200, 1.000, .2079, .2010, .2445,
                .2240, .1960, .1680, 1.000, .4334, .3197,
                .1920, .1680, .1440, .4200, 1.000, .4207,
                .1600, .1400, .1200, .3500, .3000, 1.000),
                nrow=6, byrow=TRUE)

# Factor analysis: Principal axis factoring with iterated communalities
# Kim and Mueller (1978, p. 23)
# Replace upper diagonal by lower diagonal
 RU         <- diagReplace(R, upper=TRUE)
 nFactors   <- 2
 fComponent <- iterativePrincipalAxis(RU, nFactors=nFactors,
                                      communalities="component")
 fComponent
 rRecovery(RU,fComponent$loadings, diagCommunalities=FALSE)

 fMaxr      <- iterativePrincipalAxis(RU, nFactors=nFactors,
                                      communalities="maxr")
 fMaxr
 rRecovery(RU,fMaxr$loadings, diagCommunalities=FALSE)

 fMultiple  <- iterativePrincipalAxis(RU, nFactors=nFactors,
                                      communalities="multiple")
 fMultiple
 rRecovery(RU,fMultiple$loadings, diagCommunalities=FALSE)
# .......................................................
 }

\keyword{ multivariate }
