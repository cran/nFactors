\name{iterativePrincipalAxis}
\alias{iterativePrincipalAxis}
\title{ Iterative Principal Axis Analysis }

\description{
 The \emph{iterativePrincipalAxis} function return a principal axis analysis with
 iterated communalities estimates. Three different choices of initial communalities
 estimates are given: maximum corelation, multiple correlation or estimates based
 on the sum of the sqared principal component analysis loadings. Generally statistical
 packages initialize the the communalities at the multiple correlation value.
 Unfortunately, this strategy cannot deal with singular correlation or covariance matrices.
 If the maximum correlation or the estimated communalities based on the sum of loading
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
  \item{communalities}{ character: initial values for communalities ("component", "maxr", or "multiple")}
  \item{iterations}{    numeric: maximum number of iterations to obtain a solution}
  \item{tolerance}{     numeric: minimal difference in the estimated communalities after a given iteration}
 }

\value{
  \item{values}{       numeric: variance of each component }
  \item{varExplained}{ numeric: variance explained by each component }
  \item{varExplained}{ numeric: cumulative variance explained by each component }
  \item{loadings}{     numeric: loadings of each variable on each component }
  \item{iterations}{   numeric: maximum number of iterations to obtain a solution}
  \item{tolerance}{    numeric: minimal difference in the estimated communalities after a given iteration}
 }

\seealso{
 \code{\link{componentAxis}},
 \code{\link{principalAxis}},
 \code{\link{rRecovery}}
 }

\author{ 
    Gilles Raiche, Universite du Quebec a Montreal
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
# .......................................................
# Exemple from Kim and Mueller (1978, p. 10)
# Population: upper diagonal
# Simulated sample: lower diagnonal
 R <- matrix(c( 1.000, .6008, .4984, .1920, .1959, .3466,
                .5600, 1.000, .4749, .2196, .1912, .2979,
                .4800, .4200, 1.000, .2079, .2010, .2445,
                .2240, .1960, .1680, 1.000, .4334, .3197,
                .1920, .1680, .1440, .4200, 1.000, .4207,
                .1600, .1400, .1200, .3500, .3000, 1.000),
                nrow=6, byrow=TRUE)

# Factor analysis: Principal axis factoring with iterated communalities -
# Kim and Mueller (1978, p. 23)
# Replace upper diagonal by lower diagonal
 RU         <- diagReplace(R, upper=TRUE)
 nFactors   <- 2
 fComponent <- iterativePrincipalAxis(RU, nFactors=nFactors, communalities="component")
 fComponent
 rRecovery(RU,fComponent$loadings, communalities=FALSE)

 fMaxr      <- iterativePrincipalAxis(RU, nFactors=nFactors, communalities="maxr")
 fMaxr
 rRecovery(RU,fMaxr$loadings, communalities=FALSE)

 fMultiple  <- iterativePrincipalAxis(RU, nFactors=nFactors, communalities="multiple")
 fMultiple
 rRecovery(RU,fMultiple$loadings, communalities=FALSE)
# .......................................................
 }

\keyword{ multivariate }

