
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SumStat

<!-- badges: start -->

<!-- badges: end -->

The purpose of SumStat is to provide convenient tools for users to
calcaulte the summary of statistics of a given dataset.

Use `SumStat` to:  
\- calculate the coefficient of variation of given data  
\- calculate the range of given data

## Installation

You can install the pre-released version of `SumStat` with:

``` r
devtools::install_github("Ella-Q/SumStat")
```

## Example

This is a basic example which shows you how to work with functions in
`SumStat`:

``` r
library(SumStat)
#> 
#> Attaching package: 'SumStat'
#> The following object is masked from 'package:base':
#> 
#>     range

# calculate the coefficient of variation 
CVar(c(5:10, NA), remove_na = T)
#> Warning in CVar(c(5:10, NA), remove_na = T): The input values contain NA's
#> [1] 4.008919
```

## Steps in developing the R package

1.  load the `devtools` package in a console, and then run
    `create_package("SumStat)` in the console  
2.  In the newly-opened R project named SumStat, reload the `devtools`
    package and run `use_git()`  
3.  Run `use_r("CVar")` and `use_r("range")` to open R scripts
4.  After writing the functions in R scripts, run `load_all()`
5.  Run `check()`
6.  Run `use_mit_license("Qing Qiu")` to edit the license in the
    DESCRIPTION file  
7.  Click on the each function in the R scripts, and do Code –\> Insert
    roxygen skeleton to document each function. Then, run `document()`
    in the console
8.  Run `use_readme_rmd()` to add a README file and render it with
    `build_readme()`
9.  Make a vignette with `use_vignette("range")`  
10. Run `use_testthat()` to include tests in the package
