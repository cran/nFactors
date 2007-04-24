"plotuScree" <-
function(Eigenvalue, y = NA,
                    ylab   = "Eigenvalue",
                    xlab   = "Component",
                    main   = "Scree Plot"
                   ) {                   
 if (!inherits(Eigenvalue, "numeric")) stop("use only with \"numeric\" objects")
 par(mfrow = c(1,1))
 nk          <- length(Eigenvalue)
 Component   <- 1:nk
 plot.default(as.numeric(Component), 
              as.numeric(Eigenvalue), 
              type = 'b',col = "black", pch = 1,
              ylab = ylab,
              xlab = xlab,
              main = main
              ) 
}

