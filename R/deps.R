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
