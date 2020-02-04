



#' Custom
#'
#' @return
#' @export
#'
#' @examples
theme_custom <- function() {
  theme_minimal(base_family = "IBM Plex Sans") +
    theme(
      plot.title = element_text(face = "bold"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size = 0.2),
      strip.background = element_rect(fill = "gray80", color = "gray80")
    )
}
