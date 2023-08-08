# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")

# Statistical distributions -----------------------------------------------
# For now, ignoring first argument in useful parameter section
# (It's implicitly defined in examples)
# #' @paramtldr x,q,p,n

#' The Beta Distribution
#'
#' @name dbeta
#' @aliases pbeta qbeta rbeta
#'
#' @paramtldr shape1,shape2 shape parameters: a, b (> 0)
#' @paramtldr ncp non-centrality parameter (optional)
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{dbeta(.5, shape1 = 2, shape2 = 2)}
#'
#' @exampletldr Compute the cumulative probability density up to a point (x <= .5)
#' \code{pbeta(.5, shape1 = 2, shape2 = 2)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qbeta(.95, shape1 = 2, shape2 = 2)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rbeta(10, shape1 = 2, shape2 = 2)}
NULL

#' The Binomial Distribution
#'
#' @name dbinom
#' @aliases pbinom qbinom rbinom
#'
#' @paramtldr size number of trials (>= 0)
#' @paramtldr prob probability of success
#'
#' @exampletldr Compute the probability mass at a point (x = 1)
#' \code{dbinom(1, size = 2, prob = .5)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 1)
#' \code{pbinom(1, size = 2, prob = .5)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qbinom(.95, size = 20, prob = .5)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rbinom(10, size = 20, prob = .5)}
NULL

#' The Cauchy Distribution
#'
#' @name dcauchy
#' @aliases pcauchy qcauchy rcauchy
#'
#' @paramtldr location,scale
#'
#' @exampletldr Compute the probability density at a point (x = 0)
#' \code{dcauchy(0, location = 0, scale = 1)}
#' \code{dcauchy(0)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 0)
#' \code{pcauchy(0)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qcauchy(.95)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rcauchy(10)}
NULL

