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
#'
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
#' \code{as.Date("05/24/22", format = "%m/%d/%y")}
#' \code{as.Date("24may2022", format = "%d%b%Y")}
#' \code{as.Date("Tue May 24", format = "%a %b %d")}
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
#' (A <- matrix(1:9, ncol = 3))
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



#' Row and Column Sums of a Matrix/Data Frame
#'
#' @name rowSums
#' @aliases colSums
#'
#' @paramtldr x a numeric matrix or data frame
#'
#' @exampletldr Compute row sums of a matrix
#' \code{
#' (A <- matrix(1:9, nrow = 3))
#' rowSums(A)  # = apply(A, 1, sum)
#' }
#'
#' @exampletldr Compute column sums of a matrix
#' \code{
#' colSums(A)  # = apply(A, 1, sum)
#' }
#'
#' @exampletldr Compute row sums of a data frame
#' \code{
#' df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
#' rowSums(df)  # row sums of the data frame
#' }
NULL


#' Row and Column Means of a Matrix/Data Frame
#'
#' @name rowMeans
#' @aliases colMeans
#'
#' @paramtldr x a numeric matrix or data frame
#'
#' @exampletldr Compute row means of a matrix
#' \code{
#' (A <- matrix(1:9, nrow = 3))
#' rowMeans(A)  # = apply(A, 1, mean)
#' }
#'
#' @exampletldr Compute column means of a matrix
#' \code{
#' colMeans(A)  # = apply(A, 2, mean)
#' }
#'
#' @exampletldr Compute row means of a data frame
#' \code{
#' df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
#' rowMeans(df)  # row means of the data frame
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
#' even_odd <- function(k) if((k %% 2) == 0) "even" else "odd"
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
#' is_even <- function(x) (x %% 2) == 0
#' Filter(is_even, 10:1)
#' Find(is_even, 10:1)
#' Position(is_even, 10:1)
#' }
NULL



# linear algebra ----------------------------------------------------------



#' Create a Matrix
#'
#' @name matrix
#'
#' @paramtldr data a vector of values to populate the matrix
#' @paramtldr nrow number of rows
#' @paramtldr ncol number of columns
#' @paramtldr byrow logical. Should the matrix be filled by rows?
#'
#' @exampletldr Create a matrix with default parameters
#' \code{
#' matrix(1:6)  # 1-column matrix
#' }
#'
#' @exampletldr Create a matrix with specific number of rows and columns
#' \code{
#' matrix(1:6, nrow = 2, ncol = 3)  # 2x3 matrix filled by column
#' }
#'
#' @exampletldr Fill a matrix by rows
#' \code{
#' matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)  # 2x3 matrix filled by row
#' }
NULL




#' Diagonal Matrices and Diagonal of a Matrix
#'
#' @name diag
#'
#' @paramtldr x a vector (to create a diagonal matrix) or a matrix (to extract its diagonal)
#' @paramtldr n the desired number of rows/columns for the diagonal matrix
#'
#' @exampletldr Create a diagonal matrix from a vector
#' \code{
#' x <- 1:3
#' diag(x)  # diagonal matrix
#' }
#'
#' @exampletldr Extract the diagonal from a matrix
#' \code{
#' A <- matrix(1:9, nrow = 3)
#' diag(A)  # diagonal of the matrix
#' }
#'
#' @exampletldr Create an identity matrix
#' \code{
#' diag(5)  # 5x5 identity matrix
#' }
NULL




