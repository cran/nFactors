"parallel" <-
function(subject=100,var=10,rep=100,cent=0.05)
 {
  r             <- subject	
  c             <- var
  y             <- matrix(c(1:r*c), nrow=r, ncol=c)
  ycor          <- matrix(c(1:c*c), nrow=c, ncol=c)
  evpea         <- NULL
  leg.txt       <- "Pearson"
  # Simulation of k samples to obtain k random eigenvalues vectors
  # for Pearson correlation coefficients
  for (k in c(1:rep)) {
   y              <- rnorm(y)
   y              <- matrix(y, nrow=r, ncol=c)
   evpea          <- rbind(evpea, eigen(cor(y))[[1]]) 
   }
  # Temporay function to compute the standard error of a centile  
  SEcentile <- function(sd, n = 100, p = 0.95) {return(sd/sqrt(n) * sqrt(p*(1-p))/dnorm(qnorm(p))) }

  # Summary statistics
  sprob         <- c(cent)
  mevpea        <- sapply(as.data.frame(evpea),  mean)                          # Eigenvalues means
  sevpea        <- sapply(as.data.frame(evpea),  sd  )                          # Eigenvalues Standard deviations
  quant         <- function(x, sprobs = sprobs) {return(as.vector(quantile(x, probs = sprob))) }
  qevpea        <- sapply(as.data.frame(evpea),  quant)                         # Eigenvalues centiles
  sqevpea       <- sevpea
  sqevpea       <- sapply(as.data.frame(sqevpea), SEcentile, n = rep, p = cent) # Standard error of the centiles
   
  # List of results return
  result        <- list(eigen     = data.frame(mevpea, sevpea, qevpea, sqevpea),
                        subject   = r, 
                        variables = c, 
                        centile   = cent
                        )
  class(result) <- 'parallel'                                                  # For future use
  return(result)
 }

