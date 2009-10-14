\name{eigenFrom}
\alias{eigenFrom}
\title{ Identify the Data Type to Obtain the Eigenvalues From}

\description{
 The \code{eigenFrom} function identifies the data type to obtain the
 eigenvalues from. The function is used internally in many fonctions of
 the \pkg{nFactors} to be able to apply these to a vector of eigenvalues,
 a matrix of correlations or covariance or a \code{data.frame}.
 }

\usage{
 eigenFrom(x)
 }

\arguments{
  \item{x}{     numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                correlations or of covariances or a \code{data.frame} of data}
 }

\value{
  \item{value}{ character: return the data type to obtain the eigenvalues from:
                \code{"eigenvalues"}, \code{"correlation"} or \code{"data"} }
 }


\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
# .......................................................
# Different data types
# Examples of adequate data sources
# Vector of eigenvalues
  data(dFactors)
  x1 <- dFactors$Cliff1$eigenvalues
  eigenFrom(x1)
  
# Data from a data.frame
  x2 <- data.frame(matrix(20*rnorm(100), ncol=5))
  eigenFrom(x2)

# From a covariance matrix
  x3 <- cov(x2)
  eigenFrom(x3)

# From a correlation matrix
  x4 <- cor(x2)
  eigenFrom(x4)

# Examples of inadequate data sources: not run because of errors generated
  # x0 <- c(2,1)             # Error: not enough eigenvalues
  # eigenFrom(x0)
  # x2 <- matrix(x1, ncol=5) # Error: non a symetric covariance matrix
  # eigenFrom(x2)
  # eigenFrom(x3[,(1:2)])    # Error: not enough variables
  # x6 <- table(x5)          # Error: not a valid data class
  # eigenFrom(x6)
# .......................................................
 }

\keyword{ multivariate }