#' The Chi-Square Distribution
#'
#' @name dchisq
#' @aliases pchisq qchisq rchisq
#'
#' @paramtldr df degrees of freedom (>= 0)
#' @paramtldr ncp non-centrality parameter (optional)
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{dchisq(.5, df = 1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= .5)
#' \code{pchisq(.5, df = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qchisq(.95, df = 1)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rchisq(10, df = 1)}
NULL

#' The Exponential Distribution
#'
#' @name dexp
#' @aliases pexp qexp rexp
#'
#' @paramtldr rate inverse of mean (> 0)
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{dexp(.5, rate = 1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= .5)
#' \code{pexp(.5, rate = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qexp(.95, rate = 1)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rexp(10, rate = 1)}
NULL

#' The F Distribution
#'
#' @name df
#' @aliases pf qf rf
#'
#' @paramtldr df1,df2 degrees of freedom (> 0)
#' @paramtldr ncp non-centrality parameter (optional)
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{df(.5, df1 = 1, df2 = 1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= .5)
#' \code{pf(.5, df1 = 1, df2 = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qf(.95, df1 = 1, df2 = 1)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rf(10, df1 = 1, df2 = 1)}
NULL

#' The Gamma Distribution
#'
#' @name dgamma
#' @aliases pgamma qgamma rgamma
#'
#' @paramtldr shape
#' @paramtldr rate,scale two ways to specify scale (scale = 1/rate >= 0)
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{dgamma(.5, shape = 1, rate = 2)}
#' \code{dgamma(.5, shape = 1, scale = 1/2)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= .5)
#' \code{pgamma(.5, shape = 1, rate = 2)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qgamma(.95, shape = 1, rate = 2)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rgamma(10, shape = 1, rate = 2)}
NULL

#' The Geometric Distribution
#'
#' @name dgeom
#' @aliases pgeom qgeom rgeom
#'
#' @paramtldr prob probability of success
#'
#' @exampletldr Compute the probability mass at a point (x = 1)
#' \code{dgeom(1, prob = .5)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 1)
#' \code{pgeom(1, prob = .5)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qgeom(.95, prob = .5)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rgeom(10, prob = .5)}
NULL

#' The Hypergeometric Distribution
#'
#' @name dhyper
#' @aliases phyper qhyper rhyper
#'
#' @paramtldr m number of white balls (successes)
#' @paramtldr n number of black balls (failures)
#' @paramtldr k number of balls to draw
#'
#' @exampletldr Compute the probability mass at a point (x = 1)
#' \code{dhyper(0, m = 1, n = 3, k = 1)}
#' \code{dhyper(1, m = 1, n = 3, k = 1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 1)
#' \code{phyper(1, m = 1, n = 3, k = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qhyper(.95, m = 10, n = 30, k = 10)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rhyper(10, m = 10, n = 30, k = 10)}
NULL

#' The Logistic Distribution
#'
#' @name dlogis
#' @aliases plogis qlogis rlogis
#'
#' @paramtldr location,scale
#'
#' @exampletldr Compute the probability density at a point (x = 0)
#' \code{dlogis(0, location = 0, scale = 1)}
#' \code{dlogis(0)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 0)
#' \code{plogis(0)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qlogis(.95)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rlogis(10)}
NULL

#' The Log Normal Distribution
#'
#' @name dlnorm
#' @aliases plnorm qlnorm rlnorm
#'
#' @paramtldr meanlog,sdlog mean and standard deviation (log scale)
#'
#' @exampletldr Compute the probability density at a point (x = 1)
#' \code{dlnorm(1, mean = 0, sd = 1)}
#' \code{dlnorm(1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 1)
#' \code{plnorm(1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qlnorm(.95)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rlnorm(10)}
NULL

#' The Negative Binomial Distribution
#'
#' @name dnbinom
#' @aliases pnbinom qnbinom rnbinom
#'
#' @paramtldr x Number of failures until a target number of successes (size) is reached
#' @paramtldr size number of successful trials
#' @paramtldr prob probability of success
#'
#' @exampletldr Compute the probability mass at a point (x = 4)
#' \code{dnbinom(4, size = 5, prob = .5)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 4)
#' \code{pnbinom(4, size = 5, prob = .5)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qnbinom(.95, size = 50, prob = .5)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rnbinom(10, size = 5, prob = .5)}
NULL

#' The Normal Distribution
#'
#' @name dnorm
#' @aliases pnorm qnorm rnorm
#'
#' @paramtldr mean,sd
#'
#' @exampletldr Compute the probability density at a point (x = 0)
#' \code{dnorm(0, mean = 0, sd = 1)}
#' \code{dnorm(0)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 0)
#' \code{pnorm(0)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qnorm(.95)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rnorm(10)}
NULL

#' The Poisson Distribution
#'
#' @name dpois
#' @aliases ppois qpois rpois
#'
#' @paramtldr lambda vector of means (>= 0)
#'
#' @exampletldr Compute the probability mass at a point (x = 1)
#' \code{dpois(1, lambda = 1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 1)
#' \code{ppois(1, lambda = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qpois(.95, lambda = 1)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rpois(10, lambda = 1)}
NULL

#' The Student t Distribution
#'
#' @name dt
#' @aliases pt qt rt
#'
#' @paramtldr df degrees of freedom (> 0)
#' @paramtldr ncp non-centrality parameter (optional)
#'
#' @exampletldr Compute the probability density at a point (x = 0)
#' \code{dt(0, df = 4)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 0)
#' \code{pt(0, df = 4)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qt(.95, df = 4)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rt(10, df = 4)}
NULL

#' The Studentized Range Distribution
#'
#' @name ptukey
#' @aliases qtukey
#'
#' @paramtldr nmeans,df,nranges
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 6)
#' \code{ptukey(6, nmeans = 6, df = 5, nranges = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qtukey(.95, nmeans = 6, df = 5, nranges = 1)}
#'
NULL

#' The Uniform Distribution
#'
#' @name dunif
#' @aliases punif qunif runif
#'
#' @paramtldr min,max lower and upper bounds on support
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{dunif(.5, min = 0, max = 1)}
#' \code{dunif(.5)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= .5)
#' \code{punif(.5)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qunif(.95)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{runif(10)}
NULL

#' The Weibull Distribution
#'
#' @name dweibull
#' @aliases pweibull qweibull rweibull
#'
#' @paramtldr shape,scale
#'
#' @exampletldr Compute the probability density at a point (x = .5)
#' \code{dweibull(.5, shape = 1, scale = 1)}
#' \code{dweibull(.5, shape = 1)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= .5)
#' \code{pweibull(.5, shape = 1)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qweibull(.95, shape = 1)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rweibull(10, shape = 1)}
NULL

#' The Distribution of the Wilcoxon Rank Sum Statistic
#'
#' @name dwilcox
#' @aliases pwilcox qwilcox rwilcox
#'
#' @paramtldr m,n number of observations in first and second sample
#'
#' @exampletldr Compute the probability mass at a point (x = 100)
#' \code{dwilcox(100, m = 10, n = 20)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 100)
#' \code{pwilcox(100, m = 10, n = 20)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qwilcox(.95, m = 10, n = 20)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rwilcox(10, m = 10, n = 20)}
NULL

#' The Distribution of the Wilcoxon Signed Rank Statistic
#'
#' @name dsignrank
#' @aliases psignrank qsignrank rsignrank
#'
#' @paramtldr m,n number of observations in first and second sample
#'
#' @exampletldr Compute the probability mass at a point (x = 100)
#' \code{dsignrank(100, n = 20)}
#'
#' @exampletldr Compute the cumulative probability up to a point (x <= 100)
#' \code{psignrank(100, n = 20)}
#'
#' @exampletldr Compute the 95th percentile
#' \code{qsignrank(.95, n = 20)}
#'
#' @exampletldr Generate draws (n = 10)
#' \code{rsignrank(10, n = 20)}
NULL

# Basic Modeling ----------------------------------------------------------
#' Fitting Linear Models
#'
#' @name lm
#'
#' @exampletldr Model relationship between stopping distance and speed using cars dataset
#' \code{lm(dist ~ speed, data = cars)}
#'
#' @exampletldr Model simulated data
#' \code{
#' df <- data.frame(x1 = runif(100), x2 = runif(100))
#' df$y <- with(df, 2 + x1 - 3*x2 + rnorm(100))
#' res <- lm(y ~ x1 + x2, data = df)
#' }
#'
#' @exampletldr Print summary of model
#' \code{
#' summary(res)
#' }
#'
#' @exampletldr Quantities of interest
#' \code{
#' res$coefficients
#' res$fitted.values
#' res$residuals
#' summary(res)$r.squared
#' }
NULL

