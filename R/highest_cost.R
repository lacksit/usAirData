#' Highest cost row
#'
#' This function finds the row with the highest cost in my airline data.
#' It checks that the dataset has a "cost" column first.
#'
#' @param data The dataset I am using.
#'
#' @return The row that has the highest cost.
#'
#' @examples
#' highest_cost(airdata)
#'
highest_cost <- function(data) {

  if (!"cost" %in% names(data)) {
    stop("Missing 'cost' column.")
  }

  # get the index of the max cost
  max_index <- which.max(data$cost)

  # return that row
  data[max_index, ]
}
