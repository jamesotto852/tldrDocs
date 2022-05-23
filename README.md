
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tldrDocs

<!-- badges: start -->
<!-- badges: end -->

**tldrDocs** provides [**tldr**](https://github.com/tidyverse/tldr)
documentation for base R functions.

## Installation

You can install the development version of tldrDocs from
[GitHub](https://github.com/) with:

``` r
if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("jamesotto852/ggdensity")
```

## Example

Once you have installed **tldrDocs**, you do not need to (and should
not) load it via `library()`. `tldr::tldr()` will be able to find the
installed documentation for base R functions automatically:
<!-- should be screenshots? -->

``` r
library("tldr")
tldr(dnorm)
```

    ── The Normal Distribution ─────────────────────────────────────────────────────

    stats::dnorm(), stats::pnorm(), stats::qnorm(), stats::rnorm()

    • Useful Arguments:

      • mean, sd

    • Common Tasks:

      • Compute the probability density at a point (x = 0)

        dnorm(0, mean = 0, sd = 1)

        dnorm(0)

      • Compute the cumulative probability density up to a point (x = 0)

        pnorm(0)

      • Compute the 95th percentile

        qnorm(.95)

      • Generate draws (n = 10)

        rnorm(10)

``` r
tldr(cars)
```

    ── Speed and Stopping Distances of Cars ────────────────────────────────────────

    datasets::cars

    • A data frame w/ 2 cols and 50 rows:

      • speed: Speed (mph)

      • dist: Stopping distance (ft)
