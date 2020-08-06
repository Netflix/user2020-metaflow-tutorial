#' Pull the USER 2020 Metaflow tutorials to the current folder
#' @export
pull_tutorials <- function(){
  tutorials_folder <- system.file("tutorials", package = "metaflow")
  file.copy(tutorials_folder, ".", recursive=TRUE)
  invisible()
}
