# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")

#' Load Data Sets
#'
#' @name data
#' @paramtldr ... strings or names specifying data sets
#' @paramtldr package which package(s) to look in for data
#'
#' @exampletldr Load the cars data set from (loaded) datasets package
#' \code{data(cars)}
#'
#' @exampletldr Load the penguins data set
#' \code{data(penguins, package = "palmerpenguins")}
NULL

#' Display the Structure of an Object
#'
#' @name str
#'
#' @exampletldr Get information on any R object
#' \code{str(letters)}
#' \code{str(cars)}
#' \code{str(lm(dist ~ speed, cars))}
#' \code{str(x ~ y)}
NULL
