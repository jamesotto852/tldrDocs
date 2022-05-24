# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")

# Ignoring the complexity of numeric vector != complex vector




#' Get Environment Variables
#'
#' @name Sys.getenv
#' @paramtldr x character vector, specifying environment variables
#' @paramtldr names should the result be named?
#'
#' @exampletldr Get value of R_HOME
#' \code{Sys.getenv("R_HOME")}
#' \code{Sys.getenv("R_HOME", names = TRUE)}
#' @exampletldr If no variables are specified, returns all environment variables
#' \code{Sys.getenv()}
NULL

#' Extract System and User Information
#'
#' @name Sys.info
#'
#' @exampletldr Return a named character vector with system and user information
#' \code{Sys.info()}
NULL

#' Set Environment Variables
#'
#' @name Sys.setenv
#'
#' @paramtldr ... named arguments, environment variable(s) to set
#'
#' @exampletldr Return a named character vector with system and user information
#' \code{Sys.setenv(R_TEST = "testit")}
#' \code{Sys.getenv("R_TEST")}
#' \code{Sys.unsetenv("R_TEST")}
NULL

#' Unset Environment Variables
#'
#' @name Sys.unsetenv
#'
#' @paramtldr x character vector, environment variable(s) to unset
#'
#' @exampletldr Return a named character vector with system and user information
#' \code{Sys.setenv(R_TEST = "testit")}
#' \code{Sys.getenv("R_TEST")}
#' \code{Sys.unsetenv("R_TEST")}
NULL

#' Suspend Execution for a Time Interval
#'
#' @name Sys.sleep
#'
#' @paramtldr time amount of time to suspend execution for (seconds)
#'
#' @exampletldr Suspend execution in loop
#' \code{
#' for (i in 1:5) {
#'   Sys.sleep(1)
#'   print(i)
#' }
#' }
NULL

#' Get Date and Time Information
#'
#' @name Sys.time
#' @aliases Sys.Date Sys.timezone
#'
#' @exampletldr Retrieve the system time, date, and timezone
#' \code{Sys.time()}
#' \code{Sys.Date()}
#' \code{Sys.timezone()}
NULL


#' Are All/Any Values TRUE?
#'
#' @name all
#' @aliases any
#'
#' @paramtldr ... logical vectors
#' @paramtldr na.rm should NA values be removed?
#'
#' @exampletldr Check that all/any elements are TRUE
#' \code{all(letters == "a")}
#' \code{any(letters == "a")}

#' @exampletldr Dealing with NAs
#' \code{all(T, T, NA)}
#' \code{all(T, T, NA, na.rm = TRUE)}
NULL

#' Absolute Value
#'
#' @name abs
#' @paramtldr x A numeric vector
#'
#' @exampletldr Computes the absolute value of arguments
#' \code{abs(-1)}
#' \code{abs(-5:5)}
NULL

#' Combine Values
#'
#' @name c
#' @paramtldr ... objects to be combined
#'
#' @exampletldr Combining vectors:
#' \code{c(1, 2, 3)}
#' \code{c(1:2, 3)}
#' \code{c(1, "a")}
#'
#' @exampletldr Additional argument for lists:
#' \code{c(list(1, 2), list("a", "b"))}
#' \code{c(list(1, 2), list(list("a", "b")))}
#' \code{c(list(1, 2), list(list("a", "b")), recursive = TRUE)}
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


# apply family of functions -----------------------------------------------

#' Apply Over Array Margin(s)
#'
#' @name apply
#'
#' @paramtldr X an array
#' @paramtldr MARGIN which subscript(s) of X to apply over, a vector
#' @paramtldr FUN the function to apply over X
#' @paramtldr ... additional arguments to FUN (optional)
#'
#' @exampletldr Calculate row and column sums of a matrix
#' \code{
#' A <- matrix(1:9, ncol = 3)
#' apply(A, MARGIN = 2, FUN = sum) # row sums
#' apply(A, MARGIN = 1, FUN = sum) # column sums
#' }
#'
#' @exampletldr Apply over multiple subscripts
#' \code{
#' Matrices <- array(rnorm(9 * 100), dim = c(3, 3, 100))
#' apply(Matrices, 1:2, mean)
#' }
#'
#' @exampletldr Provide additional arguments to FUN
#' \code{apply(Matrices, 1:2, mean, trim = .25)}
#'
#' @exampletldr Return unsimplified list
#' \code{
#' B <- matrix(rpois(100, rep(1:10, times = 10)), ncol = 10)
#' apply(B, 1, range, simplify = FALSE)
#' }
NULL

#' Apply Over a List or Vector
#'
#' @name lapply
#' @aliases sapply vapply
#'
#' @paramtldr X a vector or list
#' @paramtldr FUN the function to apply over X
#' @paramtldr ... additional arguments to FUN (optional)
#'
#' @exampletldr Map over vector with lapply, returning a list
#' \code{
#' is_even <- function(k) if((k \%\% 2) == 0) TRUE else FALSE
#' lapply(1:10, is_even)
#' }
#'
#' @exampletldr Alternatively, sapply will guess at how to simplify the result
#' \code{sapply(1:10, is_even)}
#'
#' @exampletldr For safety, vapply simplifies results according to provided template
#' \code{vapply(1:10, is_even, FUN.VALUE = logical(1))}
NULL


#' Repeated Evaluation of an Expression
#'
#' @name replicate
#'
#' @paramtldr n the number of replications
#' @paramtldr expr the expression to evaluate
#'
#' @exampletldr Simulate draws from a normal mixture
#' \code{
#' replicate(n = 100, {
#'   mean <- sample(c(-5, 5), size = 1)
#'   rnorm(1, mean, sd = 1)
#' })
#' }
#'
#' @exampletldr Simulate datasets
#' \code{
#' replicate(n = 10, simplify = FALSE, {
#'   df <- data.frame(x1 = runif(100), x2 = runif(100))
#'   df$y <- with(df, 2 + x1 - 3*x2 + rnorm(100))
#'   df
#' })
#' }
#'
NULL

# Temp - checking S3 docs -------------------------------------------------

#' Encode in a Common Format
#'
#' @name format
#' @paramtldr x temp
NULL

#' Date Conversion
#'
#' @name format.Date
#' @paramtldr x an object to be converted
NULL


# Non-Semantic ------------------------------------------------------------
# Not Currently working

#' Extract
#'
#' @name `$`
#' @paramtldr x
#' @paramtldr name
NULL

#' tilde
#'
#' @name `~`
#' @paramtldr y,model symbolic expressions
NULL
