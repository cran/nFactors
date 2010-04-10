\name{nSeScree}
\alias{nSeScree}

\title{ Standard Error Scree and Coefficient of Determination Procedures to
        Determine the Number of Components/Factors}

\description{
  This function computes the \emph{seScree} (\eqn{S_{Y \bullet X}}) indices
  (Zoski and Jurs, 1996) and the
  coefficient of determination indices of Nelson (2005) \eqn{R^2} for determining the
  number of components/factors to retain.
 }

\usage{
 nSeScree(x, cor=TRUE, model="components", details=TRUE, r2limen=0.75, ...)
 }

\arguments{
  \item{x}{       numeric: eigenvalues.}
  \item{cor}{     logical: if \code{TRUE} computes eigenvalues from a correlation
                  matrix, else from a covariance matrix}
  \item{model}{   character: \code{"components"} or \code{"factors"} }
  \item{details}{ logical: if \code{TRUE} also returns details about the computation for each eigenvalue.}
  \item{r2limen}{ numeric: criterion value retained for the coefficient of determination indices.}
  \item{...}{     variable: additionnal parameters to give to the \code{eigenComputes}
                  and \code{cor} or \code{cov} functions}
 }
 
\details{
  The Zoski and Jurs \eqn{S_{Y \bullet X}} index is the standard error of the estimate
  (predicted) eigenvalues by the regression from the \eqn{(k+1, \ldots, p)} subsequent
  ranks of the eigenvalues. The standard error is computed as:
  
  (1)   \eqn{\qquad \qquad S_{Y \bullet X} =
         \sqrt{ \frac{(\lambda_k - \hat{\lambda}_k)^2} {p-2} } } \cr

  A value of \eqn{1/p} is choosen as the criteria to determine the number of
  components or factors to retain, \emph{p} corresponding to the number of
  variables.
  
  The Nelson \eqn{R^2} index is simply the multiple regresion coefficient of
  determination for the \eqn{k+1, \ldots, p} eigenvalues.
  Note that Nelson didn't give formal prescriptions for the criteria for this
  index. He only suggested that a value of 0.75 or more must be considered. More
  is to be done to explore adequate values.
 }


\value{
  \item{nFactors}{ numeric: number of components/factors retained by the seScree procedure. }
  \item{details}{  numeric: matrix of the details for each index.}
 }
 
\references{
 Nasser, F. (2002). The performance of regression-based variations of the visual
   scree for determining the number of common factors. \emph{Educational and
   Psychological Measurement, 62(3)}, 397-419.
   
   
 Nelson, L. R. (2005). Some observations on the scree test, and on coefficient
   alpha. \emph{Thai Journal of Educational Research and Measurement, 3(1)}, 1-17.

   
 Zoski, K. and Jurs, S. (1993). Using multiple regression to determine the
   number of factors to retain in factor analysis. \emph{Multiple Linear Regression
   Viewpoints, 20}(1), 5-9.
 
 
 Zoski, K. and Jurs, S. (1996). An objective counterpart to the visuel scree
  test for factor analysis: the standard error scree. \emph{Educational and
  Psychological Measurement, 56}(3), 443-451.
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
## SIMPLE EXAMPLE OF SESCREE AND R2 ANALYSIS

 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues

 results  <- nSeScree(eig)
 results

 plotuScree(eig, main=paste(results$nFactors[1], " or ", results$nFactors[2],
                            " factors retained by the sescree and R2 procedures",
                            sep=""))
 }

\keyword{ multivariate }

