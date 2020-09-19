#' @importFrom ggplot2 %+replace% theme theme_grey theme_minimal theme_bw margin element_text element_rect element_line stat_ellipse
NULL


#' @export
theme_custom <- function(base_family = "Avenir Next Condensed", fill = "white", ...) {
  theme_minimal(base_family = base_family, ...) %+replace%
    theme(
      plot.title = element_text(face = "bold", margin = margin(0, 0, 5, 0), hjust = 0, size = 13),
      plot.subtitle = element_text(face = "italic", margin = margin(0, 0, 5, 0), hjust = 0),
      plot.background = element_rect(fill = fill, size = 0), complete = TRUE,
      axis.title.x = element_text(margin = margin(15, 0, 0, 0)),
      axis.title.y = element_text(angle = 90, margin = margin(0, 20, 0, 0)),
      strip.text = element_text(face = "italic", colour = "white"),
      strip.background = element_rect(fill = "#4C4C4C")
    )
}

#' @export
theme_blog <- function(base_family = "Avenir Next Condensed", base_line_size = 1, fill = "#fff8f0", ...) {
  theme_minimal(base_family = base_family, base_line_size = base_line_size, ...) %+replace%
    theme(
      plot.title = element_text(face = "bold", margin = margin(0, 0, 5, 0), hjust = 0, size = 16),
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


#' @export
geom_norm_ellipse <- function(data = NULL, fill = "#333333", color = NA, size = 1/3, segments = 1e3) {

  levels <- c(seq(from = 1/10, to = 9/10, by = 1/10), .99)

  geom_ellipse <- function(x, type = "norm", fill, size, segments, color) {

    ggplot2::stat_ellipse(
      data = data,
      type = type,
      level = x,
      geom = "polygon", alpha = 1/8,
      fill = fill,
      size = size,
      segments = segments,
      color = color
    )
  }

  lapply(levels, geom_ellipse, fill = fill, color = color, segments = segments, size = size)

}

#' @export
css_chunk <-
"body {
  font-family: Palatino, serif;
  font-size: 16px;
  background-color: #FFFCF9;
}

h1, h2, h3, h4 {
  font-family: Palatino, serif;
  font-weight: bold;
}

blockquote {
  font-size: 13px;
  color: #828282;
}

pre, code {
  background-color: #ffffff;
  border: 0px solid #ffffff;
}

.tocify, .list-group-item {
  background-color: #FFFCF9;
  font-family: Avenir Next Condensed;
}

.list-group-item.active, .list-group-item.active:hover, .list-group-item.active:focus {
  background-color: steelblue;
}

.btn, .dropdown-menu {
  background-color: #FFFCF9;
  font-family: Avenir Next Condensed;
}"
