\name{nMreg}
\alias{nMreg}

\title{ Multiple Regression Procedure to Determine the Number of Components/Factors}

\description{
  This function computes the \eqn{\beta} indices, like their associated Student
  \emph{t} and
  probability (Zoski and Jurs, 1993, 1996, p. 445). These three values can be
  used as three different
  indices for determining the number of components/factors to retain.
 }

\usage{
 nMreg(x, cor=TRUE, model="components", details=TRUE, ...)
 }

\arguments{
  \item{x}{       numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                  correlations or of covariances or a \code{data.frame} of data (eigenFrom)}
  \item{cor}{     logical: if \code{TRUE} computes eigenvalues from a correlation
                  matrix, else from a covariance matrix}
  \item{model}{   character: \code{"components"} or \code{"factors"} }
  \item{details}{ logical: if \code{TRUE} also returns details about the computation for each eigenvalue.}
  \item{...}{     variable: additionnal parameters to give to the \code{eigenComputes}
                  and \code{cor} or \code{cov} functions}
 }
 
\value{
  \item{nFactors}{ numeric: number of components/factors retained by the \emph{MREG} procedures. }
  \item{details}{  numeric: matrix of the details for each indices.}
 }

\details{
 When the associated Student \emph{t} test is applied, the following hypothesis
 is considered: \cr

 (1)   \eqn{\qquad \qquad H_k: \beta (\lambda_1 \ldots \lambda_k) -
        \beta (\lambda_{k+1} \ldots \lambda_p), (k = 3, \ldots, p-3) = 0} \cr

 }
 
\references{
  Zoski, K. and Jurs, S. (1993). Using multiple regression to determine the
   number of factors to retain in factor analysis. \emph{Multiple Linear Regression
   Viewpoints, 20}(1), 5-9.
   
  Zoski, K. and Jurs, S. (1996). An objective counterpart to the visual scree
  test for factor analysis: the standard error scree test.
  \emph{Educational and Psychological Measurement, 56}(3), 443-451.
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
## SIMPLE EXAMPLE OF A MREG ANALYSIS

 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues

 results  <- nMreg(eig)
 results

 plotuScree(eig, main=paste(results$nFactors[1], ", ",
                            results$nFactors[2], " or ",
                            results$nFactors[3],
                            " factors retained by the MREG procedures",
                            sep=""))
 }

\keyword{ multivariate }

