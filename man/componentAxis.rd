\name{componentAxis}
\alias{componentAxis}
\title{ Principal Component Analysis With Only n First Components Retained}

\description{
 The \code{componentAxis} function returns a principal component analysis
 with the first n components retained.
 }

\usage{
 componentAxis(R, nFactors=2)
 }

\arguments{
  \item{R}{        numeric: correlation or covariance matrix}
  \item{nFactors}{ numeric: number of components/factors to retain}
 }

\value{
  \item{values}{       numeric: variance of each component/factor retained }
  \item{varExplained}{ numeric: variance explained by each component/factor retained }
  \item{varExplained}{ numeric: cumulative variance explained by each component/factor retained }
  \item{loadings}{     numeric: loadings of each variable on each component/factor retained }
 }
 
\references{
 Kim, J.-O., Mueller, C. W. (1978). \emph{Introduction to factor analysis. What it
  is and how to do it}. Beverly Hills, CA: Sage.

 Kim, J.-O., Mueller, C. W. (1987). \emph{Factor analysis. Statistical methods and
  practical issues}. Beverly Hills, CA: Sage.
 }


\seealso{
 \code{\link{principalComponents}},
 \code{\link{iterativePrincipalAxis}},
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
# Simulated sample: lower diagnonal
 R <- matrix(c( 1.000, 0.560, 0.480, 0.224, 0.192, 0.16,
                0.560, 1.000, 0.420, 0.196, 0.168, 0.14,
                0.480, 0.420, 1.000, 0.168, 0.144, 0.12,
                0.224, 0.196, 0.168, 1.000, 0.420, 0.35,
                0.192, 0.168, 0.144, 0.420, 1.000, 0.30,
                0.160, 0.140, 0.120, 0.350, 0.300, 1.00),
                nrow=6, byrow=TRUE)
                
# Factor analysis: Selected principal components - Kim et Mueller
# (1978, p. 20)
 componentAxis(R, nFactors=2)

# .......................................................
 }

\keyword{ multivariate }

