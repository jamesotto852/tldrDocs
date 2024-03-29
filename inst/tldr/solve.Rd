% Generated by roxygen2: do not edit by hand
\name{solve}
\alias{solve}
\title{Solve a System of Equations}
\arguments{
  \item{a}{a square numeric or complex matrix}
  \item{b}{a numeric or complex vector or matrix
}
}

\details{
Solve a system of linear equations
\code{
A <- matrix(c(3, 2, -1, 3, -1, 1), ncol = 3)
b <- c(1, 2, 3)
solve(A, b)  # solution to the system
}

Compute the inverse of a matrix
\code{
A <- matrix(c(4, 3, 2, 1), ncol = 2)
solve(A)  # inverse of the matrix
}

Solve multiple systems of equations
\code{
B <- A
solve(A, B)  # solution to the systems
}}

