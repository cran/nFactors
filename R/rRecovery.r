"rRecovery" <-
function(R, loadings, communalities=FALSE) {
 recoveredR <- loadings %*% t(loadings)
 recovery   <- list(R = R, recoveredR = recoveredR, difference = R - recoveredR)
 if (communalities == FALSE) {diag(R)    <- NA; diag(recoveredR) <- NA }
 corr       <- cor(c(R),c(recoveredR), use="pairwise.complete.obs")
 recovery   <- list(recovery, cor = corr)
 return(recovery)
 }

 
