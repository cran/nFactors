\name{componentAxis}
\alias{componentAxis}
\title{ Principal Component Analysis with only n First Components Retained}

\description{
 The \emph{componentAxis} function return a principal component analysis
 with the first n components retained.
 }

\usage{
 componentAxis(R, nFactors=2)
 }

\arguments{
  \item{R}{        numeric: correlation or covariance matrix}
  \item{nFactors}{ numeric: number of components to retained}
 }

\value{
  \item{values}{       numeric: variance of each component retained }
  \item{varExplained}{ numeric: variance explained by each component retained }
  \item{varExplained}{ numeric: cumulative variance explained by each component retained }
  \item{loadings}{     numeric: loadings of each variable on each component retained }
 }

\seealso{
 \code{\link{principalComponents}},
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
# Simulated sample: lower diagnonal
 R <- matrix(c( 1.000, 0.560, 0.480, 0.224, 0.192, 0.16,
                0.560, 1.000, 0.420, 0.196, 0.168, 0.14,
                0.480, 0.420, 1.000, 0.168, 0.144, 0.12,
                0.224, 0.196, 0.168, 1.000, 0.420, 0.35,
                0.192, 0.168, 0.144, 0.420, 1.000, 0.30,
                0.160, 0.140, 0.120, 0.350, 0.300, 1.00),
                nrow=6, byrow=TRUE)
                
# Factor analysis: Selected principal components - Kim et Mueller (1978, p. 20)
 componentAxis(R, nFactors=2)

# .......................................................
 }

\keyword{ multivariate }

