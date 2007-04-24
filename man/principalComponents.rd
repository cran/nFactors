\name{principalComponents}
\alias{principalComponents}
\title{ Principal Component Analysis }

\description{
 The \emph{principalComponents} function return a principal component analysis.
 Other R functions give the same results, but \emph{principalComponents} is mainly
 customed for the other factor analysis functions available in the \emph{nfactors}
 package.  To retain only a small number of components the \emph{componentAxis}
 function has to be used.
 }

\usage{
 principalComponents(R)
 }

\arguments{
  \item{R}{     numeric: correlation or covariance matrix}
 }

\value{
  \item{values}{       numeric: variance of each component }
  \item{varExplained}{ numeric: variance explained by each component }
  \item{varExplained}{ numeric: cumulative variance explained by each component }
  \item{loadings}{     numeric: loadings of each variable on each component }
 }

\seealso{
 \code{\link{componentAxis}},
 \code{\link{iterativePrincipalAxis}},
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

# Factor analysis: Principal components -
# Kim et Mueller (1978, p. 21)
# Replace upper diagonal by lower diagonal
 RU <- diagReplace(R, upper=TRUE)
 principalComponents(RU)

# Replace lower diagonal by upper diagonal
 RL <- diagReplace(R, upper=FALSE)
 principalComponents(RL)
# .......................................................
 }

\keyword{ multivariate }

