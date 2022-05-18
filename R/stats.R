# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")

# Statistical distributions -----------------------------------------------

#' The Normal Distribution
#'
#' @name dnorm
#' @aliases pnorm qnorm rnorm
#'
#' @paramtldr x,q,p,n temp
#' @paramtldr mean temp
#' @paramtldr sd temp
#'
#' @exampletldr Compute the probability density at a point (x = 0)
#' \code{dnorm(0, mean = 0, sd = 1)}
#'
#' @exampletldr Compute the cumulative probability density up to a point (x = 0)
#' \code{pnorm(0)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qnorm(.95)}
#'
#' @exampletldr Generate draws (n = 100)
#' \code{rnorm(n = 100)}
NULL

#' The Poisson Distribution
#'
#' @name dpois
#' @aliases ppois qpois rpois
#'
#' @paramtldr x,q,p,n temp
#' @paramtldr lambda vector of means (>= 0)
#'
#' @exampletldr Compute the probability density at a point (x = 1)
#' \code{dpois(1, lambda = 1)}
#'
#' @exampletldr Compute the cumulative probability density up to a point (x = 1)
#' \code{ppois(1, lambda = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qpois(.95, lambda = 1)}
#'
#' @exampletldr Generate draws (n = 100) from the standard normal
#' \code{rpois(n = 100, lambda = 1)}
NULL
