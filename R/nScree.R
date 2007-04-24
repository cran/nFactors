"nScree" <-
function(eig, 
                    aparallel = rep(1,length(eig))
                    ) {
 # Initialisation
 nk         <- length(eig)
 k          <- 1:nk
 proportion <- eig/nk
 cumulative <- proportion
 for (i in 2:nk) cumulative[i] = cumulative[i-1] + proportion[i]
 cond1      <- TRUE; cond2 <- TRUE; i <- 0; pred.eig <- af <- rep(NA,nk)
 while ((cond1 == TRUE) && (cond2 == TRUE) && (i < nk)) {
  i           <- i + 1
  ind         <- k[c(i+1,nk)]
  # Optimal coordinate based on the next eigenvalue regression (scree)
  vp.p        <- lm(eig[c(i+1,nk)] ~ ind)
   vp.prec     <- pred.eig[i] <- sum(c(1,i)* coef(vp.p)) 
  cond1       <- (eig[i] >=  vp.prec)
  cond2       <- (eig[i] >= aparallel[i])
  nc          <- i-1
  } 
  # Second derivative at the i eigenvalue (acceleration factor, elbow)
  # See Yakowitz and Szidarovszky (1986, p. 84)
  tag       <- 1
  for (j in 2:(nk-1)) { 
    if (eig[j-1] >= aparallel[j-1]) {
      af[j]   <- (eig[j+1] -2* eig[j]) + eig[j-1]
    }
   }
  
  p.vec     <- which(eig >= aparallel,TRUE)
  npar      <- sum(p.vec == (1:length(p.vec)))
  nkaiser   <- sum(eig >= rep(1,nk))
  naf       <- which(af == max(af,na.rm=TRUE),TRUE) - 1
  
  # Assure that all the optimal coordinates will be computed
  for (i in (nc+1):(nk-2)) {
   ind        <- k[c(i+1,nk)]
   vp.p       <- lm(eig[c(i+1,nk)] ~ ind)
    vp.prec    <- pred.eig[i] <- sum(c(1,i)* coef(vp.p)) 
   } 
   
  # Assure that all the acceleration factors will be computed
  for (j in 2:(nk-1)) af[j] <- (eig[j+1] - 2 * eig[j]) + eig[j-1]   

  # Return values by the function
  coc       <- rep("",nk); coc[nc]  = "(< OC)"
  caf       <- rep("",nk); caf[naf] = "(< AF)"
  result <- (list(Components = data.frame(noc          = nc, 
                                 naf                    = naf,
                                 nparallel              = npar, 
                                 nkaiser                = nkaiser), 
                  Analysis   = data.frame(Eigenvalues  = eig, 
                                 Prop                   = proportion,
                                 Cumu                   = cumulative,
                                 Par.Analysis           = aparallel,
                                 Pred.eig               = pred.eig,
                                 OC                     = coc,
                                 Acc.factor             = af,
                                 AF                     = caf))
                                 )                              

  class(result) <- 'nScree' 
  return(result)
}

