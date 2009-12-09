\name{plotnScree}

\alias{plotnScree}

\title{ Scree Plot According to a nScree Object Class }

\description{
  Plot a scree plot adding information about a non graphical \code{nScree} analysis.
 }

\usage{
 plotnScree(nScree, 
            legend = TRUE,
            ylab   = "Eigenvalues",
            xlab   = "Components",
            main   = "Non Graphical Solutions to Scree Test"
            )                    
 }

\arguments{
  \item{nScree}{  Results of a previous \code{nScree} analysis }
  \item{legend}{  Logical indicator of the presence or not of a legend  }
  \item{xlab}{    Label of the x axis (default to \code{"Component"}) }
  \item{ylab}{    Label of the y axis (default to \code{"Eigenvalue"}) }
  \item{main}{    Main title (default to \code{"Non Graphical Solutions to the Scree Test"}) }
 }

\value{
 Nothing returned.
 }

\references{ 
 Raiche, G., Riopel, M. and Blais, J.-G. (2006). \emph{Non graphical solutions for the Cattell's scree test}.
  Paper presented at the International Annual meeting of the Psychometric Society, Montreal.
  [\url{http://www.er.uqam.ca/nobel/r17165/RECHERCHE/COMMUNICATIONS/}]
 }

\author{ 
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }


\seealso{ 
 \code{\link{plotuScree}}, 
 \code{\link{nScree}},
 \code{\link{plotParallel}}, 
 \code{\link{parallel}}  
 }

\examples{
## INITIALISATION
 data(dFactors)                      # Load the nFactors dataset
 attach(dFactors)
 vect         <- Raiche              # Use the second example from Buja and Eyuboglu 
                                     # (1992, p. 519, nsubjects not specified by them)
 eigenvalues  <- vect$eigenvalues    # Extract the observed eigenvalues
 nsubjects    <- vect$nsubjects      # Extract the number of subjects
 variables    <- length(eigenvalues) # Compute the number of variables
 rep          <- 100                 # Number of replications for the parallel analysis
 cent         <- 0.95                # Centile value of the parallel analysis

## PARALLEL ANALYSIS (qevpea for the centile criterion, mevpea for the mean criterion)
 aparallel    <- parallel(var     = variables,
                          subject = nsubjects, 
                          rep     = rep, 
                          cent    = cent)$eigen$qevpea  # The 95 centile

## NOMBER OF FACTORS RETAINED ACCORDING TO DIFFERENT RULES 
 results <- nScree(eig       = eigenvalues,
                   aparallel = aparallel
                   )
                   
 results
 
## PLOT ACCORDING TO THE nScree CLASS 
 plotnScree(results)
 }
 
\keyword{ multivariate }

