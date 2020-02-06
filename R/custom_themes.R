#' @importFrom ggplot2 %+replace% theme theme_grey theme_minimal theme_bw
NULL


#' @export
theme_custom <- function(base_family = "Roboto", ...) {
  theme_minimal(...) %+replace%
    theme(
      plot.title = element_text(face = "bold", hjust = 0),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size = 0.2),
      strip.background = element_rect(fill = "gray80", color = "gray80")
    )
}


#' @export
theme_super_minimal <- function(base_family = "Roboto", fill = "#fffff8", ...) {
  theme_minimal(base_line_size = 0, ...) %+replace%
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
theme_blog <- function(base_family = "Verdana", fill = "#FDF6E4", ...) {
  theme_minimal(base_line_size = 0, ...) %+replace%
    theme(
      plot.title = element_text(face = "bold", margin = margin(0, 0, 5, 0), hjust = 0, size = 13),
      plot.subtitle = element_text(face = "italic", margin = margin(0, 0, 5, 0), hjust = 0),
      plot.background = element_rect(fill = fill, size = 0), complete = TRUE,
      axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
      axis.title.y = element_text(angle = 90, margin = margin(0, 20, 0, 0)),
      strip.text = element_text(face = "italic")
    )
}

