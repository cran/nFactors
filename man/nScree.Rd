\name{nScree}
\alias{nScree}
\title{ Non Graphical Cattel's Scree Test}

\description{
 The \code{nScree} function returns an analysis of the number of components or
 factors to retain in an exploratory
 principal components or factor analysis. The function also return
 informations about the number of components/factors to retain with the Kaiser
 rule and the parallel analysis. 
 }

\usage{
 nScree(eig=NULL, x=eig, aparallel=NULL, cor=TRUE, model="components",
        criteria=NULL, ...)
 }

\arguments{
  \item{eig}{       depreciated parameter (use x instead): eigenvalues to analyse }
  \item{x}{         numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                    correlations or of covariances or a \code{data.frame} of data}
  \item{aparallel}{ numeric: results of a parallel analysis.
                    Defaults eigenvalues fixed at \eqn{\lambda >= \bar{\lambda}}
                    (Kaiser and related rule)
                    or \eqn{\lambda >= 0} (CFA analysis) }
  \item{cor}{       logical: if \code{TRUE} computes eigenvalues from a correlation
                    matrix, else from a covariance matrix}
  \item{model}{     character: \code{"components"} or \code{"factors"} }
  \item{criteria}{  numeric: by default fixed at \eqn{\hat{\lambda}}.
                    When the \eqn{\lambda}s are computed prom a principal components
                    analysis on a correlation matrix, it corresponds to the
                    usual Kaiser \eqn{\lambda >= 1} rule. On a covariance matrix
                    or from a factor analysis, it is simply the mean.
                    To apply the \eqn{\lambda >= 0} sometimes used with factor
                    analysis, fixed the criteria to \eqn{0}.}
  \item{...}{       variabe: additionnal parameters to give to the \code{cor} or
                    \code{cov} functions}
 }

\details{
 The \code{nScree} function returns an analysis of the number of components/factors to retain in an exploratory
 principal components or factor analysis. Different solutions are given. The classical ones are the Kaiser rule,
 the parallel analysis, and the usual scree test (\code{\link{plotuScree}}). 
 Non graphical solutions to the Cattell subjective scree test are also proposed: 
 an acceleration factor (\emph{af}) and the optimal coordinates index \emph{oc}. The acceleration factor indicates where the
 elbow of the scree plot appears. It corresponds to the acceleration of the curve, i.e. the second derivative. 
 The optimal coordinates are the extrapolated coordinates of the previous eigenvalue that let the observed eigenvalue 
 be over this extrapolation. The extrapolation is made by a linear regression using the last eigenvalue 
 coordinates and the \eqn{k+1} eigenvalue coordinates. There are \eqn{k-2} regression lines like this. Would it be fot the
 acceleration factor, or for the optimal coordinates, the Kaiser rule or a parallel analysis criterion (\code{\link{parallel}})
 must also be simultaneously satisfied to retain the components/factors.
 
 If \eqn{\lambda_i} is the \eqn{i^{th}} eigenvalue, and \eqn{LS_i} is a location statistics like the mean or a centile 
 (generally the following: \eqn{1^{st}, \ 5^{th}, \ 95^{th}, \ or \ 99^{th}}).
 
 The Kaiser rule is computed as:
  \deqn{ n_{Kaiser} = \sum_{i} (\lambda_{i} \ge \bar{\lambda}).}
 Note that \eqn{\bar{\lambda}} is equal to 1 when a correlation matrix is used.
 
 The parallel analysis is computed as: 
  \deqn{n_{parallel} = \sum_{i} (\lambda_{i} \ge LS_i).}
 
 The acceleration factor (\eqn{AF}) corresponds to a numeral solution to the elbow of the scree plot:
   \deqn{n_{AF} \equiv \ If \ \left[  (\lambda_{i} \ge LS_i) \ and \ max(AF_i) \right].}
   
 The optimal coordinates (\eqn{OC}) corresponds to an extrapolation of the preceding eigenvalue by a regression 
 line between the eignvalue coordinates and the last eigenvalue coordinate:
   \deqn{n_{OC} = \sum_i \left[(\lambda_i \ge LS_i) \cap (\lambda_i \ge (\lambda_{i \ predicted}) \right].}    
 }

\value{
  \item{Components }{              Data frame for the number of components/factors according to different rules }
  \item{Components$noc }{          Number of components/factors to retain according to optimal coordinates \emph{oc}}
  \item{Components$naf }{          Number of components/factors to retain according to the acceleration factor \emph{af}}
  \item{Components$npar.analysis }{Number of components/factors to retain according to parallel analysis }
  \item{Components$nkaiser }{      Number of components/factors to retain according to the Kaiser rule }
  \item{Analysis }{                Data frame of vectors linked to the different rules }
  \item{Analysis$Eigenvalues }{    Eigenvalues }
  \item{Analysis$Prop }{           Proportion of variance accounted by eigenvalues }  
  \item{Analysis$Cumu }{           Cumulative proportion of variance accounted by eigenvalues }  
  \item{Analysis$Par.Analysis }{   Centiles of the random eigenvalues generated by the parallel analysis. }
  \item{Analysis$Pred.eig }{       Predicted eigenvalues by each optimal coordinate regression line }
  \item{Analysis$OC}{              Critical optimal coordinates \emph{oc}}
  \item{Analysis$Acc.factor }{     Acceleration factor \emph{af}}
  \item{Analysis$AF}{              Critical acceleration factor \emph{af}}
  Otherwise, returns a summary of the analysis.
 }

\seealso{
 \code{\link{plotuScree}}, 
 \code{\link{plotnScree}},
 \code{\link{parallel}},
 \code{\link{plotParallel}},  
 }

\references{ 
 Cattell, R. B. (1966). The scree test for the number of factors.
  \emph{Multivariate Behavioral Research, 1}, 245-276.

 Dinno, A. (2009). \emph{Gently clarifying the application of Horn's parallel analysis
  to principal component analysis versus factor analysis}.
  Portland, Oregon: Portland Sate University \cr
  [\url{http://doyenne.com/Software/files/PA_for_PCA_vs_FA.pdf}]
 
 Guttman, L. (1954). Some necessary conditions for common factor analysis.
  \emph{Psychometrika, 19, 149-162}.

 Horn, J. L. (1965). A rationale for the number of factors in factor analysis.
  \emph{Psychometrika, 30}, 179-185.

 Kaiser, H. F. (1960). The application of electronic computer to factor analysis.
  \emph{Educational and Psychological Measurement, 20}, 141-151.

 Raiche, G., Riopel, M. and Blais, J.-G. (2006). \emph{Non graphical solutions for the Cattell's scree test}.
  Paper presented at the International Annual meeting of the Psychometric Society, Montreal.
  [\url{http://www.er.uqam.ca/nobel/r17165/RECHERCHE/COMMUNICATIONS/}]
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
}

\examples{
## INITIALISATION
 data(dFactors)                      # Load the nFactors dataset
 attach(dFactors)
 vect         <- Raiche              # Use the example from Raiche
 eigenvalues  <- vect$eigenvalues    # Extract the observed eigenvalues
 nsubjects    <- vect$nsubjects      # Extract the number of subjects
 variables    <- length(eigenvalues) # Compute the number of variables
 rep          <- 100                 # Number of replications for PA analysis
 cent         <- 0.95                # Centile value of PA analysis

## PARALLEL ANALYSIS (qevpea for the centile criterion, mevpea for the
## mean criterion)
 aparallel    <- parallel(var     = variables,
                          subject = nsubjects, 
                          rep     = rep, 
                          cent    = cent
                          )$eigen$qevpea  # The 95 centile

## NUMBER OF FACTORS RETAINED ACCORDING TO DIFFERENT RULES
 results      <- nScree(x=eigenvalues, aparallel=aparallel)
 results
 summary(results)
 
## PLOT ACCORDING TO THE nScree CLASS 
 plotnScree(results)
 }

\keyword{ multivariate }

