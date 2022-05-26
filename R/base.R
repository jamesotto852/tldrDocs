# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")

# Ignoring the complexity of numeric vector != complex vector




# Sys.* functions ---------------------------------------------------------

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


# General funs (alphabetical) ---------------------------------------------

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

#' Access Function Details
#'
#' @name args
#' @aliases formals body environment
#'
#' @exampletldr Get details of tldr function
#' \code{
#' args(tldr)
#' formals(tldr)
#' body(tldr)
#' environment(tldr)
#' }
NULL

#' Absolute Value
#'
#' @name abs
#'
#' @paramtldr x A numeric vector
#'
#' @exampletldr Computes the absolute value of arguments
#' \code{abs(-1)}
#' \code{abs(-5:5)}
NULL

#' Arrays
#'
#' @name array
#'
#' @paramtldr data a vector, to fill in the array
#' @paramtldr dim a vector, the maximal index in each direction
#'
#' @exampletldr Create arrays of various dimensions
#' \code{array(1:9, dim = c(3, 3))}
#' \code{array(1:45, dim = c(3, 3, 5))}
NULL

#' Methods for Date Conversion
#'
#' @name as.Date
#' @aliases as.Date.character as.Date.numeric
#'
#' @paramtldr x an object to be converted
#' @paramtldr format a character string specifying the date format
#' @paramtldr origin a Date from which to count days
#'
#' @exampletldr Convert characters to Dates, in various formats
#' \code{as.Date("05/24/22", format = "\%m/\%d/\%y")}
#' \code{as.Date("24may2022", format = "\%d\%b\%Y")}
#' \code{as.Date("Tue May 24", format = "\%a \%b \%d")}
#'
#' @exampletldr Specify dates as number of days since origin
#' \code{as.Date(44703, origin = "1900-01-01")}
NULL

#' Convert to a Data Frame
#'
#' @name as.data.frame
#'
#' @paramtldr x an object to be converted
#'
#' @exampletldr Convert a matrix to a data.frame
#' \code{
#' A <- matrix(1:50, ncol = 5)
#' as.data.frame(A)
#' }
#'
#' @exampletldr Convert a list to a data.frame
#' \code{
#' B <- list(
#'   "id" = 1:5,
#'   "x1" = rnorm(5),
#'   "x2" = runif(5)
#' )
#' as.data.frame(B)
#' }
NULL


#' Assign a Value to a Name
#'
#' @name assign
#'
#' @paramtldr x a variable name
#' @paramtldr value the value to assign to x
#' @paramtldr envir where to perform the assignment
#'
#' @exampletldr Create a binding in the global environment
#' \code{
#' assign("k", 5)
#' k
#' }
#'
#' @exampletldr ... from a function's execution environment
#' \code{
#' f <- function(x) {
#'   assign("res", sqrt(x), envir = .GlobalEnv)
#' }
#'
#' f(4)
#' res
#' }
NULL

#' Object Attributes
#'
#' @name attr
#'
#' @paramtldr x an object
#' @paramtldr which which attribute to access
#'
#' @exampletldr Get object attribute
#' \code{
#' A <- matrix(1:27, ncol = 3)
#' attr(A, "dim")
#' }
#'
#' @exampletldr Set object attribute
#' \code{
#' attr(A, "dim") <- c(3, 3, 3)
#' }
#'
NULL

#' List of Object Attributes
#'
#' @name attributes
#'
#' @paramtldr x an object
#'
#' @exampletldr Get object attributes
#' \code{
#' A <- matrix(1:27, ncol = 3)
#' rownames(A) <- 1:9
#' colnames(A) <- c("a", "b", "c")
#' attributes(A)
#' }
#'
#' @exampletldr Set object attributes
#' \code{
#' attributes(A) <- NULL
#' attributes(A) <- list(dim = c(3, 3, 3))
#' }
#'
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

#' Concatenate and Print Objects
#'
#' @name cat
#' @paramtldr ... objects to be concatenated
#' @paramtldr file a file path or connection to print to (optional)
#' @paramtldr sep string to insert between objects
#'
#' @exampletldr Concatenating character vectors
#' \code{cat(letters)}
#' \code{cat(letters, LETTERS)}
#' \code{cat(letters, LETTERS, sep = ", ")}
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

# Interesting... don't need to get into complicated arguments!
# (similarly for `if`, `for`, `while`, etc...)
#' Function Definition
#'
#' @name function
#'
#' @exampletldr A simple function
#' \code{
#' f <- function(name) {
#'   message <- paste("hello", name)
#'   print(message)
#' }
#'
#' f("beautiful")
#' }
#'
#' @exampletldr By default, the value of the last evaluated expression is returned
#' \code{
#' f <- function(x) {
#'   if (x < 0) return(0)
#'   x
#' }
#'
#' f(-1)
#' f(1)
#' }
#'
#' @exampletldr As of R 4.1.0, there is shorthand for inline function definition
#' \code{
#' f <- \(x) x^2
#' f(1:10)
#' }
NULL

