\name{dFactors}
\alias{dFactors}
\docType{data}
\title{ Eigenvalues Vectors from the Litterature }

\description{
  Classical examples of eigenvalues vectors used to study the number of factors 
  to retain in the litterature. These examples generally give the number of
  subjects use to obtain these eigenvalues. 
  The number of subjects is used with the parallel analysis.
 }

\usage{data(dFactors)}

\format{
 A list of examples. For each example, a list is also used to give the eigenvalues
 vector and the number of subjects.
 }

\details{
 Other datasets will be added in future versions of the package.
 }

\source{
 Lawley and Hand data set: Bartholomew \emph{et al}. (2002, p. 123, 126)  

 Bentler dataset:          Bentler and Yuan (1998, p. 139-140)

 Buja datasets:            Buja and Eyuboglu (1992, p. 516, 519) < Number of subjects not specified by Baju and Eyuboglu >

 Cliff datasets:           Cliff (1970, p. 165)

 Raiche dataset:           Raiche, Langevin, Riopel and Mauffette (2006)

 Raiche dataset:           Raiche, Riopel and Blais (2006, p. 9)

 Tucker datasets:          Tucker \emph{et al}. (1969, p. 442)
 }

\references{
 Bartholomew, D. J., Steele, F., Moustaki, I. and Galbraith, J. I. (2002).
 \emph{The analysis and interpretation of multivariate
 data for social scientists}. Boca Raton, FL: Chapman and Hall.

 Bentler, P. M. and Yuan, K.-H. (1998). Tests for linear trend in the smallest
 eigenvalues of the correlation matrix. \emph{Psychometrika, 63}(2), 131-144.

 Buja, A. and Eyuboglu, N. (1992). Remarks on parallel analysis.
 \emph{Multivariate Behavioral Research, 27}(4), 509-540.

 Cliff, N. (1970). The relation between sample and population characteristic vectors.
 \emph{Psychometrika, 35}(2), 163-178.

 Hand, D. J., Daly, F., Lunn, A. D., McConway, K. J. and Ostrowski, E. (1994).
 \emph{A handbook of small data sets}. Boca Raton, FL: Chapman and Hall.

 Jaejon Song, B. A., Walls, T. A. and Raiche, G. (2008). \emph{Numerical solutions
 for Cattel's scree test: application to the adolescent smoking consequences
 questionnaire (ASCQ)}. Paper presented at the International Annual meeting of the
 Psychometric Society, Duram, New Hamphire.
 [\url{http://www.er.uqam.ca/nobel/r17165/RECHERCHE/COMMUNICATIONS/}]

 Lawley, D. N. and Maxwell, A. E. (1971). \emph{Factor analysis as a statistical
 method} (2nd edition). London: Butterworth.

 Raiche, G., Langevin, L., Riopel, M. and Mauffette, Y. (2006).
 \emph{Mesure et Evaluation en Education, 29}(2), 41-61.

 Raiche, G., Riopel, M. and Blais, J.-G. (2006). \emph{Non graphical solutions
 for the Cattell's scree test}. Paper presented at the International Annual
 meeting of the Psychometric Society, Montreal.
[\url{http://www.er.uqam.ca/nobel/r17165/RECHERCHE/COMMUNICATIONS/}]

 Tucker, L. D., Koopman, R. F. and Linn, R. L. (1969). Evaluation of factor
 analytic reserach procedures by mean of simulated correlation matrices.
 \emph{Psychometrika, 34}(4), 421-459.

 Zoski, K. and Jurs, S. (1993). Using multiple regression to determine the
 number of factors to retain in factor analysis. \emph{Multiple Linear
 Regression Viewpoint, 20}(1), 5-9.
 }

\author{ 
    Gilles Raiche, Universite du Quebec a Montreal
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/}
 }

\examples{
# EXAMPLES FROM DATASET
 data(dFactors)

# COMMAND TO VISUALIZE THE CONTENT AND ATTRIBUTES OF THE DATASETS
 names(dFactors)
 attributes(dFactors)
 dFactors$Cliff1$eigenvalues
 dFactors$Cliff1$nsubjects

# SCREE PLOT
 plotuScree(dFactors$Cliff1$eigenvalues)
 }
 
\keyword{datasets}
