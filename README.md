# hopscotchr

`hopscotchr` brings [`hopscotch`](http://linkedin.github.io/hopscotch) introductory tours from LinkedIn to R and `Shiny`.  This package offers similar functionality as [`rintrojs`](https://github.com/carlganz/rintrojs).  If you would like more examples and better documentation, I would recommend `rintrojs` over `hopscotchr`.

## Installation

`hopscotchr` is a long way from CRAN, so please install from Github.

``` r
devtools::install_github("timelyportfolio/hopscotchr")
```

## Example

The workflow for creating a tour looks like this.

```
# in ui
add_hopscotch()

# in server
tour <- create_tour(id = "an_id") %>%
  add_steps(...)
  
hopscotch(tour, session)
```

For now, please see [example](https://github.com/timelyportfolio/hopscotchr/blob/master/inst/examples/example_shiny.R).

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).  By participating in this project you agree to abide by its terms.
