\name{parallel}
\alias{parallel}
\title{ PARALLEL ANALYSIS OF A CORRELATION MATRIX }

\description{
  This function gives the distribution of the eigenvalues of correlation 
  matrices of random uncorrelated standardized normal variables. The mean 
  and a selected centile of this distribution are returned.
}

\usage{
parallel(subject = 100, 
         var     = 10,
         rep     = 100, 
         cent    = 0.05)
}

\arguments{
  \item{subject}{Number of subjects (default is 100)}
  \item{var}{    Number of variables (default is 10) }
  \item{rep}{    Number of replication of the correlation matrix (default is 100)}
  \item{cent}{   Centile of the distribution on which the decision is made (default is 0.05)}
}

\details{
  Note that if the decision is based on a centile value rather than on the mean, care must 
  be taken with the number of replication (\emph{rep}). In fact, the smaller the centile (\emph{cent}), 
  the bigger the number of replication.
}

\value{
  \item{eigen}{         Data frame consisting of mean and the centile of the eigenvalues distribution }
  \item{eigen$mevpea}{  Mean of the eigenvalues distribution}
  \item{eigen$sevpea}{  Standard deviation of the eigenvalues distribution}  
  \item{eigen$qevpea}{  Centile of the eigenvalues distribution}
  \item{eigen$sqevpea}{ Standard error of the centile of the eigenvalues distribution}
  \item{subject}{       Number of subjects}
  \item{variables}{     Number of variables}
  \item{centile}{       Selected centile}
  Otherwise, returns a summary of the parallel analysis.
}

\references{ 
  Hoyle, R. H. and Duvall, J. L. (2004). Determining the number of factors in exploratory and confirmatory factor analysis. 
   In D. Kaplan (Ed.): \emph{The Sage handbook of quantitative methodology for the social sciences}. Thousand Oaks, CA: Sage.

  Horn, J. L. (1965). A rationale and test of the number of factors in factor analysis. \emph{Psychometrika, 30}, 179-185.
}

\author{ 
    Gilles Raiche, Universite du Quebec a Montreal
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
}

\seealso{
 \code{\link{plotuScree}}, 
 \code{\link{nScree}},
 \code{\link{plotnScree}}, 
 \code{\link{plotParallel}} 
}

\examples{
## SIMPLE EXAMPLE OF A PARALLEL ANALYSIS
## OF A CORRELATION MATRIX WITH ITS PLOT
 data(dFactors)
 eig      <- dFactors$Raiche$eigenvalues
 subject  <- dFactors$Raiche$nsubjects
 var      <- length(eig)
 rep      <- 100
 cent     <- 0.95
 results  <- parallel(subject,var,rep,cent)

 results

## IF THE DECISION IS BASED ON THE CENTILE USE qevpea INSTEAD
## OF mevpea ON THE FIRST LINE OF THE FOLLOWING CALL
 plotuScree(eig,
             main = "Parallel Analysis"
             )
 lines(1:var, 
       results$eigen$qevpea, 
       type="b", 
       col="green"
       )


## ANOTHER SOLUTION IS SIMPLY TO
 plotParallel(results)
 

## RESULTS
# $eigen
#        mevpea     sevpea    qevpea    sevpea.1
# V1  1.5421626 0.09781869 1.4037201 0.020670924
# V2  1.3604323 0.05728471 1.2768656 0.012105332
# V3  1.2249034 0.04704870 1.1482431 0.009942272
# V4  1.1189148 0.03662555 1.0605407 0.007739666
# V5  1.0221635 0.04048780 0.9599296 0.008555832
# V6  0.9318382 0.04053704 0.8647949 0.008566237
# V7  0.8381154 0.04026090 0.7758708 0.008507883
# V8  0.7493151 0.04729122 0.6727706 0.009993521
# V9  0.6568985 0.04664676 0.5756055 0.009857334
# V10 0.5552561 0.04942935 0.4800394 0.010445348

# $subject
# [1] 100

# $variables
# [1] 10

# $centile
# [1] 0.05

# attr(,"class")
# [1] "parallel"

}
\keyword{ multivariate}

