# roxygen2::roxygenise("~/Git/tldrDocs", roclets = "tldr_roclet"); install("~/Git/tldrDocs")
# Currently have the opinion that data frames aren't described, aside from # cols, # rows,
# and brief descriptions of each col. See ?df for context + more details

#' Monthly Airline Passenger Numbers (1949-1960)
#'
#' @name AirPassengers
#'
#' @formattldr A Time-Series object w/ 144 monthly totals of airline passengers (in thousands)
NULL

#' Sales Data with Leading Indicator
#'
#' @name BJsales
#' @aliases BJsales.lead
#'
#' @formattldr Time-Series objects w/ 150 observations
NULL

#' Biochemical Oxygen Demand
#'
#' @name BOD
#'
#' @formattldr A data frame w/ 2 cols and 6 rows:
#' \describe{
#'   \item{Time}{Time measurement was taken (days)}
#'   \item{demand}{Biochemical oxygen demand (mg/l)}
#' }
NULL

#' Carbon Dioxide Uptake in Grass Plants
#'
#' @name CO2
#'
#' @formattldr A data frame w/ 5 cols and 84 rows:
#' \describe{
#'   \item{Plant}{Unique identifier for each plant}
#'   \item{Type}{Origin of the plant}
#'   \item{Treatment}{Indicates if plant received the treatment (nonchilled vs. chilled)}
#'   \item{conc}{Ambient carbon dioxide concentrations (mL/L)}
#'   \item{uptake}{Carbon dioxide uptake rates (umol/m^2 sec)}
#' }
NULL

#' Speed and Stopping Distances of Cars
#'
#' @name cars
#'
#' @formattldr A data frame w/ 2 cols and 50 rows:
#' \describe{
#'   \item{speed}{Speed (mph)}
#'   \item{dist}{Stopping distance (ft)}
#' }
NULL
