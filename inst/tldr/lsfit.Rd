% Generated by roxygen2: do not edit by hand
\name{lsfit}
\alias{lsfit}
\title{Least-Squares Fitting}
\arguments{
  \item{x}{a numeric matrix of predictors, or a numeric vector if there is only a single predictor}
  \item{y}{a numeric vector of responses}
  \item{intercept}{include the intercept? (default: true)
}
}

\details{
Fit a simple linear regression model
\code{
x <- 1:10
y <- 3 - 2*x + rnorm(10)
lsfit(x, y)
}

Fit a multiple linear regression model
\code{
x <- matrix(rnorm(100), ncol = 5)
y <- x \%*\% 1:5 + rnorm(20)
lsfit(x, y, intercept = FALSE)
}}

