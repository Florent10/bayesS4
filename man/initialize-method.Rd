% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.R, R/predict.R, R/simulateData.R
\docType{methods}
\name{initialize}
\alias{initialize}
\title{Initialize an instance of a fitData S4 class.}
\usage{
\S4method{initialize}{fitData}(.Object, m = list(0),
  modelname = "full", rows = "diag", column = "diag",
  kerneltypeRow = "exponential", kerneltypeCol = "exponential",
  h = 10, s = 0.01, lambdaR = 0.3, lambdaC = 0.3,
  validation = FALSE, listLambdaR = seq(from = 0, to = 1, by = 0.1),
  listLambdaC = seq(from = 0, to = 1, by = 0.1), model = "gaussian")

\S4method{initialize}{predictClass}(.Object, m = list(0),
  fittedCov = list(0), lambdaR = 0.3, lambdaC = 0.3,
  model = "gaussian", validation = FALSE, listLambdaR = seq(from = 0,
  to = 1, by = 0.1), listLambdaC = seq(from = 0, to = 1, by = 0.1))

\S4method{initialize}{simulateData}(.Object, nbSample = 10000,
  nbCluster = 15, nbRow = 10, nbCol = 33, sigma = rexp(nbRow),
  column = c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130,
  140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270,
  280, 290, 300, 310, 321), width = 50, simulationType = "gaussian",
  modelname = "full", kernelRow = "gaussian", kernelCol = "gaussian")
}
\arguments{
\item{.Object}{object of class fitData}

\item{m}{the 3 dimentional data}

\item{modelname}{name of model to be used for calculating the covariance matrix. Available models are
"full", "parsimonious". Default is "full".}

\item{rows}{type of rows. Available models are "diag", "unknown" and "kernel".
Default is "diag".}

\item{column}{type of column. Available models are "diag", "unknown" and "kernel".
Default is "diag".}

\item{kerneltypeRow}{kernel to be used for covariance matrix of rows
Available kernels are "epanechnikov", "gaussian", "exponential", "uniform",
"quadratic", "circular", "triangular", "rational quadratic", "inverse multiquadratic".
Default is "exponential".}

\item{kerneltypeCol}{kernel to be used for covariance matrix of column
Available kernels are "epanechnikov", "gaussian", "exponential", "uniform",
"quadratic", "circular", "triangular", "rational quadratic", "inverse multiquadratic".
Default is "exponential".}

\item{h}{used for kernel calculation}

\item{s}{regularisation paramater for flip flop algorithm}

\item{lambdaR}{regularisation for rows for flip flop algorithm}

\item{lambdaC}{regularisation for rows for flip flop algorithm}

\item{validation}{to optimize lambda or not}

\item{listLambdaR}{list of lambdaR used in prediction in case validation is TRUE}

\item{listLambdaC}{list of lambdaC used in prediction in case validation is TRUE}

\item{model}{use in prediction in case of validation is TRUE}

\item{fittedCov}{fitted covariance matrix for the data}

\item{nbSample}{number of sample belonging to class k}

\item{nbCluster}{number of cluster}

\item{nbRow}{number of rows}

\item{nbCol}{number of columns intervals of the simulation}

\item{sigma}{a vector of size nbRow giving the variance level of
the row}

\item{width}{the width of the kernel to use for "gaussian" simulation. Default is 50.}

\item{simulationType}{type of simulation. Available options are "gaussian" and
"tstudent". Default is "gaussian".}

\item{kernelRow}{type of kernel to be used to simulate  rows. Available options
are "diag", "epanechnikov", "gaussian", "exponential", "uniform", "quadratic"
, "circular", "triangular", "rational quadratic", "inverse multiquadratic".
Default is "gaussian".}

\item{kernelCol}{type of kernel to be used for simulating columns. Available options are
"diag", "epanechnikov", "gaussian", "exponential", "uniform", "quadratic",
"circular", "triangular", "rational quadratic", "inverse multiquadratic".
Default is "gaussian".}

\item{.Object}{object of class predictClass}

\item{m}{the 3 dimentional data}

\item{lambdaR}{parameter for regularisation of row}

\item{lambdaC}{parameter for regularisation of column}

\item{model}{type of model to be used for prediction of labels
Available models are "gaussian", "tstudent". Default is "gaussian".}

\item{validation}{logical to optimize the lambda.}

\item{predicted_labels}{predicted class labels}

\item{accuracy}{accracy of prediction}

\item{.Object}{object of class simulateData}

\item{modelname}{type of model to be used to build covariance matrix.
Available options are "full" and "parsimonious". Default is "full".}

\item{column}{columns intervals of the simulation}

\item{gamma}{degrees of freedom used for simulating "tstudent" distribution of data.
Default is 3.}

\item{labels}{class labels of the data}

\item{result}{return a list of simulated data}
}
\description{
Initialization method of the fitData class.

Initialization method of the predictClass class.

Initialization method of the simulateData class.
}
\examples{
m = new("simulateData")
res = simulate(m)

}
\keyword{internal}
