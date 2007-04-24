\name{diagReplace}
\alias{diagReplace}
\title{ Replacing Upper or Lower Diagonal of a Correlation or Covariance Matrix}

\description{
 The \emph{diagReplace} function return a modified correlation or covariance
 matrix by replacing upper diagonal with lower diagonal, or lower diagonal with upper
 diagonal.
 }

\usage{
 diagReplace(R, upper=TRUE)
 }

\arguments{
  \item{R}{     numeric: correlation or covariance matrix}
  \item{upper}{ logical: if \emph{TRUE} the upper diagonal is replaced with the lower
                diagonal. If \emph{FALSE}, lower diagonal is replaced with upper diagonal.}
 }

\value{
  \item{R }{ numeric: return a correlation or covariance matrix }
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

# Replace upper diagonal by lower diagonal
 RU <- diagReplace(R, upper=TRUE)

# Replace lower diagonal by upper diagonal
 RL <- diagReplace(R, upper=FALSE)
# .......................................................
 }

\keyword{ multivariate }

