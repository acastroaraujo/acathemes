#' @importFrom ggplot2 %+replace% theme theme_grey theme_minimal theme_bw margin element_text element_rect element_line
NULL


#' @export
theme_custom <- function(base_family = "Roboto", fill = "white", ...) {
  theme_minimal(...) %+replace%
    theme(
      plot.title = element_text(face = "bold", margin = margin(0, 0, 5, 0), hjust = 0, size = 13),
      plot.subtitle = element_text(face = "italic", margin = margin(0, 0, 5, 0), hjust = 0),
      plot.background = element_rect(fill = fill, size = 0), complete = TRUE,
      axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
      axis.title.y = element_text(angle = 90, margin = margin(0, 20, 0, 0)),
      strip.text = element_text(face = "italic")
    )
}

#' @export
theme_blog <- function(base_family = "Avenir Next Condensed", base_line_size = 1, fill = "antiquewhite", ...) {
  theme_minimal(base_line_size = base_line_size, ...) %+replace%
    theme(
      plot.title = element_text(face = "bold", margin = margin(0, 0, 5, 0), hjust = 0, size = 13),
      plot.subtitle = element_text(face = "italic", margin = margin(0, 0, 5, 0), hjust = 0),
      plot.background = element_rect(fill = fill, size = 0), complete = TRUE,
      panel.grid = element_line(color = "white"),
      axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
      axis.title.y = element_text(angle = 90, margin = margin(0, 20, 0, 0)),
      strip.text = element_text(face = "italic")
    )
}

#' @export
theme_graph <- function() {
  theme_blog(base_line_size = 0) %+replace%
  theme(axis.title = element_blank(), axis.text = element_blank())
}