#' Combine R Objects by Rows or Columns
#'
#' @name rbind
#' @aliases cbind
#'
#' @paramtldr ... vectors, matrices, or data frames to bind together
#'
#' @exampletldr Combine vectors into a matrix
#' \code{
#' x <- 1:3
#' y <- 4:6
#' rbind(x, y)  # combine vectors by row
#' cbind(x, y)  # combine vectors by column
#' }
#'
#' @exampletldr Combine matrices by rows and columns
#' \code{
#' (A <- matrix(1:4, nrow = 2))
#' (B <- matrix(5:8, nrow = 2))
#' rbind(A, B)  # combine matrices by row
#' cbind(A, B)  # combine matrices by column
#' }
#'
#' @exampletldr Combine data frames by rows and columns
#' \code{
#' df1 <- data.frame(a = 1:3, b = 4:6)
#' df2 <- data.frame(a = 7:9, b = 5:7)
#' rbind(df1, df2)  # combine data frames by row
#'
#' df3 <- data.frame(c = 7:9, d = 10:12)
#' cbind(df1, df3)  # combine data frames by column
#' }
NULL





#' Transpose a Matrix or a Vector
#'
#' @name t
#'
#' @paramtldr x a matrix
#'
#' @exampletldr Transpose a matrix
#' \code{
#' (A <- matrix(1:6, nrow = 2, ncol = 3))
#' t(A)  # transpose of the matrix
#' }
NULL




#' Cross-Product and Transposed Cross-Product of Matrices
#'
#' @name crossprod
#' @aliases tcrossprod
#'
#' @paramtldr x a numeric or complex vector or matrix
#' @paramtldr y optional, a numeric or complex vector or matrix compatible with x for cross-product
#'
#' @exampletldr Compute the cross-product of a matrix with itself
#' \code{
#' A <- matrix(1:4, nrow = 2)
#' crossprod(A)  # t(A) %*% A    = A'A = positive (semi-)definite
#' tcrossprod(A) #    A %*% t(A) = AA' = positive (semi-)definite
#' }
#'
#' @exampletldr Compute the cross-product of two matrices
#' \code{
#' B <- matrix(5:8, nrow = 2)
#' crossprod(A, B)  # = t(A) %*% B = A'B
#' }
#'
#' @exampletldr Compute the "transposed cross-product" of two matrices
#' \code{
#' tcrossprod(A, B)  # A %*% t(B) = AB'
#' }
NULL






#' Get or Set the Dimensions of an Object
#'
#' @name dim
#'
#' @paramtldr x an R object for which the dimensions should be retrieved or set
#'
#' @exampletldr Get dimensions of a matrix
#' \code{
#' A <- matrix(1:6, nrow = 2, ncol = 3)
#' dim(A)  # dimensions of the matrix
#' }
#'
#' @exampletldr Set dimensions of a vector
#' \code{
#' v <- 1:6
#' dim(v) <- c(2, 3)  # set dimensions of the vector
#' v  # now v is a 2x3 matrix
#' }
NULL




#' Matrix Multiplication
#'
#' @name %*%
#'
#' @paramtldr x a numeric or complex vector or matrix
#' @paramtldr y a numeric or complex vector or matrix compatible with x for matrix multiplication
#'
#' @exampletldr Multiply two matrices
#' \code{
#' A <- matrix(1:4, nrow = 2)
#' B <- matrix(5:8, nrow = 2)
#' A %*% B  # result of the matrix multiplication
#' }
#'
#' @exampletldr Multiply a matrix and a vector
#' \code{
#' A <- matrix(1:4, nrow = 2)
#' v <- c(1, 2)
#' A %*% v  # result of the matrix-vector multiplication
#' }
NULL








#' Solve a System of Equations
#'
#' @name solve
#'
#' @paramtldr a a square numeric or complex matrix
#' @paramtldr b a numeric or complex vector or matrix
#'
#' @exampletldr Solve a system of linear equations
#' \code{
#' A <- matrix(c(3, 2, -1, 3, -1, 1), ncol = 3)
#' b <- c(1, 2, 3)
#' solve(A, b)  # solution to the system
#' }
#'
#' @exampletldr Compute the inverse of a matrix
#' \code{
#' A <- matrix(c(4, 3, 2, 1), ncol = 2)
#' solve(A)  # inverse of the matrix
#' }
#'
#' @exampletldr Solve multiple systems of equations
#' \code{
#' B <- A
#' solve(A, B)  # solution to the systems
#' }
NULL



