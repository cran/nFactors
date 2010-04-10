\name{studySim}
\alias{studySim}
\title{ Simulation Study from Given Factor Structure Matrices and Conditions}

\description{
 The \code{structureSim} function returns statistical results from simulations
 from predefined congeneric factor structures. The main ideas come from the
 methodology applied by Zwick and Velicer (1986).
 }

\usage{
 studySim(var, nFactors, pmjc, loadings, unique, N, repsim, reppar,
          stats=1, quantile=0.5, model="components", r2limen=0.75,
          all=FALSE, dir=NA, trace=TRUE)
 }

\arguments{
  \item{var}{       numeric:   vector of the number of variables}
  \item{nFactors}{  numeric:   vector of the number of components/factors}
  \item{pmjc}{      numeric:   vector of the number of major loadings on each component/factor}
  \item{loadings}{  numeric:   vector of the major loadings on each component/factor}
  \item{unique}{    numeric:   vector of the unique loadings on each component/factor}
  \item{N}{         numeric:   vector of the number of subjects/observations}
  \item{repsim}{    numeric:   number of replications of the matrix correlation
                    simulation}
  \item{reppar}{    numeric:   number of replications for the parallel and permutation analysis}
  \item{stats}{     numeric:   vector of the statistics to return: mean(1),
                    median(2), sd(3), quantile(4), min(5), max(6)}
  \item{quantile}{  numeric:   quantile for the parallel and permutation analysis}
  \item{model}{     character: \code{"components"} or \code{"factors"} }
  \item{r2limen}{   numeric:   R2 limen value for the R2 Nelson index}
  \item{all}{       logical:   if \code{TRUE} computes the Bentler and Yuan
                    index (very long computing time to consider)}
  \item{dir}{       character:  directory where to save output. Default to NA}
  \item{trace}{     logical:   if \code{TRUE} outputs details of the status of the simulations}
 }

\value{
  \item{values}{ Returns selected statistics about the number of components/factors
                 to retain: mean, median, quantile,
                 standard deviation, minimum and maximum.}
 }

\seealso{
 \code{\link{generateStructure}},
 \code{\link{structureSim}}
 }

\references{
  Zwick, W. R. and Velicer, W. F. (1986). Comparison of five rules for
   determining the number of components to retain. \emph{Psychological Bulletin, 99}, 432-442.
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
\dontrun{
# ....................................................................
# Example inspired from Zwick and Velicer (1986)
# Very long computimg time
# ...................................................................

# 1. Initialisation
# reppar    <- 30
# repsim    <- 5
# quantile  <- 0.50

# 2. Simulations
# X         <- studySim(var=36,nFactors=3, pmjc=c(6,12), loadings=c(0.5,0.8),
#                       unique=c(0,0.2), quantile=quantile,
#                       N=c(72,180), repsim=repsim, reppar=reppar,
#                       stats=c(1:6))

# 3. Results (first 10 results)
# print(X[1:10,1:14],2)
# names(X)

# 4. Study of the error done in the determination of the number
#    of components/factors. A positive value is associated to over
#    determination.
# results   <- X[X$stats=="mean",]
# residuals <- results[,c(11:25)] - X$nfactors
# BY        <- c("nsubjects","var","loadings")
# round(aggregate(residuals, by=results[BY], mean),0)
 }
 }

\keyword{ multivariate }
