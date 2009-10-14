\name{nCng}
\alias{nCng}

\title{ Cattell-Nelson-Gorsuch CNG Indices}

\description{
  This function computes the \emph{CNG} indices for the eigenvalues of a
  correlation/covariance matrix (Gorsuch and Nelson, 1981; Nasser, 2002, p.
  400; Zoski and Jurs, 1993, p. 6).
 }

\usage{
 nCng(x, cor=TRUE, model="components", details=TRUE, ...)
 }

\arguments{
  \item{x}{       numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                  correlations or of covariances or a \code{data.frame} of data }
  \item{cor}{     logical: if \code{TRUE} computes eigenvalues from a correlation
                  matrix, else from a covariance matrix}
  \item{model}{   character: \code{"components"} or \code{"factors"} }
  \item{details}{ logical: if \code{TRUE} also return detains about the computation
                  for each eigenvalues.}
  \item{...}{     variable: additionnal parameters to give to the \code{eigenComputes}
                  function}
 }
 
\details{
  Note that the \code{nCng} function is only valid when more than six eigenvalues
  are used and that these are obtained in the context of a principal components
  analysis. For a factor analysis, some eigenvalues could be negative and
  the function will stop and give an error message.
  
  The slope of all possible sets of three adjacent eigenvalues
  are compared, so \emph{CNG} indices can be applied when more than six eigenvalues
  are used. The eigenvalue at which the greatest difference between two successive
  slopes occurs is the indicator of the number of components/factors to retain.
 }


\value{
  \item{nFactors}{ numeric: number of factors retained by the CNG procedure. }
  \item{details}{  numeric: matrix of the details for each indice.}
 }
 
\references{
  Gorsuch, R. L. and Nelson, J. (1981). \emph{CNG scree test: an objective procedure
   for determining the number of factors}. Presented at the annual meeting of
   the Society for multivariate experimental psychology.

  Nasser, F. (2002). The performance of regression-based variations of the visual
   scree for determining the number of common factors. \emph{Educational and
   Psychological Measurement, 62(3)}, 397-419.
  
  Zoski, K. and Jurs, S. (1993). Using multiple regression to determine the
   number of factors to retain in factor analysis. \emph{Multiple Linear Regression
   Viewpoints, 20}(1), 5-9.
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\seealso{
 \code{\link{plotuScree}},
 \code{\link{nScree}},
 \code{\link{plotnScree}},
 \code{\link{plotParallel}}
 }

\examples{
## SIMPLE EXAMPLE OF A CNG ANALYSIS

 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues

 results  <- nCng(eig, details=TRUE)
 results
 
 plotuScree(eig, main=paste(results$nFactors,
                            " factors retained by the CNG procedure",
                            sep=""))
 }

\keyword{ multivariate }