#' Solve an Upper (or Lower) Triangular System
#'
#' @name backsolve
#' @aliases forwardsolve
#'
#' @paramtldr r,l an upper (or lower) triangular matrix
#' @paramtldr b a numeric or complex vector or matrix
#' @paramtldr transpose logical. If TRUE, solve system with the transpose of `r`.
#'
#' @exampletldr Solve a system of linear equations with an upper triangular matrix
#' \code{
#' (r <- matrix(c(1, 0, 0, 2, 1, 0, 3, 2, 1), ncol = 3))
#' (b <- c(1, 2, 3))
#' backsolve(r, b)  # solution to the system
#' }
#'
#' @exampletldr Solve system with the transpose of `r`, i.e. \{.help [\{.fun forwardsolve\}](base::forwardsolve)\}
#' \code{
#' t(r) # = l
#' backsolve(r, b, transpose = TRUE)  # solution to the system with transposed `r`
#' forwardsolve(t(r), b)
#' }
NULL






#' Compute the Determinant of a Matrix
#'
#' @name det
#'
#' @paramtldr x a numeric or complex matrix
#' @paramtldr logarithm logical. If TRUE, the logarithm of the absolute value of the determinant is returned.
#'
#' @exampletldr Basic usage of \{.help [\{.fun det\}](base::det)\}
#' \code{
#' A <- matrix(c(4, 3, 2, 1), ncol = 2)
#' det(A)  # determinant of the matrix
#' }
#'
#' @exampletldr Using logarithm for large values
#' \code{
#' B <- matrix(rnorm(10000), ncol = 100)
#' det(B, logarithm = TRUE)  # log-determinant of the matrix
#' }
NULL




#' Compute/Extract a QR Matrix Decomposition
#'
#' @name qr
#' @aliases qr.Q qr.R
#'
#' @paramtldr x Matrix A for QR decomposition or fitted model
#'
#' @exampletldr \{.help [\{.fun qr\}](base::qr)\} computes a representation of the QR decomposition
#' \code{
#' A <- matrix(1:12, nrow = 4) # m x n matrix
#' qrA <- qr(A)                # precomputes QR stuff
#' }
#'
#' @exampletldr Compute the Q and R matrices from \{.help [\{.fun qr\}](base::qr)\} output
#' \code{
#' Q <- qr.Q(qrA)              # m x n orthogonal matrix
#' R <- qr.R(qrA)              # n x n upper triangular matrix, not unit diag
#' Q %*% R                     # = A up to numerical error
#' }
#'
#' @exampletldr Compute the rank of a matrix with the QR decomposition
#' \code{
#' qrA$rank
#' }
#'
#' @exampletldr Solve a linear system \{.strong Ax\} = \{.strong b\} using QR.
#' \code{
#' (A <- rbind(c(1,3,4), c(-1,1,1), c(5,0,5)))
#' b <- 1:3
#' qr.solve(A, b) # = x
#' }
NULL





#' Least-Squares Fitting
#'
#' @name lsfit
#'
#' @paramtldr x a numeric matrix of predictors, or a numeric vector if there is only a single predictor
#' @paramtldr y a numeric vector of responses
#' @paramtldr intercept include the intercept? (default: true)
#'
#' @exampletldr Fit a simple linear regression model
#' \code{
#' x <- 1:10
#' y <- 3 - 2*x + rnorm(10)
#' lsfit(x, y)
#' }
#'
#' @exampletldr Fit a multiple linear regression model
#' \code{
#' x <- matrix(rnorm(100), ncol = 5)
#' y <- x %*% 1:5 + rnorm(20)
#' lsfit(x, y, intercept = FALSE)
#' }
NULL





