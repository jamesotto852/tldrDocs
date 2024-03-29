% Generated by roxygen2: do not edit by hand
\name{dbeta}
\alias{dbeta}
\alias{pbeta}
\alias{qbeta}
\alias{rbeta}
\title{The Beta Distribution}
\arguments{
  \item{shape1,shape2}{shape parameters: a, b (> 0)}
  \item{ncp}{non-centrality parameter (optional)
}
}

\details{
Compute the probability density at a point (x = .5)
\code{dbeta(.5, shape1 = 2, shape2 = 2)}

Compute the cumulative probability density up to a point (x <= .5)
\code{pbeta(.5, shape1 = 2, shape2 = 2)}

Compute the 95th percentile
\code{qbeta(.95, shape1 = 2, shape2 = 2)}

Generate draws (n = 10)
\code{rbeta(10, shape1 = 2, shape2 = 2)}}