#' Replicate Elements of Vectors/Lists
#'
#' @name rep
#'
#' @paramtldr x a vector/list
#' @paramtldr each number of times to repeat each element of x
#' @paramtldr times number of times to repeat x
#' @paramtldr length.out desired length of output (repeats x)
#'
#' @exampletldr Replicating elements of 1, 2, ..., 10
#' \code{
#' rep(1:10, times = 2)
#' rep(1:10, each = 2)
#' rep(1:10, length.out = 20)
#' }
#'
#' @exampletldr x doesn't have to fit nicely into length.out
#' \code{
#' rep(1:10, length.out = 17)
#' }
#'
#' @exampletldr times can also be a vector
#' \code{
#' rep(1:10, times = 1:10)
#' }
#'
#' @exampletldr Can also replicate elements of lists
#' \code{
#' rep(list(1, 2, 3), times = 2)
#' rep(list(1, 2, 3), each = 2)
#' rep(list(1, 2, 3), length.out = 6)
#' }
NULL

#' Generate Sequences
#'
#' @name seq
#'
#' @paramtldr from,to the start and end values of the sequence
#' @paramtldr by increment of the sequence
#' @paramtldr length.out desired length of the sequence
#'
#' @exampletldr Generate a fine mesh between 0 and 1
#' \code{
#' seq(from = 0, to = 1, by = .01)
#' }
#'
#' @exampletldr Only need to specify one of by or length.out
#' \code{
#' seq(0, 10, by = 2)
#' seq(0, 10, length.out = 6)
#' }
NULL

#' Generate Sequences Along Another Object
#'
#' @name seq_along
#'
#' @paramtldr along.with object to create a sequence along
#'
#' @exampletldr Generate a sequence the same length as along.with
#' \code{
#' seq_along(letters)
#' }
#'
#' @exampletldr Use seq_along to iterate across an object
#' \code{
#' for (i in seq_along(letters)){
#'   print(paste0("letter ", i, ": ", letters[i]))
#' }
#' }
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
#' apply(A, MARGIN = 2, FUN = sum) # column sums
#' apply(A, MARGIN = 1, FUN = sum) # row sums
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
#' even_odd <- function(k) if((k \%\% 2) == 0) "even" else "odd"
#' lapply(1:10, even_odd)
#' }
#'
#' @exampletldr Alternatively, sapply will guess at how to simplify the result
#' \code{sapply(1:10, even_odd)}
#'
#' @exampletldr For safety, vapply simplifies results according to provided template
#' \code{vapply(1:10, even_odd, FUN.VALUE = character(1))}
NULL

#' Apply Over a Ragged Array
#'
#' @name tapply
#'
#' @paramtldr X an object
#' @paramtldr INDEX a (list of) factor(s), each the same length as X
#' @paramtldr FUN the function to apply over X
#' @paramtldr ... additional arguments to FUN (optional)
#'
#' @exampletldr Summarize y according to groups defined by x1
#' \code{
#' x1 <- factor(sample(c("ctrl", "trt"), size = 200, replace = TRUE))
#' y <- 5 * (x1 == "trt") + rnorm(200)
#' tapply(y, x1, mean)
#' }
#'
#' @exampletldr Summarize y according to groups defined by x1 and x2
#' \code{
#' x2 <- factor(rep(c("A", "B"), times = 100))
#' tapply(y, list(x1, x2), mean)
#' }
#'
#' @exampletldr Supply additional arguments to FUN via ...
#' \code{
#' tapply(y, x1, mean, trim = .25)
#' tapply(y, list(x1, x2), mean, trim = .25)
#' }
#'
#'
NULL

#' Apply Over Multiple Lists/Vectors
#'
#' @name mapply
#' @aliases Map
#'
#' @paramtldr FUN the function to apply
#' @paramtldr ... list/vector arguments to map FUN over
#' @paramtldr MoreArgs a list of additional arguments to FUN (optional)
#'
#' @exampletldr Map over multiple vectors
#' \code{
#' mapply(rep, 1:4, 4:1)
#' mapply(rep, x = 1:4, times = 4:1)
#' mapply(rep, times = 4:1, x = 1:4)
#' }
#'
#' @exampletldr Provide additional arguments via MoreArgs
#' \code{
#' mapply(max, c(1:9, NA), c(NA, 9:1), MoreArgs = list(na.rm = TRUE))
#' }
#'
#' @exampletldr Prevent automatic coercion with SIMPLIFY or Map()
#' \code{
#' mapply(
#'   FUN = diag,
#'   nrow = c(1, 2, 4, 8),
#'   ncol = c(8, 4, 2, 1),
#'   SIMPLIFY = FALSE
#' )
#'
#' Map(
#'   f = diag,
#'   nrow = c(1, 2, 4, 8),
#'   ncol = c(8, 4, 2, 1)
#' )
#' }
#'
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

#' Apply a Binary Function Over a Vector
#'
#' @name Reduce
#'
#' @paramtldr f a function of two arguments
#' @paramtldr x a vector, to be reduced by f
#'
#' @exampletldr Compute ((((1 + 2) + 3) + ...) + 10)
#' \code{
#' Reduce(`+`, 1:10)
#' }
NULL

#' Apply a Predicate Function Over a Vector
#'
#' @name Filter
#' @aliases Find Position
#'
#' @paramtldr f a predicate function
#' @paramtldr x a vector, supplied element-wise to f
#'
#' @exampletldr Inspecting the parity of i in 10, 9, ..., 1
#' \code{
#' is_even <- function(x) (x \%\% 2) == 0
#' Filter(is_even, 10:1)
#' Find(is_even, 10:1)
#' Position(is_even, 10:1)
#' }
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
#' @name $
#' @paramtldr x
#' @paramtldr name
NULL

#' tilde
#'
#' @name ~
#' @paramtldr y,model symbolic expressions
NULL
