#' Principal Axis Analysis
#'
#' The \code{PrincipalAxis} function returns a principal axis analysis without
#' iterated communalities estimates. Three different choices of communalities
#' estimates are given: maximum corelation, multiple correlation or estimates
#' based on the sum of the squared principal component analysis loadings.
#' Generally statistical packages initialize the the communalities at the
#' multiple correlation value (usual inverse or generalized inverse).
#' Unfortunately, this strategy cannot deal with singular correlation or
#' covariance matrices.  If a generalized inverse, the maximum correlation or
#' the estimated communalities based on the sum of loading are used instead,
#' then a solution can be computed.
#'
#'
#' @param R numeric: correlation or covariance matrix
#' @param nFactors numeric: number of factors to retain
#' @param communalities character: initial values for communalities
#' (\code{"component", "maxr", "ginv" or "multiple"})
#' @return \item{values}{ numeric: variance of each component/factor }
#' \item{varExplained}{ numeric: variance explained by each component/factor }
#' \item{varExplained}{ numeric: cumulative variance explained by each
#' component/factor } \item{loadings}{ numeric: loadings of each variable on
#' each component/factor }
#' @author Gilles Raiche \cr Centre sur les Applications des Modeles de
#' Reponses aux Items (CAMRI) \cr Universite du Quebec a Montreal\cr
#' \email{raiche.gilles@@uqam.ca}
#' @seealso \code{\link{componentAxis}}, \code{\link{iterativePrincipalAxis}},
#' \code{\link{rRecovery}}
#' @references Kim, J.-O. and Mueller, C. W. (1978). \emph{Introduction to
#' factor analysis. What it is and how to do it}. Beverly Hills, CA: Sage.
#'
#' Kim, J.-O. and Mueller, C. W. (1987). \emph{Factor analysis. Statistical
#' methods and practical issues}. Beverly Hills, CA: Sage.
#' @export
# #' @importFrom MASS ginv
#' @keywords multivariate
#' @examples
#'
#' # .......................................................
#' # Example from Kim and Mueller (1978, p. 10)
#' # Population: upper diagonal
#' # Simulated sample: lower diagnonal
#'  R <- matrix(c( 1.000, .6008, .4984, .1920, .1959, .3466,
#'                 .5600, 1.000, .4749, .2196, .1912, .2979,
#'                 .4800, .4200, 1.000, .2079, .2010, .2445,
#'                 .2240, .1960, .1680, 1.000, .4334, .3197,
#'                 .1920, .1680, .1440, .4200, 1.000, .4207,
#'                 .1600, .1400, .1200, .3500, .3000, 1.000),
#'                 nrow=6, byrow=TRUE)
#'
#' # Factor analysis: Principal axis factoring
#' # without iterated communalities -
#' # Kim and Mueller (1978, p. 21)
#' # Replace upper diagonal with lower diagonal
#'  RU <- diagReplace(R, upper=TRUE)
#'  principalAxis(RU, nFactors=2, communalities="component")
#'  principalAxis(RU, nFactors=2, communalities="maxr")
#'  principalAxis(RU, nFactors=2, communalities="multiple")
#' # Replace lower diagonal with upper diagonal
#'  RL <- diagReplace(R, upper=FALSE)
#'  principalAxis(RL, nFactors=2, communalities="component")
#'  principalAxis(RL, nFactors=2, communalities="maxr")
#'  principalAxis(RL, nFactors=2, communalities="multiple")
#' # .......................................................
#'
"principalAxis" <-
function(R, nFactors=2, communalities="component") {
 if (communalities == "component")            diag(R)  <- componentAxis(R)$communalities
 if (communalities == "maxr")      { RT <- R; diag(RT) <- 0; diag(R) <- apply(RT, 1, max)}
 if (communalities == "ginv")                 diag(R)  <- sqrt(1-1/diag(ginv(R)))
 if (communalities == "multiple")  {
  if (all(eigen(R)$values > 0)) diag(R) <- sqrt(1-1/diag(solve(R)))  # Gorsuch (1983, p. 106)
  else return("Not all eigenvalues are greater than 0") # Verication of positive definiteness
  }
 apa <- componentAxis(R, nFactors)
 return(apa)
 }

