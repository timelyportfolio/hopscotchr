#' @export
hopscotch_dep <- function(offline = TRUE) {

  if(offline) {
    src <- c(file = system.file("www/hopscotch", package = "hopscotchr"))
  } else {
    src <- c(href = "https://unpkg.com/hopscotch/dist")
  }

  htmltools::htmlDependency(
    name = "hopscotch",
    version = hopscotch_version(),
    src = src,
    script = "js/hopscotch.min.js",
    stylesheet = "css/hopscotch.min.css"
  )

}

#' @export
use_hopscotch <- function(offline = TRUE) {
  list(
    hopscotch_dep(offline = offline),
    htmltools::htmlDependency(
      name = "hopscotchr",
      version = "0.1.0",
      src = system.file("www/hopscotchr", package="hopscotchr"),
      script = "hopscotchr.js"
    )
  )
}
