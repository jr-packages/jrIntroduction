#' Create a local copy of movies data
#'
#' This function will attempt to create a local copy of the movies data set
#' such that you can make sure that you are happy with reading in data from Excel files.
#'
#' @usage GetExcelMovies()
#' @return logical TRUE if the operation was successful
#' @export

GetExcelMovies = function(){
  system.file("inst/movies.xslx", package = "jrIntroduction")
}