#' @importFrom ggplot2 %+replace% theme theme_grey theme_minimal theme_bw
NULL


# Source: https://ggplot2-book.org/polishing.html

#' Custom
#'
#' @param ... describe here
#'
#' @return a custom ggplot2 theme
#' @export
#'
theme_custom <- function(...) {
  theme_minimal(...) %+replace%
    theme(
      plot.title = element_text(face = "bold"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size = 0.2),
      strip.background = element_rect(fill = "gray80", color = "gray80")
    )
}
