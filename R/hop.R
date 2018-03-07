#' @export
hopscotch <- function(tour = NULL, session = NULL) {
  if(is.null(tour)) stop("Please supply a tour so we can hopscotch.", call. = FALSE)
  if(is.null(session)) stop("Please supply Shiny session.", call. = FALSE)

  session$sendCustomMessage(
    "startTour",
    message = jsonlite::toJSON(
      list(
        tour = unclass(tour)
      ),
      auto_unbox = TRUE
    )
  )
}

#' @export
hopscotch_end <- function(session = NULL) {
  if(is.null(session)) stop("Please supply Shiny session.", call. = FALSE)
  session$sendCustomMessage(
    "endTour",
    message = list()
  )
}

#' @export
create_tour <- function(id = NULL, ...) {
  if(is.null(id)) {stop("id is a required argument.  Please provide an id.", call. = FALSE)}
  tour <- Filter(
    Negate(is.null),
    list(
      id = id,
      ...
    )
  )

  class(tour) <- "hopscotch"
  return(tour)
}

#' @export
add_step <- function (tour, ...) {
  UseMethod("add_step", tour)
}

#' @export
add_step.hopscotch <- function(tour, ...) {
  steps <- tour$steps
  if(is.null(steps)) steps <- list()

  steps[[length(steps) + 1]] <- list(
    ...
  )

  tour$steps <- steps
  return(tour)
}
