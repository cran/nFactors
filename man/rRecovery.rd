\name{rRecovery}
\alias{rRecovery}
\title{ Test of Recovery of a Correlation or a Covariance matrix from a Facor Analysis Solution }

\description{
 The \emph{rRecovery} function return a verification of the quality of the recovery
 of the initial correlation or covariance matrix by the factor solution.
  }

\usage{
 rRecovery(R, loadings, communalities=FALSE)
 }

\arguments{
  \item{R}{             numeric: initial correlation or covariance matrix}
  \item{loadings}{      numeric: loadings from a factor analysis solution}
  \item{communalities}{ logical: if \emph{TRUE}, the correlation between the initail
                        solution and the estimated one will use a correlation
                        of one in the diagonal. If \emph{FALSE} (default) the diagonal
                        is not used in the computation of this correlation.}
 }

\value{
  \item{R}{          numeric: initial correlation or covariance matrix }
  \item{recoveredR}{ numeric: recovered estimated correlation or covariance matrix }
  \item{difference}{ numeric: difference between initial and recovered estimated
                     correlation or covariance matrix}
  \item{cor}{        numeric: Pearson correlation between initial and recovered estimated
                     correlation or covariance matrix. Computions depend on the
                     logical value of the \emph{communalities} argument. }
 }

\seealso{
 \code{\link{componentAxis}},
 \code{\link{iterativePrincipalAxis}},
 \code{\link{principalAxis}}
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
 RU         <- diagReplace(R, upper=TRUE)
 nFactors   <- 2
 loadings   <- principalAxis(RU, nFactors=nFactors, communalities="component")$loadings
 rComponent <- rRecovery(RU,loadings, communalities=FALSE)$cor

 loadings   <- principalAxis(RU, nFactors=nFactors, communalities="maxr")$loadings
 rMaxr      <-   rRecovery(RU,loadings, communalities=FALSE)$cor

 loadings   <- principalAxis(RU, nFactors=nFactors, communalities="multiple")$loadings
 rMultiple  <- rRecovery(RU,loadings, communalities=FALSE)$cor

 round(c(rComponent = rComponent,
         rmaxr      = rMaxr,
         rMultiple  = rMultiple), 3)
# .......................................................

 }

\keyword{ multivariate }

