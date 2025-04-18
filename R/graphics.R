#' Add Lines to a Plot
#'
#' @name abline
#'
#' @paramtldr a,b intercept and intercept value(s) (or vector) for lines
#' @paramtldr coef a two-element vector (intercept, slope) defining a line
#' @paramtldr h,v y/x-value(s) for drawing horizontal/vertical line(s)
#' @paramtldr reg a regression model from which to extract coefficients
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`, and`lwd`
#'
#' @exampletldr Draw a line with a given intercept and slope
#' \code{
#' plot(1:10)
#' abline(a = 2, b = 0.5)
#' abline(coef = c(2, 0.5), col = "red")
#' abline(a = 1:2, b = c(.5,.75), col = c("forestgreen", "red"))
#' }
#'
#' @exampletldr Add horizontal and vertical lines
#' \code{
#' plot(1:10)
#' abline(h = 5)
#' abline(v = 3, lty = 2)
#' }
#'
#' @exampletldr Draw a regression line from a linear model
#' \code{
#' fit <- lm(mpg ~ wt, data = mtcars)
#' plot(mtcars$wt, mtcars$mpg)
#' abline(fit, lwd = 2, col = "red")
#' }
NULL



#' Draw Arrows on a Plot
#'
#' @name arrows
#'
#' @paramtldr x0,y0 starting coordinates of arrow(s)
#' @paramtldr x1,y1 ending coordinates of arrow(s)
#' @paramtldr angle numeric; angle of arrow heads in degrees (def 30)
#' @paramtldr length numeric; length of the arrow heads in inches (def 0.25)
#' @paramtldr code integer; arrow head placement: 1 (start), 2 (end), 3 (both)
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`, and`lwd`
#'
#' @exampletldr Draw a simple arrow(s) from point A(s) to B(s)
#' \code{
#' plot(-10:10, -10:10, type = "n")
#' arrows(2, 2, 8, 8)
#' arrows(c(0,0), c(0,0), c(10,0), c(0,10))
#' }
#'
#' @exampletldr Draw arrows with customized styles
#' \code{
#' arrows(8, -5, -5, 8, lwd = 2, col = "red")
#' }
#'
#' @exampletldr Make error bars with \{.fun arrows\}
#' \code{
#' arrows(-2, -6, -8, 2, angle = 90, code = 3, length = .1)
#' }
NULL




#' Draw an Axis on a Plot
#'
#' @name axis
#'
#' @paramtldr side integer, side of the plot (1 bottom, 2 left, 3 top, 4 right)
#' @paramtldr at numeric vector specifying positions of tick marks
#' @paramtldr labels character vector for tick labels
#' @paramtldr tick logical; whether axis line with tick marks shoudld be drawn
#' @paramtldr line numeric; distance from the plot margin
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`, and`lwd`
#'
#' @exampletldr Draw the default bottom axis and a styled side axis
#' \code{
#' plot(1:10, axes = FALSE, xlab = "", ylab = "")
#' axis(1)
#' axis(2, col = "red", tick = FALSE, line = 1)
#' box()
#' }
#'
#' @exampletldr Add a top and right axis with custom tick marks and labels
#' \code{
#' axis(3, at = 1:10, labels = letters[1:10], cex.axis = .5, line = 1)
#' axis(4, at = 2*1:5, cex.axis = .5, tick = FALSE)
#' }
NULL




#' Create Bar Plots from a Contingency Table
#'
#' @name barplot
#'
#' @paramtldr height a vector or matrix of values to be plotted as bars
#' @paramtldr space space between adjacent bars
#' @paramtldr horiz logical; should the bars be displayed horizontally?
#' @paramtldr beside logical; plot grouped bars side-by-side?
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`
#'
#' @exampletldr Create basic barplots from a table
#' \code{
#' (counts <- xtabs(~ cyl, data = mtcars))
#' barplot(counts)
#' barplot(counts, space = 3)
#' barplot(counts, horiz = TRUE, col = "steelblue")
#' }
#'
#' @exampletldr Create stacked barplots from a 2d contingency table
#' \code{
#' counts <- xtabs(~ cyl + gear, data = mtcars)
#' cols <- c("firebrick", "gray80", "steelblue")
#' barplot(counts, col = cols, xlab = "gear")
#' }
#'
#' @exampletldr Create side-by-side barplots from a 2d contingency table
#' \code{
#' barplot(counts, col = cols, xlab = "gear", beside = TRUE)
#' legend("topright", legend = c("6","4","8"), fill = cols,
#'        title = "cyl", horiz = TRUE)
#' }
NULL





#' Draw a Box Around the Plot
#'
#' @name box
#'
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}
#'
#' @exampletldr Add a box with default styling
#' \code{
#' plot(1:10, axes = FALSE)
#' box()
#' }
#'
#' @exampletldr Customize the box appearance
#' \code{
#' box(col = "red", lty = 2, lwd = 3)
#' }
NULL




