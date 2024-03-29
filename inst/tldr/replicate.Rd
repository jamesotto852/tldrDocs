% Generated by roxygen2: do not edit by hand
\name{replicate}
\alias{replicate}
\title{Repeated Evaluation of an Expression}
\arguments{
  \item{n}{the number of replications}
  \item{expr}{the expression to evaluate
}
}

\details{
Simulate draws from a normal mixture
\code{
replicate(n = 100, {
  mean <- sample(c(-5, 5), size = 1)
  rnorm(1, mean, sd = 1)
})
}

Simulate datasets
\code{
replicate(n = 10, simplify = FALSE, {
  df <- data.frame(x1 = runif(100), x2 = runif(100))
  df$y <- with(df, 2 + x1 - 3*x2 + rnorm(100))
  df
})
}
}

