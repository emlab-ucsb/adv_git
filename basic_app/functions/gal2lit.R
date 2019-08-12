#' Gallons to liters
#'
#' @param gal A single number, in gallons to be converted to liters
#'
#' @details The forula is Liters = 3.785 * Gallons
#'
#' @return The equivalent, in liters
#'
gal2lit <- function(gal) {
  lit <- gal * 3.785
  return(lit)
}