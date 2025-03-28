


#' Add Lines to a Plot
#'
#' @name abline
#'
#' @paramtldr a,b intercept and intercept value(s) (or vector) for lines
#' @paramtldr coef a two-element vector (intercept, slope) defining a line
#' @paramtldr h,v y/x-value(s) for drawing horizontal/vertical line(s)
#' @paramtldr reg a regression model or formula from which to extract coefficients
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`, and`lwd`
#'
#' @exampletldr Draw a line with a given intercept and slope:
#' \code{
#' plot(1:10)
#' abline(a = 2, b = 0.5)
#' abline(coef = c(2, 0.5), col = "red")
#' abline(a = 1:2, b = c(.5,.75), col = c("forestgreen", "red"))
#' }
#'
#' @exampletldr Add horizontal and vertical lines:
#' \code{
#' plot(1:10)
#' abline(h = 5)
#' abline(v = 3, lty = 2)
#' }
#'
#' @exampletldr Draw a regression line from a linear model:
#' \code{
#' fit <- lm(mpg ~ wt, data = mtcars)
#' plot(mtcars$wt, mtcars$mpg)
#' abline(fit, lwd = 3)
#' }
NULL



#' Draw Arrows on a Plot
#'
#' @name arrows
#'
#' @paramtldr x0,y0 starting coordinates of arrow(s)
#' @paramtldr x1,y1 ending coordinates of arrow(s)
#' @paramtldr angle numeric; angle of arrow head(s) in degrees (default is 30)
#' @paramtldr length numeric; length of the arrow head(s) in inches (default is 0.25)
#' @paramtldr code integer; specifies arrow head placement: 0 (none), 1 (at start), 2 (at end), 3 (both)
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lwd`
#'
#' @exampletldr Draw a simple arrow from point A to B:
#' \code{
#' plot(0:10, 0:10, type = "n")
#' arrows(2, 2, 8, 8)
#' }
#'
#' @exampletldr Draw arrows with customized arrow heads and styles:
#' \code{
#' plot(0:10, 0:10, type = "n")
#' arrows(2, 8, 8, 2, angle = 15, length = 0.4, code = 3, col = "red", lwd = 2)
#' }
NULL




#' Draw an Axis on a Plot
#'
#' @name axis
#'
#' @paramtldr side integer indicating which side of the plot (1: bottom, 2: left, 3: top, 4: right)
#' @paramtldr at numeric vector specifying positions of tick marks
#' @paramtldr labels character vector for tick labels
#' @paramtldr tick logical; whether axis line with tick marks shoudld be drawn
#' @paramtldr line numeric; distance from the plot margin
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lwd`, `cex.axis`
#'
#' @exampletldr Draw the default bottom axis and a styles side axis:
#' \code{
#' plot(1:10, axes = FALSE, xlab = "", ylab = "")
#' axis(1)
#' axis(2, col = "red", tick = FALSE, line = 1)
#' box()
#' }
#'
#' @exampletldr Add a top axis with custom tick marks and labels:
#' \code{
#' plot(1:10, axes = FALSE, xlab = "", ylab = "")
#' axis(3, at = 1:10, labels = letters[1:10], cex.axis = .5, line = 1)
#' axis(2, at = 2*1:5, cex.axis = .5, tick = FALSE)
#' }
NULL




#' Create Bar Plots from pre-Computed Heights
#'
#' @name barplot
#'
#' @paramtldr height a vector or matrix of values to be plotted as bars
#' @paramtldr horiz logical; should the bars be displayed horizontally?
#' @paramtldr beside logical; if TRUE, bars are plotted side-by-side rather than stacked
#' @paramtldr legend.text character vector for legend labels (when using matrices)
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `border`
#'
#' @exampletldr Create basic barplots from a pre-computed table:
#' \code{
#' (counts <- table(mtcars$cyl))
#' barplot(counts)
#' barplot(counts, horiz = TRUE, col = "steelblue")
#' }
#'
#' @exampletldr Create stacked and dodged barplots from a 2d contingency table:
#' \code{
#' counts <- xtabs(~ cyl + gear, data = mtcars)
#' cols <- c("firebrick", "gray80", "steelblue")
#' barplot(counts, col = cols, xlab = "gear")
#' barplot(counts, col = cols, xlab = "gear", beside = TRUE)
#' legend("topright", legend = unique(mtcars$cyl), fill = cols, title = "cyl", horiz = TRUE)
#' }
NULL





#' Draw a Box Around the Plot
#'
#' @name box
#'
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`, `lwd`
#'
#' @exampletldr Add a box with default styling:
#' \code{
#' plot(1:10, axes = FALSE)
#' box()
#' }
#'
#' @exampletldr Customize the box appearance:
#' \code{
#' box(col = "red", lty = 2, lwd = 3)
#' }
NULL




#' Create Box-and-Whisker Plots
#'
#' @name boxplot
#'
#' @paramtldr x a numeric vector, matrix, list, or a formula for grouped data
#' @paramtldr notch logical indicating whether to draw notched boxplots
#' @paramtldr horizontal logical indicating whether to draw the plot horizontally
#' @paramtldr boxwex,staplewex numeric; scale the default box/fence widths
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `border`
#'
#' @exampletldr Create a basic boxplot for a numeric vector:
#' \code{
#' x <- rnorm(100)
#' boxplot(x)
#' boxplot(x, notch = TRUE, horizontal = TRUE, col = "lightblue")
#' }
#'
#' @exampletldr Create a boxplot by group using the formula interface:
#' \code{
#' boxplot(mpg ~ cyl, data = mtcars, lty = 1, boxwex = .4, staplewex = 0)
#' }
NULL
