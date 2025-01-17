% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logreg2ph.R
\name{logreg2ph}
\alias{logreg2ph}
\title{Sieve maximum likelihood estimator (SMLE) for two-phase logistic regression problems
This function returns the sieve maximum likelihood estimators (SMLE) for the logistic regression model from Lotspeich et al. (2020)}
\usage{
logreg2ph(
  Y_unval = NULL,
  Y_val = NULL,
  X_unval = NULL,
  X_val = NULL,
  C = NULL,
  Validated = NULL,
  Bspline = NULL,
  data,
  theta_pred = NULL,
  gamma_pred = NULL,
  initial_lr_params = "Zero",
  h_N_scale = 1,
  noSE = FALSE,
  TOL = 1e-04,
  MAX_ITER = 1000
)
}
\arguments{
\item{Y_unval}{Column with the unvalidated outcome (can be name or numeric index). If \code{Y_unval} is null, the outcome is assumed to be error-free.}

\item{Y_val}{Column with the validated outcome (can be name or numeric index)}

\item{X_unval}{Column(s) with the unvalidated predictors (can be name or numeric index).  If \code{X_unval} and \code{X_val} are \code{null}, all precictors assumed to be error-free.}

\item{X_val}{Column(s) with the validated predictors (can be name or numeric index). If \code{X_unval} and \code{X_val} are \code{null}, all precictors assumed to be error-free.}

\item{C}{(Optional) Column(s) with additional error-free covariates (can be name or numeric index)}

\item{Validated}{Columns with the validation indicator (can be name or numeric index)}

\item{Bspline}{Vector of columns containing the B-spline basis functions (can be name or numeric index)}

\item{data}{A dataframe with one row per subject containing columns: Y_unval, Y_val, X_unval, X_val, C, Validated, and Bspline.}

\item{theta_pred}{Vector of columns in \code{data} that pertain to the predictors in the analysis model.}

\item{gamma_pred}{Vector of columns in \code{data} that pertain to the predictors in the outcome error model.}

\item{initial_lr_params}{Initial values for parametric model parameters. Choices include (1) "Zero" (non-informative starting values) or (2) "Complete-data" (estimated based on validated subjects only)}

\item{h_N_scale}{Size of the perturbation used in estimating the standard errors via profile likelihood. If none is supplied, default is \code{h_N_scale = 1}.}

\item{noSE}{Indicator for whether standard errors are desired. Defaults to noSE = FALSE.}

\item{TOL}{Tolerance between iterations in the EM algorithm used to define convergence.}

\item{MAX_ITER}{Maximum number of iterations allowed in the EM algorithm.}
}
\value{
\item{Coefficients}{dataframe with final coefficient and standard error estimates (where applicable).}
\item{converged}{indicator of EM algorithm convergence for parameter estimates.}
\item{se_converged}{indicator of standard error estimate convergence.}
\item{converged_msg}{(where applicable) description of non-convergence.}
\item{iterations}{number of iterations completed by EM algorithm to find parameter estimates.}
}
\description{
Sieve maximum likelihood estimator (SMLE) for two-phase logistic regression problems
This function returns the sieve maximum likelihood estimators (SMLE) for the logistic regression model from Lotspeich et al. (2020)
}
