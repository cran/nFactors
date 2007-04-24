"plotParallel" <-
function(x, 
                           eig    = NA, 
                           legend = TRUE,
                           ylab   = "Eigenvalue",
                           xlab   = "Component",
                           main   = "Parallel Analysis"
                           ) {                       
                          
  if (!inherits(x, "parallel")) stop("Method is only for parallel objects") 
                            
  var        <- length(x$eigen$qevpea) 
  if (length(eig) == 1) {  
   Component <- var:1
   Location  <- seq(from = 0, to = max(x$eigen$qevpea)*3, length.out = var)
   plot.default(as.numeric(Component),
                as.numeric(Location), 
                type = "n", 
                main = main, 
                xlab = xlab, 
                ylab = ylab) 
    }
    
  if (length(eig) > 1) {plotuScree(eig, main = main, xlab = xlab, ylab = ylab) }
  lines(1:var, x$eigen$qevpea , col = "green", type = "p", pch = 2)  
  lines(1:var, x$eigen$mevpea,  col = "red")
  if (legend == TRUE) {
   if (length(eig) == 1) { 
     leg <-  c("Mean Eigenvalues", "Centiles of the Eigenvalues")
     tco <-  c("red", "green")
     co  <-  c("red", "green")
     pc  <-  c(NA, 2)
   }
   if (length(eig) > 1) { 
     leg <-  c("Eigenvalues", "Mean Eigenvalues", "Centiles of the Eigenvalues")
     tco <-  c("black", "red", "green")
     co  <-  c("black", "red", "green")
     pc  <-  c(1, NA, 2)
   }
   legend("topright", 
          legend   = leg,
          text.col = tco, 
          col      = co,
          pch      = pc 
          )
    }      
  }