#' Create Box-and-Whisker Plots
#'
#' @name boxplot
#'
#' @paramtldr x a numeric vector, matrix, list, or a formula for grouped data
#' @paramtldr data a data frame to reference when using a formula
#' @paramtldr notch logical indicating whether to draw notched boxplots
#' @paramtldr horizontal logical indicating whether to draw the plot horizontally
#' @paramtldr boxwex,staplewex numeric; scale the default box/fence widths
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`
#'
#' @exampletldr Create a basic boxplot for a numeric vector
#' \code{
#' x <- rnorm(100)
#' boxplot(x)
#' boxplot(x, notch = TRUE, horizontal = TRUE, col = "lightblue")
#' }
#'
#' @exampletldr Create a boxplot by group using the formula interface
#' \code{
#' boxplot(mpg ~ cyl, data = mtcars, lty = 1, boxwex = .4, staplewex = 0)
#' }
NULL




#' Conditional Density Plot
#'
#' @name cdplot
#'
#' @paramtldr formula of the form `y ~ x`, where `y` is a factor and `x` is numeric
#' @paramtldr data data frame containing the variables in the formula
#' @paramtldr yaxlabels character vector; y axis labels for vertical ordering of levels
#' @paramtldr ylevels character vector to subset or reorder factor levels
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`
#'
#' @exampletldr Visualize how a categorical variable depends on a numeric predictor
#' \code{
#' df <- data.frame(
#'   x = c(rnorm(50, m = -2), rnorm(50, m = 0), rnorm(50, m = 2)),
#'   c = factor( rep(c("A","B","C"), each = 50) )
#' )
#' cdplot(c ~ x, data = df)
#' }
#'
#' @exampletldr Specify labels for factors (default is alphabetical order)
#' \code{
#' cdplot(c ~ x, data = df, yaxlabels = c("aa","bb","cc"))
#' }
#'
#' @exampletldr Reorder presentation of factor levels top to bottom
#' \code{
#' cdplot(c ~ x, data = df, ylevels = c("C","A","B"))
#' }
NULL






#' Draw Contour Plots
#'
#' @name contour
#' @aliases filled.contour
#'
#' @paramtldr x,y optional numeric vectors for x and y coordinates
#' @paramtldr z a numeric matrix of grid values to contour
#' @paramtldr levels numeric vector specifying contour levels
#' @paramtldr drawlabels logical indicating whether to label contour lines
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lwd`, and `lty`
#'
#' @exampletldr Draw contour lines from a matrix
#' \code{
#' (mat <- rbind(c(0, 1, 0), c(1, 2, 1), c(0, 1, 0)))
#' contour(mat, levels = c(.5, 1.5))
#' filled.contour(mat, levels = c(.5, 1.5))
#' contour( volcano ) # more complex example
#' filled.contour( volcano, key.title = title(main = "Height\n(meters)") )
#' }
#'
#' @exampletldr Change limits on x and y axes (defaults range from 0 to 1)
#' \code{
#' contour(mat, levels = c(.5, 1.5), x = c(-1,0,1), y = c(-2, 0, 2))
#' }
#'
#' @exampletldr Draw contour plots with custom levels and styling
#' \code{
#' levs <- seq(min(volcano), max(volcano), length.out = 10) |> pretty()
#' contour(volcano, levels = levs, drawlabels = TRUE, col = "red", lwd = 2)
#' filled.contour(volcano, color.palette = function(n) hcl.colors(n, "terrain"))
#' }
NULL





#' Conditional Plots
#'
#' @name coplot
#'
#' @paramtldr formula an R formula of the form `y ~ x | a` (or `| a * b`)
#' @paramtldr data a data frame containing the variables in `formula`
#' @paramtldr number how many conditioning intervals to create
#' @paramtldr overlap fraction of overlap between adjacent intervals
#' @paramtldr panel function used to draw each panel, e.g. \{.fun panel.smooth\}
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `pch`
#'
#' @exampletldr Explore ozone vs solar radiation by month
#' \code{
#' coplot(Ozone ~ Solar.R | Month, data = airquality)
#' }
#'
#' @exampletldr Condition on two variables with custom interval settings
#' \code{
#' coplot(Ozone ~ Solar.R | Month * Wind, data = airquality,
#'        number = 3, overlap = 0.2)
#' }
#'
#' @exampletldr Use a smoothing panel and custom color
#' \code{
#' coplot(Ozone ~ Wind | factor(Month), data = airquality,
#'        panel = panel.smooth, col = "darkgreen")
#' }
NULL





#' Draw Mathematical Curves
#'
#' @name curve
#'
#' @paramtldr expr expression or function (must use `x`) to plot
#' @paramtldr from,to numeric range over which `expr` is evaluated
#' @paramtldr add logical; add the curve to an existing plot?
#' @paramtldr n number of evaluation points (default 101)
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `col`, `lty`
#'
#' @exampletldr Plot a simple function
#' \code{
#' curve(x^2, from = -3, to = 3)
#' }
#'
#' @exampletldr Plot a built‑in function with styling
#' \code{
#' curve(sin, -pi, pi, col = "steelblue", lty = 2)
#' }
#'
#' @exampletldr Add a second curve to an existing plot
#' \code{
#' curve(dnorm, -3, 3)                               # first curve
#' curve(dnorm(x, sd = 2), add = TRUE, col = "red")  # overlay
#' }
NULL






#' Dot Charts (Cleveland Dot Plots)
#'
#' @name dotchart
#'
#' @paramtldr x numeric vector (or matrix) of values to plot
#' @paramtldr labels character vector for point labels
#' @paramtldr groups factor (same length as `x`) defining groups
#' @paramtldr ... \{.help [graphical parameters](graphics::par)\}, e.g. `pch`, `col`
#'
#' @exampletldr Basic dot chart of a frequency table
#' \code{
#' counts <- xtabs(~ gear, data = mtcars)
#' dotchart(counts)
#' }
#'
#' @exampletldr Label individual observations with custom style
#' \code{
#' dotchart(mtcars$mpg, labels = rownames(mtcars), cex = 0.6, color = "steelblue")
#' }
#'
#' @exampletldr Grouped dot chart coloured by group
#' \code{
#' matching_ndcs <- match(mtcars$cyl, c(4, 6, 8))
#' cols <- c("firebrick", "gray40", "forestgreen")
#' labs <- rownames(mtcars)
#' dotchart(mtcars$mpg, groups = mtcars$cyl, color  = cols[matching_ndcs],
#'          pch = 19, cex = 0.75, labels = labs)
#' }
NULL
