% Generated by roxygen2: do not edit by hand
\name{lm}
\alias{lm}
\title{Fitting Linear Models}
\details{
Model relationship between stopping distance and speed using cars dataset
\code{lm(dist ~ speed, data = cars)}

Model simulated data
\code{
df <- data.frame(x1 = runif(100), x2 = runif(100))
df$y <- with(df, 2 + x1 - 3*x2 + rnorm(100))
res <- lm(y ~ x1 + x2, data = df)
}

Print summary of model
\code{
summary(res)
}

Quantities of interest
\code{
res$coefficients
res$fitted.values
res$residuals
summary(res)$r.squared
}}

