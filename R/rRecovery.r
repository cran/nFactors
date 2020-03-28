#' Test of Recovery of a Correlation or a Covariance matrix from a Factor
#' Analysis Solution
#'
#' The \code{rRecovery} function returns a verification of the quality of the
#' recovery of the initial correlation or covariance matrix by the factor
#' solution.
#'
#'
#' @param R numeric: initial correlation or covariance matrix
#' @param loadings numeric: loadings from a factor analysis solution
#' @param diagCommunalities logical: if \code{TRUE}, the correlation between
#' the initial solution and the estimated one will use a correlation of one in
#' the diagonal. If \code{FALSE} (default) the diagonal is not used in the
#' computation of this correlation.
#' @return \item{R}{ numeric: initial correlation or covariance matrix }
#' \item{recoveredR}{ numeric: recovered estimated correlation or covariance
#' matrix } \item{difference}{ numeric: difference between initial and
#' recovered estimated correlation or covariance matrix} \item{cor}{ numeric:
#' Pearson correlation between initial and recovered estimated correlation or
#' covariance matrix. Computations depend on the logical value of the
#' \code{communalities} argument. }
#' @author Gilles Raiche \cr Centre sur les Applications des Modeles de
#' Reponses aux Items (CAMRI) \cr Universite du Quebec a Montreal\cr
#' \email{raiche.gilles@@uqam.ca}
#' @seealso \code{\link{componentAxis}}, \code{\link{iterativePrincipalAxis}},
#' \code{\link{principalAxis}}
#' @export
#' @importFrom MASS ginv
#' @importFrom stats cor
#' @keywords utilities
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
#'
#' # Replace upper diagonal with lower diagonal
#'  RU         <- diagReplace(R, upper=TRUE)
#'  nFactors   <- 2
#'  loadings   <- principalAxis(RU, nFactors=nFactors,
#'                              communalities="component")$loadings
#'  rComponent <- rRecovery(RU,loadings, diagCommunalities=FALSE)$cor
#'
#'  loadings   <- principalAxis(RU, nFactors=nFactors,
#'                              communalities="maxr")$loadings
#'  rMaxr      <- rRecovery(RU,loadings, diagCommunalities=FALSE)$cor
#'
#'  loadings   <- principalAxis(RU, nFactors=nFactors,
#'                              communalities="multiple")$loadings
#'  rMultiple  <- rRecovery(RU,loadings, diagCommunalities=FALSE)$cor
#'
#'  round(c(rComponent = rComponent,
#'          rmaxr      = rMaxr,
#'          rMultiple  = rMultiple), 3)
#' # .......................................................
#'
#'
"rRecovery" <-
function(R, loadings, diagCommunalities=FALSE) {
 recoveredR <- loadings %*% t(loadings)
 recovery   <- list(R = R, recoveredR = recoveredR, difference = R - recoveredR)
 if (diagCommunalities == FALSE) {diag(R)    <- NA; diag(recoveredR) <- NA }
 corr       <- cor(c(R),c(recoveredR), use="pairwise.complete.obs")
 recovery   <- list(recovery, cor = corr)
 return(recovery)
 }


