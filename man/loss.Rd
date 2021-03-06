% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/0_methods-PERFORMANCE.R
\docType{methods}
\name{loss}
\alias{loss}
\alias{loss,Strategy-method}
\title{Get the losses of assets or portfolio over time.}
\usage{
loss(object, V=100, method="full", of="portfolio"
       , from=NULL, until=NULL, which=NULL
       , include.weights=TRUE, include.costs=TRUE
       , use.backtest=FALSE)

\S4method{loss}{Strategy}(object, V = 100, method = c("full", "linear"),
  of = c("portfolio", "assets"), from = NULL, until = NULL,
  which = NULL, include.weights = TRUE, include.costs = TRUE,
  use.backtest = FALSE)
}
\arguments{
\item{object}{An object of class \code{Strategy}.}

\item{V}{Volume that is invested. The linear factor for the VaR calculation. Either a single value for portfolio or a vector for each asset.}

\item{method}{Method of loss calculation. Use \code{linear} for approximation with log returns or \code{full} for calculation with arithmetic returns.}

\item{of}{Losses to be calculated for assets separately or the portfolio.}

\item{from}{The date in character format \code{"yyyy-MM-dd"} or as date-object from which losses shall be considered. If \code{NULL}, no restriction is made.}

\item{until}{The date in character format \code{"yyyy-MM-dd"} or as date-object until which losses shall be considered. If \code{NULL}, no restriction is made.}

\item{which}{Names or number of assets that should be included in calculation.}

\item{include.weights}{Only relevant if \code{of="assets"}: If \code{FALSE}, weights are all set to \code{1}. This might be necessary if only single stock performance without weighting shall be considered.}

\item{include.costs}{If \code{FALSE}, the fixed and relative trading costs are NOT considered for performance calculation. Default value is \code{TRUE}. As default values for costs are \code{0}, this argument is obsolete if no costs are given.}

\item{use.backtest}{If \code{TRUE}, the performance of the backtesting output is considered for loss calculation. If \code{FALSE}, the performance of the initial strategy execution are used.}
}
\description{
Losses over time of an assets or portfolio of an object of class \code{Strategy}.
}
\examples{
## Not run:

# MA(200)-Strategy
params <- list(k=200)
myStrat.MA <- Strategy(assets=assets, strat="MA", strat.params=params)

# Get VaR of MA(200)-Strategy portfolio
myStrat.MA.losses <- loss(myStrat.MA, from="2015-01-01", until="2015-12-31")

## End(Not run)
}
