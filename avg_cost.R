#' Average cost
#'
#' This function finds the average cost from my airline data.
#' It checks if the cost column is there before calculating.
#'
#' @param data The dataset I am using.
#'
#' @return The average cost.
#'
#' @examples
#' avg_cost(airdata)
#'
avg_cost <- function(data) {

  if (!"cost" %in% names(data)) {
    stop("Missing 'cost' column.")
  }

  mean(data$cost, na.rm = TRUE)
}
