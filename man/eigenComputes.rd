\name{eigenComputes}
\alias{eigenComputes}
\title{ Computes Eigenvalues According to the Data Type }

\description{
 The \code{eigenComputes} function computes eigenvalues from the identified data
 type. The function is used internally in many
 fonctions of the \pkg{nFactors} package to be able to apply these to a vector of
 eigenvalues, a matrix of correlations or covariance or a data frame.
 }

\usage{
 eigenComputes(x, cor=TRUE, model="components", ...)
 }

\arguments{
  \item{x}{     numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                correlations or of covariances or a \code{data.frame} of data}
  \item{cor}{   logical: if \code{TRUE} computes eigenvalues from a correlation
                matrix, else from a covariance matrix}
  \item{model}{ character: \code{"components"} or \code{"factors"} }
  \item{...}{   variable: additionnal parameters to give to the \code{cor} or
                \code{cov} functions}
 }

\value{
  \item{value}{ numeric: return a vector of eigenvalues }
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
# Vector of eigenvalues
  data(dFactors)
  x1 <- dFactors$Cliff1$eigenvalues
  eigenComputes(x1)
  
# Data from a data.frame
  x2 <- data.frame(matrix(20*rnorm(100), ncol=5))
  eigenComputes(x2, cor=TRUE,  use="everything")
  eigenComputes(x2, cor=FALSE, use="everything")
  eigenComputes(x2, cor=TRUE,  use="everything", method="spearman")
  eigenComputes(x2, cor=TRUE,  use="everything", method="kendall")

# From a covariance matrix
  x3 <- cov(x2)
  eigenComputes(x3, cor=TRUE,  use="everything")
  eigenComputes(x3, cor=FALSE, use="everything")

# From a correlation matrix
  x4 <- cor(x2)
  eigenComputes(x4, use="everything")
# .......................................................
 }

\keyword{ multivariate }

