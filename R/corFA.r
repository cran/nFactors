#' Insert Communalities in the Diagonal of a Correlation or a Covariance Matrix
#'
#' This function inserts communalities in the diagonal of a correlation/covariance matrix.
#'
#' @param R An integer matrix or a data.frame of correlations
#' @param method A character vector: inversion method
#' @return A correlation matrix with coerced variables with communalities in the diagonal.
#' @author Gilles Raiche, Universite du Quebec a Montreal (\email{raiche.gilles@@uqam.ca})
#' @export
#' @importFrom MASS ginv
#' @seealso \code{\link{plotuScree}}, \code{\link{nScree}},
#' \code{\link{plotnScree}}, \code{\link{plotParallel}}
#'
#'
#' @examples
#'
#' ## LOWER CORRELATION MATRIX WITH ZEROS ON UPPER PART
#' ## From Gorsuch (table 1.3.1)
#'  gorsuch <- c(
#'  1,0,0,0,0,0,0,0,0,0,
#'  .6283, 1,0,0,0,0,0,0,0,0,
#'  .5631, .7353, 1,0,0,0,0,0,0,0,
#'  .8689, .7055, .8444, 1,0,0,0,0,0,0,
#'  .9030, .8626, .6890, .8874, 1,0,0,0,0,0,
#'  .6908, .9028, .9155, .8841, .8816, 1,0,0,0,0,
#'  .8633, .7495, .7378, .9164, .9109, .8572, 1,0,0,0,
#'  .7694, .7902, .7872, .8857, .8835, .8884, .7872, 1,0,0,
#'  .8945, .7929, .7656, .9494, .9546, .8942, .9434, .9000, 1,0,
#'  .5615, .6850, .8153, .7004, .6583, .7720, .6201, .6141, .6378, 1)
#'
#' ## UPPER CORRELATION MATRIX FILLED WITH UPPER CORRELATION MATRIX
#'  gorsuch <- makeCor(gorsuch)
#'
#' ## REPLACE DIAGONAL WITH COMMUNALITIES
#'  gorsuchCfa <- corFA(gorsuch)
#'  gorsuchCfa
#'
#' @keywords manip
"corFA" <-
function(R, method="ginv") {
 R <- as.matrix(R)
 if (method == "ginv") return(R - ginv(diag(diag(ginv(R)))))
 }

