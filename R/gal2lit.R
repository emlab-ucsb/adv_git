#' Gallons to liters
#'
#' @param gal A single number, in gallons to be converted to liters
#'
#' @details The forula is Liters = 3.785 * Gallons
#'
#' @return The equivalent, in liters
#'
gal2lit <- function(gal) {
  
  if(!is.numeric(gal)) {
    stop("Make sure gal is of class numeric")
  }
  
  lit <- gal * 3.785
  return(lit)
}