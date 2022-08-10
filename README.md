
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tldrDocs <img src="man/figures/logo.png"  align="right"  width="120" style="padding-left:10px;background-color:white;" />

<!-- badges: start -->
<!-- [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version-ago/tldrDocs)](https://cran.r-project.org/package=tldrDocs) -->

[![Lifecycle:Experimental](https://img.shields.io/badge/Lifecycle-Experimental-339999)](Redirect-URL)
<!-- badges: end -->

**tldrDocs** provides [**tldr**](https://github.com/jamesotto852/tldr)
documentation for many of the commonly-used objects included in the base
distribution of R. For example, there is documentation included for all
of the distribution functions exported in **stats**—below, we show the
documentation for the `*pois()` functions:

![example showing tldr(dpois)](man/README-assets/dpois-ex.png)

------------------------------------------------------------------------

Also included is documentation for the `apply()` family of functions.
Here, we include the documentation for `lapply()`, `sapply()`, and
`vapply()`:

![example showing tldr(lapply)](man/README-assets/lapply-ex.png)

## Installation

You can install the development version of tldrDocs from
[GitHub](https://github.com/) with:

``` r
if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("jamesotto852/tldrDocs")
```

Once you have installed **tldrDocs**, you do not need to (and should
not) load it via `library()`. `tldr::tldr()` will be able to find the
installed documentation for base R functions automatically.

## Details

The goal of **tldrDocs** is not to provide documentation for every
function exported in base R—just those that are commonly used and/or
have aspects that are difficult to remember. If you believe that
documentation is missing or existing documentation needs correcting,
please [open an
issue](https://github.com/jamesotto852/tldrDocs/issues/new/choose) or
[fork](https://help.github.com/articles/fork-a-repo/) this repository
and submit a
[PR](https://help.github.com/articles/creating-a-pull-request/). For
help on writing **tldr** documentation, see the [**tldr**
repo](https://github.com/jamesotto852/tldr).

Note, only base packages are documented via **tldrDocs**—if you are a
package developer that wants to include **tldr** documentation in a
package, see [**tldrExample**](https://github.com/jamesotto852/tldr) for
an example of a package with **tldr** documentation.
