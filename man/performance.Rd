% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/0_methods-PERFORMANCE.R
\docType{methods}
\name{performance}
\alias{performance}
\alias{performance,Strategy-method}
\title{Get Strategy Performance}
\usage{
performance(object, of = "portfolio", type = "performance", from = NULL,
  until = NULL, which = NULL, use.backtest = FALSE,
  include.costs = TRUE)

\S4method{performance}{Strategy}(object, of = c("portfolio", "assets"),
  type = c("performance", "logReturns", "returns"), from = NULL,
  until = NULL, which = NULL, use.backtest = FALSE,
  include.costs = TRUE)
}
\arguments{
\item{object}{An object of class \code{Strategy}.}

\item{of}{Performance to be extracted from assets separately or the portfolio performance.}

\item{type}{Which type of performance shall be returned. \code{performance} is the cumulative performance starting at \code{1}, \code{logReturns} to get logarithmic returns or \code{returns} for arithmetic returns.}

\item{from}{The date in character format \code{"yyyy-MM-dd"} or as date-object from which performance shall be returned If \code{NULL}, no restriction is made.}

\item{until}{The date in character format \code{"yyyy-MM-dd"} or as date-object until which performance shall be returned. If \code{NULL}, no restriction is made.}

\item{which}{Names or number of assets that should be included in performance. If a portfolio performance from only a subset of the assets is calculated, the weights are scaled accordingly.}

\item{use.backtest}{If \code{TRUE}, the signals from the backtesting output are considered for performance calculation. If \code{FALSE}, the signals from the initial strategy execution are used.}

\item{include.costs}{If \code{FALSE}, the fixed and relative trading costs are NOT considered for performance calculation. Default value is \code{TRUE}. As default values for costs are \code{0}, this argument is obsolete if no costs are given.}
}
\description{
Gets the performance of an object of class \code{Strategy}.
}
\examples{
## Not run:

# MA(200)-Strategy
params <- list(k=200)
myStrat.MA <- Strategy(assets=assets, strat="MA", strat.params=params)

# Get performance of MA(200)-Strategy
performance(myStrat.MA, from="2015-01-01", until="2015-12-31")

# Get backtest performance of MA(200)-Strategy
# performance(myStrat.MA, from="2015-01-01", until="2015-12-31"
# , use.backtest=TRUE, type="logReturns")

## End(Not run)
}
