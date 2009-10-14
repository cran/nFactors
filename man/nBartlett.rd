\name{nBartlett}
\alias{nBartlett}

\title{ Bartlett, Anderson and Lawley Procedures to Determine the Number of Components/Factors}

\description{
  This function computes the Bartlett, Anderson and Lawley indices for determining the
  number of components/factors to retain.
 }

\usage{
 nBartlett(x, N, alpha=0.05, cor=TRUE, details=TRUE, correction=TRUE, ...)
 }

\arguments{
  \item{x}{          numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                     correlations or of covariances or a \code{data.frame} of data (eigenFrom)}
  \item{N}{          numeric: number of subjects}
  \item{alpha}{      numeric: statistical significance level }
  \item{cor}{        logical: if \code{TRUE} computes eigenvalues from a correlation
                     matrix, else from a covariance matrix}
  \item{details}{    logical: if \code{TRUE} also return detains about the
                     computation for each eigenvalue}
  \item{correction}{ logical: if \code{TRUE} use a correction for the degree
                     of freedom after the first eigenvalue}
  \item{...}{        variable: additionnal parameters to give to the \code{cor} or
                     \code{cov} functions}
 }
 
\details{
  The hypothesis tested is: \cr \cr

 (1)  \eqn{\qquad \qquad H_k: \lambda_{k+1} = \ldots = \lambda_p} \cr

 This hypothesis is verified by the application of different version of a
 \eqn{\chi^2} test with different values for the degrees of freedom.
 Each of these tests share the compution of a \eqn{V_k} value: \cr

 (2) \eqn{\qquad \qquad V_k  =
      \prod\limits_{i = k + 1}^p {\left\{ {{{\lambda _i }
      \over {{\raise0.7ex\hbox{$1$} \!\mathord{\left/
      {\vphantom {1 q}}\right.\kern-\nulldelimiterspace}
      \!\lower0.7ex\hbox{$q$}}\sum\limits_{i = k + 1}^p {\lambda _i } }}} \right\}}
      }

 Where \eqn{p} being the number of eigenvalues, \eqn{k} the number of eigenvalues to test,
 and \eqn{q} the \eqn{p-k} remaining eigenvalues. With \eqn{n} equal to the sample size
 minus 1 (\eqn{n = N-1}). \cr



 The Anderson statistic is distributed as a \eqn{\chi^2} with \eqn{(q + 2)(q - 1)/2} degrees
 of freedom and is equal to: \cr

 (3) \eqn{\qquad \qquad - n\log (V_k ) \sim \chi _{(q + 2)(q - 1)/2}^2 } \cr

  An improvement of this statistic from Bartlett (Bentler, and Yuan, 1996, p. 300;
  Horn and Engstrom, 1979, equation 8) is distributed as a \eqn{\chi^2}
  with \eqn{(q)(q - 1)/2} degrees of freedom is equal to: \cr

 (4) \eqn{\qquad \qquad - \left[ {n - k - {{2q^2 q + 2} \over {6q}}}
     \right]\log (V_k ) \sim \chi _{(q + 2)(q - 1)/2}^2 }  \cr

 Finally, Anderson (1956) and James (1969) proposed another statistic. \cr

 (5) \eqn{\qquad \qquad - \left[ {n - k - {{2q^2 q + 2} \over {6q}}
      + \sum\limits_{i = 1}^k {{{\bar \lambda _q^2 } \over {\left( {\lambda _i
      - \bar \lambda _q } \right)^2 }}} } \right]\log (V_k ) \sim \chi _{(q + 2)(q - 1)/2}^2 } \cr

  Bartlett (1950, 1951) proposed a correction to the degrees of freedom of these \eqn{\chi^2} after the
  first siginificant test that is \eqn{(q+2)(q - 1)/2}. \cr
 }


\value{
  \item{nFactors}{ numeric: vector of the number of factors retained by the
                   Bartlett, Anderson and Lawley procedures. }
  \item{details}{  numeric: matrix of the details for each indices.}
 }
 
\references{

 Anderson, T. W. (1963). Asymptotic theory for principal component analysis.
  \emph{Annals of Mathematical Statistics, 34}, 122-148.
  
 Bartlett, M. S. (1950). Tests of significance in factor analysis.
  \emph{British Journal of Psychology, 3}, 77-85.
  
 Bartlett, M. S. (1951). A further note on tests of significance. \emph{British
  Journal of Psychology, 4}, 1-2.
  
 Bentler, P. M. and Yuan, K.-H. (1996). Test of linear trend in eigenvalues of
  a covariance matrix with application to data analysis.
  \emph{British Journal of Mathematical and Statistical Psychology, 49}, 299-312.
 
 Bentler, P. M. and Yuan, K.-H. (1998). Test of linear trend in the smallest
  eigenvalues of the correlation matrix. \emph{Psychometrika, 63}(2), 131-144.
  
 Horn, J. L. and Engstrom, R. (1979). Cattell's scree test in relation to
  Bartlett's chi-square test and other observations on the number of factors
  problem. \emph{Multivariate Behavioral Reasearch, 14}(3), 283-300.
  
 James, A. T. (1969). Test of equality of the latent roots of the covariance
 matrix. \emph{In} P. K. Krishna (Eds): \emph{Multivariate analysis, volume 2}.
 New-York, NJ: Academic Press.
  
 Lawley, D. N. (1956). Tests of significance for the latemt roots of covariance
  and correlation matrix. \emph{Biometrika, 43}(1/2), 128-136.
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
## SIMPLE EXAMPLE OF A BARTLETT PROCEDURE

 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues

 results  <- nBartlett(x=eig, N= 100, alpha=0.05, details=TRUE)
 results

 plotuScree(eig, main=paste(results$nFactors[1], ", ",
                            results$nFactors[2], " or ",
                            results$nFactors[3],
                            " factors retained by the LRT procedures",
                            sep=""))
 }

\keyword{ multivariate }
