###################################################
### chunk number 1: 
###################################################
 library(xtable)
 library(nFactors)
 nFactors  <- 3
 unique    <- 0.2
 loadings  <- 0.5
 nsubjects <- 180
 repsim    <- 100
 var       <- 36
 pmjc      <- 12
 reppar    <- 100
 index     <- 1:11
 zwick     <- generateStructure(var=var, mjc=nFactors, pmjc=pmjc,
                                loadings=loadings,
                                unique=unique)


###################################################
### chunk number 2: 
###################################################
 mzwick.fa    <-  structureSim(fload=as.matrix(zwick), reppar=reppar,
                               repsim=repsim, details=TRUE,
                               N=nsubjects, quantile=0.5,
                               model="factors")
 xtable(mzwick.fa[[2]][,index],
        caption="Distribution of the number of factors to retain according to different indices (factor analysis)")
 xtable(mzwick.fa[[2]][-4,index] - nFactors,
        caption="Distribution of residuals of the number of factors to retain according to different indices (factor analysis)")


###################################################
### chunk number 3: 
###################################################
 mzwick       <-  structureSim(fload=as.matrix(zwick), reppar=reppar,
                               repsim=repsim, details=TRUE,
                               N=nsubjects, quantile=0.5)
 xtable(mzwick[[2]][,index], caption="Distribution of the number of factors to retain according to different indices (principal component analysis)")
 xtable(mzwick[[2]][-4,index] - nFactors, caption="Distribution of residuals of the number of factors to retain according to different indices (principal component analysis)")


###################################################
### chunk number 4: 
###################################################
par(mfrow=c(2,1))
plot(x=mzwick, nFactors=nFactors, index=index, cex.axis=0.6, col="red",
     main="Principal Component Analysis")
plot(x=mzwick.fa, nFactors=nFactors, index=index, cex.axis=0.6, col="red",
     main="Factor Analysis")
par(mfrow=c(1,1))


###################################################
### chunk number 5: 
###################################################
par(mfrow=c(2,1))
boxplot(mzwick,    nFactors=3, xlab="Components", cex.axis=0.7,
        eigenSelect=1:10, vLine="blue", col="red")
boxplot(mzwick.fa, nFactors=3, cex.axis=0.7, eigenSelect=1:10,
        vLine="blue", col="red",
        main="Factor Analysis")
par(mfrow=c(1,1))


