\name{nFactors-parameters}
\alias{nFactors-parameters}
\alias{nFactors-parameters}
\docType{package}
\title{ Argument and Value Parameters Common to the Different Functions Available in Package nFactors}


\description{
 This help file describes the argument and value parameters used in the different functions
 available in package \pkg{nFactors}.  \cr
 
 \emph{Arguments}:
  \enumerate{
  \item{\emph{adequacy}:}{          logical: if \code{TRUE} prints the recovered
                                    population matrix from the factor structure
                                    (\code{structureSim})}
  \item{\emph{all}:}{               logical:   if \code{TRUE} computes he Bentler and Yuan
                                    index (very long computing time to consider)
                                    (\code{structureSim, studySim})}
  \item{\emph{alpha}:}{             numeric: statistical significance level
                                    (\code{nBartlett, nBentler})}
  \item{\emph{aparallel}:}{         numeric: results of a parallel analysis
                                    (\code{nScree}) }
  \item{\emph{cent}:}{              depreciated numeric (use quantile instead):
                                    quantile of the distribution
                                    (\code{moreStats, parallel})}
  \item{\emph{communalities}:}{     character: initial values for communalities
                                    (\code{"component"},
                                    \code{"ginv"}, \code{"maxr"}, or \code{"multiple"})
                                    (\code{iterativePrincipalAxis, principalAxis})}
  \item{\emph{cor}:}{               logical: if \code{TRUE} computes eigenvalues
                                    from a correlation
                                    matrix, else from a covariance matrix
                                    (\code{eigenComputes, nBartlett, nBentler,
                                    nCng, nMreg, nScree, nSeScree})}
  \item{\emph{correction}:}{        logical: if \code{TRUE} uses a correction
                                    for the degree
                                    of freedom after the first eigenvalue (\code{nBartlett})}
  \item{\emph{criteria}:}{          numeric: by default fixed at \eqn{\hat{\lambda}}.
                                    When the \eqn{\lambda}s are computed from a principal components
                                    analysis on a correlation matrix, it corresponds to the
                                    usual Kaiser \eqn{\lambda >= 1} rule. On a covariance matrix
                                    or from a factor analysis, it is simply the mean.
                                    To apply the \eqn{\lambda >= 0} sometimes used with factor
                                    analysis, fixed the criteria to \eqn{0} (\code{nScree})}
  \item{\emph{details}:}{           logical: if \code{TRUE} also returns details about the
                                    computation for each eigenvalues (\code{nBartlett, nBentler,
                                    nCng, nMreg, structureSim})}
  \item{\emph{diagCommunalities}:}{ logical: if \code{TRUE}, the correlation between
                                    the initial
                                    solution and the estimated one will use a
                                    correlation of one in the diagonal.
                                    If \code{FALSE} (default) the diagonal is not
                                    used in the computation of
                                    this correlation or covariance matrix
                                    (\code{rRecovery})}
  \item{\emph{dir}:}{               character:  directory where to save output
                                    (\code{studySim})}
  \item{\emph{eig}:}{               depreciated parameter (use x instead): eigenvalues to analyse
                                    (\code{nScree,  plotParallel})}
  \item{\emph{Eigenvalue}:}{        depreciated parameter (use x instead): eigenvalues to analyse
                                    (\code{plotuScree})}
  \item{\emph{fload}:}{             matrix: loadings of the factor structure (\code{structureSim})}
  \item{\emph{graphic}:}{           logical: specific plot (\code{bentlerParameters, structureSim})}
  \item{\emph{index}:}{             numeric: vector of the index of the selected indices
                                    (\code{plot.structureSim, print.structureSim, summary.structureSim}}
  \item{\emph{iterations}:}{        numeric: maximum number of iterations to obtain a solution
                                    (\code{iterativePrincipalAxis})}
  \item{\emph{legend}:}{            logical indicator of the presence of a legend (\code{plotnScree, plotParallel}) }
  \item{\emph{loadings}:}{          numeric: loadings from a factor analysis solution (\code{rRecovery, generateStructure, studySim})}
  \item{\emph{log}:}{               logical: if \code{TRUE} does the minimization on the log values  (\code{bentlerParameters, nBentler})}
  \item{\emph{main}:}{              character: main title (\code{plotnScree, plotParallel, plotuScree, boxplot.structureSim,
                                    plot.structureSim}) }
  \item{\emph{maxPar}:}{            numeric: maximums for the coefficient of the linear trend
                                    (\code{bentlerParameters, nBentler})}
  \item{\emph{minPar}:}{            numeric: minimums for the coefficient of the linear trend
                                    (\code{bentlerParameters, nBentler})}
  \item{\emph{method}:}{            character: actually only \code{"giv"} is supplied to compute the
                                    approximation of the communalities by  maximum correlation
                                    (\code{corFA, nCng, nMreg, nScree, nSeScree})}
  \item{\emph{mjc}:}{               numeric: number of major factors (factors with practical significance)
                                    (\code{generateStructure}) }
  \item{\emph{pmjc}:}{              numeric: number of variables that load significantly on each major factor
                                    (\code{generateStructure})}
  \item{\emph{model}:}{             character: \code{"components"} or \code{"factors"}  (\code{nScree, parallel, plotParallel,
                                    plotuScree, structureSim, eigenBootParallel, eigenBootParallel, studySim})}
  \item{\emph{N}:}{                 numeric:  number of subjects (\code{nBartlett, bentlerParameters, nBentler, studySim})}
  \item{\emph{nboot}:}{             numeric: number of bootstrap samples (\code{eigenBootParallel}) }
  \item{\emph{nFactors}:}{          numeric: number of components/factors to retained (\code{componentAxis,
                                    iterativePrincipalAxis, principalAxis, bentlerParameters, boxplot.structureSim, studySim})}
  \item{\emph{nScree}:}{            results of a previous nScree analysis (\code{plotnScree})}
  \item{\emph{option}:}{            character: \code{"permutation"} or \code{"bootstrap"} (\code{eigenBootParallel})}
  \item{\emph{object}:}{            nScree: an object of the class nScree \code{is.nScree, summary.nScree} }
  \item{\emph{object}:}{            structureSim: an object of the class structureSim (\code{is.structureSim,
                                    summary.structureSim})}

  \item{\emph{parallel}:}{          numeric: vector of the result of a previous parallel analysis (\code{plotParallel})}
  \item{\emph{pmjc}:}{              numeric: number of major loadings on each factor factors (\code{generateStructure, studySim}) }
  \item{\emph{quantile}:}{          numeric: quantile that will be reported (\code{parallel, moreStats,
                                    eigenBootParallel, structureSim, studySim}) }
  \item{\emph{R}:}{                 numeric: correlation or covariance matrix (\code{componentAxis, iterativePrincipalAxis,
                                    principalAxis, principalComponents, rRecovery, corFA})}
  \item{\emph{r2limen}:}{           numeric: R2 limen value for the R2 Nelson index (\code{structureSim, nSeScree, studySim})}
  \item{\emph{rep}:}{               numeric: number of replications of the correlation or the covariance matrix (default is 100) (\code{parallel})}
  \item{\emph{reppar}:}{            numeric: number of replications for the parallel analysis (\code{structureSim, studySim})}
  \item{\emph{repsim}:}{            numeric: number of replications of the matrix correlation simulation (\code{structureSim, studySim})}
  \item{\emph{resParx}:}{           numeric: restriction on the \eqn{\alpha} coefficient (x) to graph the function to minimize
                                    (\code{bentlerParameters})}
  \item{\emph{resolution}:}{        numeric: resolution of the 3D graph (number of points from \eqn{\alpha} and from \eqn{\beta}).}
  \item{\emph{resPary}:}{           numeric: restriction on the \eqn{\beta} coefficient (y) to graph the function to minimize
                                    (\code{bentlerParameters})}
  \item{\emph{sd}:}{                numeric: vector of standard deviations of the simulated variables
                                    (for a parallel analysis on a covariance matrix) \code{parallel})}
  \item{\emph{show}:}{              logical: if \code{TRUE} prints the quantile chosen (\code{moreStats}) }
  \item{\emph{stats}:}{             numeric:   vector of the statistics to return: mean(1),
                                    median(2), sd(3), quantile(4), min(5), max(6)
                                    (\code{studySim})}
  \item{\emph{subject}:}{           numeric: number of subjects (default is 100) (\code{parallel})}
  \item{\emph{tolerance}:}{         numeric: minimal difference in the estimated communalities after a given iteration
                                    (\code{iterativePrincipalAxis})}
  \item{\emph{trace}:}{             logical:   if \code{TRUE} gives details of the status of the simulations
                                    (\code{studySim})}
  \item{\emph{typePlot}:}{          character: plots the minimized function according to a 3D plot: \code{"wireframe"},
                                    \code{"contourplot"} or \code{"levelplot"}  (\code{bentlerParameters})}
  \item{\emph{unique}:}{            numeric: loadings on the non significant variables on each major factor
                                    (\code{generateStructure, studySim}) }
  \item{\emph{upper}:}{             logical: if \code{TRUE} upper diagonal is replaced with lower
                                    diagonal. If \code{FALSE}, lower diagonal is replaced with upper diagonal
                                    (\code{diagReplace})}
  \item{\emph{use}:}{               character: how to deal with missing values, same as the
                                    parameter from the \code{corr} function (\code{eigenBootParallel}) }
  \item{\emph{var}:}{               numeric: number of variables (default is 10) (\code{parallel, generateStructure, studySim}) }
  \item{\emph{vLine}:}{             character: color of the vertical indicator line in the eigen boxplot
                                    (\code{boxplot.structureSim})}
  \item{\emph{x}:}{                 numeric: a \code{vector} of eigenvalues, a \code{matrix} of
                                    correlations or of covariances or a \code{data.frame} of data
                                    (\code{eigenFrom, nBartlett, nCng, nMreg})}
  \item{\emph{xlab}:}{              character: label of the x axis (\code{plotnScree, plotParallel, plotuScree,
                                    boxplot.structureSim})}
  \item{\emph{x}:}{                 data.frame: data from which a correlation or covariance matrix will be obtained (\code{eigenBootParallel})}
  \item{\emph{x}:}{                 depreciated: (\code{plotParallel})}
  \item{\emph{x}:}{                 nScree: an object of the class nScree (\code{plot.nScree, print.nScree})}
  \item{\emph{x}:}{                 numeric: matrix (\code{makeCor})}
  \item{\emph{x}:}{                 numeric: matrix or data.frame (\code{moreStats})}
  \item{\emph{x}:}{                 structureSim: an object of the class structureSim (\code{boxplot.structureSim,
                                    plot.structureSim, print.structureSim})}
  \item{\emph{ylab}:}{              character: label of the y axis (\code{plotnScree, plotParallel, plotuScree,
                                    boxplot.structureSim}) }
  }



 \emph{Values}:
 \enumerate{
  \item{\emph{cor}:}{          numeric: Pearson correlation between initial and recovered estimated
                               correlation or covariance matrix. Compution depend on the
                               logical value of the \code{communalities} argument (\code{rRecovery}) }
  \item{\emph{details}:}{      numeric: matrix of the details for each index (\code{nBartlett, bentlerParameters, nCng, nMreg})}
  \item{\emph{difference}:}{   numeric: difference between initial and recovered estimated
                               correlation or covariance matrix (\code{rRecovery})}
  \item{\emph{iterations}:}{   numeric: maximum number of iterations to obtain a solution (\code{iterativePrincipalAxis})}
  \item{\emph{loadings}:}{     numeric: loadings of each variable on each component or factor retained (\code{componentAxis,
                               iterativePrincipalAxis, principalAxis, principalComponents}) }
  \item{\emph{nFactors}:}{     numeric: vector of the number of components or factors retained by the
                               Bartlett, Anderson and Lawley procedures  (\code{nBartlett, bentlerParameters, nCng, nMreg}) }
  \item{\emph{R}: }{           numeric: correlation or covariance matrix (\code{diagReplace, rRecovery})}
  \item{\emph{recoveredR}:}{   numeric: recovered estimated correlation or covariance matrix (\code{rRecovery}) }
  \item{\emph{tolerance}:}{    numeric: minimal difference in the estimated communalities after a given iteration
                               (\code{iterativePrincipalAxis})}
  \item{\emph{values}:}{       numeric: data.frame of information (\code{nScree, parallel, plotnScree, plotParallel,
                               plotuScree, structureSim})}
  \item{\emph{values}:}{       numeric: data.frame of statistics (\code{moreStats}) }
  \item{\emph{values}:}{       numeric: full matrix of correlation or covariance (\code{makeCor}) }
  \item{\emph{values}:}{       numeric: variance of each component or factor (\code{iterativePrincipalAxis, principalComponents}) }
  \item{\emph{values}:}{       data.frame: mean, median, quantile, standard deviation,
                               minimum and maximum of bootstrapped eigenvalues (\code{eigenBootParallel})}
  \item{\emph{values}:}{       numeric: matrix of correlation or covariance with communalities in the diagonal (\code{corFA})}
  \item{\emph{values}:}{       numeric: variance of each component or factor retained (\code{componentAxis, principalAxis}) }
  \item{\emph{values}:}{       numeric: matrix factor structure (\code{generateStructure})}
  \item{\emph{varExplained}:}{ numeric: variance explained by each component or factor retained (\code{componentAxis, iterativePrincipalAxis,
                               principalAxis, principalComponents}) }
  \item{\emph{varExplained}:}{ numeric: cumulative variance explained by each component or factor retained (\code{componentAxis,
                               iterativePrincipalAxis, principalAxis, principalComponents}) }
  }
 }

\author{
    Gilles Raiche \cr
    Centre sur les Applications des Modeles de Reponses aux Items (CAMRI) \cr
    Universite du Quebec a Montreal\cr
    \email{raiche.gilles@uqam.ca}, \url{http://www.er.uqam.ca/nobel/r17165/} \cr \cr
    David Magis \cr
    Departement de mathematiques \cr
    Universite de Liege \cr
    \email{David.Magis@ulg.ac.be}
 }

 \references{
  Raiche, G., Riopel, M. and Blais, J.-G. (2006). \emph{Non graphical solutions
  for the Cattell's scree test}. Paper presented at the International Annual
  meeting of the Psychometric Society, Montreal.
 [\url{http://www.er.uqam.ca/nobel/r17165/RECHERCHE/COMMUNICATIONS/}]
 }


\seealso{
 Other packages are also very useful for principal component and factor analysis.
 The \emph{R} psychometric view is instructive at this point.
 See \url{http://cran.stat.sfu.ca/web/views/Psychometrics.html} for further details.
 }


\keyword{ package }



