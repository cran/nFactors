\name{plotuScree}
\alias{plotuScree}

\title{ Plot of the Usual Cattell's Scree Test }

\description{
  \code{uScree} Plot a usual scree test of the eigenvalues of a correlation matrix. 
 }

\usage{
 plotuScree(Eigenvalue,
             y    = NA,   
             ylab   = "Eigenvalue",
             xlab   = "Component",
             main   = "Scree Plot"
             )
 }

\arguments{
  \item{Eigenvalue}{ Vector of eigenvalues }
  \item{y}{          Not used }  
  \item{main}{       Title of the plot   (default is Scree Plot)      }
  \item{xlab}{       Label of the x axis (default is Component)  }
  \item{ylab}{       Label of the y axis (default is Eigenvalue) }
 }

\value{
  Nothing returned by this function.
 }

\references{ 
 Cattell, R. B. (1966). The scree test for the number of factors. \emph{Multivariate Behavioral Research, 1}, 245-276. 
 }

\seealso{
 \code{\link{nScree}}, 
 \code{\link{parallel}} 
 }

\author{ 
    Gilles Raiche, Universite du Quebec a Montreal
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
## SCREE PLOT
 data(dFactors)
 attach(dFactors)
 eig = Cliff1$eigenvalues
 plotuScree(eig)
 }

\keyword{ multivariate }