#' Singular Value Decomposition of a Matrix
#'
#' @name svd
#'
#' @paramtldr x a numeric or complex matrix
#' @paramtldr nu number of left singular vectors to be computed (default: all)
#' @paramtldr nv number of right singular vectors to be computed (default: all)
#'
#' @exampletldr Basic usage of svd
#' \code{
#' A <- matrix(rnorm(20), ncol = 5)
#' svd_A <- svd(A)
#' (d <- svd_A$d) # singular values
#' (U <- svd_A$u) # left singular vectors
#' (V <- svd_A$v) # right singular vectors
#' }
#'
#' @exampletldr Checking that A = UDV'
#' \code{
#' (D <- diag(d)) # matrix of singular values
#' all.equal(A, U %*% D %*% t(V), tol = 1e-6)
#' }
#'
#' @exampletldr Compute only first two singular vectors
#' \code{
#' svd_A <- svd(A, nu = 2, nv = 2)
#' svd_A$d  # singular values
#' svd_A$u  # first two left singular vectors
#' svd_A$v  # first two right singular vectors
#' }
NULL



#' Eigenvalues and Eigenvectors of a Matrix
#'
#' @name eigen
#'
#' @paramtldr x a square numeric or complex matrix
#' @paramtldr symmetric logical. If TRUE, the algorithm will assume the matrix is symmetric (or Hermitian if complex) and will be faster. If not specified, the algorithm will attempt to determine if the matrix is symmetric.
#'
#' @exampletldr Basic usage of \{.help [\{.fun eigen\}](base::eigen)\}
#' \code{
#' A <- matrix(rnorm(9), ncol = 3)
#' eigen_A <- eigen(A)
#' eigen_A$values   # eigenvalues
#' eigen_A$vectors  # eigenvectors
#' }
#'
#' @exampletldr Compute eigenvectors and eigenvalues for a symmetric matrix
#' \code{
#' B <- matrix(c(1, 2, 1, 3), ncol = 2)
#' eigen_B <- eigen(B, symmetric = TRUE)
#' eigen_B$values   # eigenvalues
#' eigen_B$vectors  # eigenvectors
#' }
#'
#' @exampletldr Checking that Av = λv for first eigenvalue/vector pair
#' \code{
#' eigen_A <- eigen(A)
#' lambda <- eigen_A$values[1]
#' v <- eigen_A$vectors[,1]
#' all.equal(A %*% v, lambda * v, tol = 1e-6)
#' }
NULL




#' Cholesky Decomposition
#'
#' @name chol
#'
#' @paramtldr x a symmetric, positive-definite matrix
#' @paramtldr pivot logical. If TRUE, performs pivoting to increase numerical stability.
#'
#' @exampletldr Basic usage of \{.help [\{.fun chol\}](base::chol)\}
#' \code{
#' A <- matrix(c(4, 12, -16, 12, 37, -43, -16, -43, 98), ncol = 3)
#' chol(A)  # upper triangular factor
#' }
#'
#' @exampletldr Usage with pivoting for numerical stability
#' \code{
#' chol(A, pivot = TRUE)  # upper triangular factor with pivoting
#' }
#'
#' @exampletldr Checking that A = LL'
#' \code{
#' L <- chol(A)
#' all.equal(A, L %*% t(L), tol = 1e-6)
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

#' Extract or Replace
#'
#' @name $
#' @aliases [ [[ getElement
#'
#' @exampletldr Extract elements of a vector
#' \code{
#' letters[1]
#' letters[1:10]
#' }
#'
#' @exampletldr Extract elements of a matrix
#' \code{
#' A <- matrix(1:9, nrow = 3)
#' A[1, 2]
#' A[1,] # returns a vector
#' A[1, , drop = FALSE] # returns a matrix
#' }
#'
#' @exampletldr Extract elements of a list
#' \code{
#' x <- list(a = 1:10, b = pi, c = letters)
#' x[1]
#' x[[1]]
#' x[["a"]]
#' x$a
#' }
#'
#' @exampletldr Replace elements
#' \code{
#' A[1, 1] <- 0
#' x[[3]] <- LETTERS
#' }
NULL

#' tilde
#'
#' @name ~
#' @paramtldr y,model symbolic expressions
NULL
