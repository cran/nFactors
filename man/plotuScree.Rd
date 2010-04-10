\name{plotuScree}
\alias{plotuScree}

\title{ Plot of the Usual Cattell's Scree Test }

\description{
  \code{uScree} plot a usual scree test of the eigenvalues of a correlation matrix.
 }

\usage{
 plotuScree(Eigenvalue,
            x      = Eigenvalue,
            model  = "components",
            ylab   = "Eigenvalues",
            xlab   = "Components",
            main   = "Scree Plot",
            ...
            )
 }

\arguments{
  \item{Eigenvalue}{depreciated parameter: eigenvalues to analyse (not used if
                    x is used, recommended) }
  \item{x}{         numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                    correlations or of covariances or a \code{data.frame} of data}
  \item{model}{     character: \code{"components"} or \code{"factors"} }
  \item{main}{      character: title of the plot   (default is \code{Scree Plot})      }
  \item{xlab}{      character: label of the x axis (default is \code{Component})  }
  \item{ylab}{      character: label of the y axis (default is \code{Eigenvalue}) }
  \item{...}{       variable: additionnal parameters to give to the \code{eigenComputes} function}
 }

\value{
  Nothing returned with this function.
 }

\references{ 
 Cattell, R. B. (1966). The scree test for the number of factors.
  \emph{Multivariate Behavioral Research, 1}, 245-276.
 }

\seealso{
 \code{\link{nScree}}, 
 \code{\link{parallel}} 
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
## SCREE PLOT
 data(dFactors)
 attach(dFactors)
 eig = Cliff1$eigenvalues
 plotuScree(x=eig)
 }

\keyword{ Graphics }


