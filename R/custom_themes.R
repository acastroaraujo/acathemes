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
theme_custom <- function(base_family = "Roboto", ...) {
  theme_minimal(...) %+replace%
    theme(
      plot.title = element_text(face = "bold"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size = 0.2),
      strip.background = element_rect(fill = "gray80", color = "gray80")
    )
}


theme_super_minimal <- function(base_family = "Roboto", fill = "#fffff8", ...) {
  theme_minimal(base_line_size = 0, ...) %+replace%
    theme(
      plot.title = element_text(face = "bold", margin = margin(0, 0, 5, 0), hjust = 0),
      plot.subtitle = element_text(margin = margin(0, 0, 5, 0), hjust = 0),
      plot.background = element_rect(fill = fill, size = 0),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_blank(),
      axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
      axis.title.y = element_text(angle = 90, margin = margin(0, 15, 0, 0))
      )
}



