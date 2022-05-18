# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")

# Ignoring the complexity of numeric vector != complex vector

#' Absolute Value
#'
#' @name abs
#' @paramtldr x A numeric vector
#'
#' @exampletldr Computes the absolute value of arguments
#' \code{abs(-1)}
#' \code{abs(-5:5)}
NULL

#' Sum
#'
#' @name sum
#' @paramtldr ... Numeric vector(s)
#' @paramtldr na.rm Should missing values be removed?
#'
#' @exampletldr Computes the sum of arguments
#' \code{sum(1:10)}
#' \code{sum(1:5, 6:10)}
#' \code{sum(1, NA, na.rm = TRUE)}
NULL


#' Trigonometric Functions
#'
#' @name cos
#' @aliases sin tan acos asin atan atan2 cospi sinpi tanpi
#'
#' @paramtldr x,y Numeric vectors
#'
#' @exampletldr Compute basic trigonometric values
#' \code{cos(c(0, pi/2, pi))}
#' \code{sin(c(0, pi/2, pi))}
#' \code{tan(c(0, pi/2, pi))}
#' \code{acos(c(0, 1))}
#' \code{asin(c(0, 1))}
#' \code{atan(c(0, 1))}
#'
#' @exampletldr Compute the angle between the x-axis and the the vector (x, y)
#' \code{atan2(10, 3)}
#' \code{atan(10/3)}
NULL

