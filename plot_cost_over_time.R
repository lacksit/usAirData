#' This is a plot cost over time
#'
#' This function makes a simple line plot of cost by year, it checks that the dataset has both year and cost columns.
#'
#' @param data The dataset I am using.
#'
#' @return A ggplot line graph.
#'
#' @examples
#' plot_cost_over_time(airdata)
#'
plot_cost_over_time <- function(data) {

  if (!"cost" %in% names(data)) {
    stop("Missing 'cost' column.")
  }

  if (!"year" %in% names(data)) {
    stop("Missing 'year' column.")
  }

  ggplot2::ggplot(data, ggplot2::aes(x = year, y = cost)) +
    ggplot2::geom_line(color = "pink") +
    ggplot2::labs(
      title = "Cost Over Time",
      x = "Year",
      y = "Cost"
    )
}
