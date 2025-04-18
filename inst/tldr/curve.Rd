% Generated by roxygen2: do not edit by hand
\name{curve}
\alias{curve}
\title{Draw Mathematical Curves}
\arguments{
  \item{expr}{expression or function (must use `x`) to plot}
  \item{from,to}{numeric range over which `expr` is evaluated}
  \item{add}{logical; add the curve to an existing plot?}
  \item{n}{number of evaluation points (default 101)}
  \item{...}{\{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`
}
}

\details{
Plot a simple function
\code{
curve(x^2, from = -3, to = 3)
}

Plot a built‑in function with styling
\code{
curve(sin, -pi, pi, col = "steelblue", lty = 2)
}

Add a second curve to an existing plot
\code{
curve(dnorm, -3, 3)                               # first curve
curve(dnorm(x, sd = 2), add = TRUE, col = "red")  # overlay
}}

