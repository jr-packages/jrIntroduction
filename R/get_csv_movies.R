#' Create a local copy of movies data
#'
#' This function will attempt to create a
#' local copy of the movies data set
#' such that you can make sure that you are
#' happy with reading in data from csv files.
#'
#' @usage get_csv_movies_file()
#' @return logical TRUE if the operation was successful
#' @export
get_csv_movies_file = function() {
  fpath = system.file("movies.csv", package = "jrIntroduction")
  if (!nchar(fpath)) {
    stop("Something went wrong, package internal csv file could not be found.
         You can skip this question if you want. Alternatively let me know and
         I will send you a copy manually")
  }
  to = file.path(getwd(), "movies.csv")
  copy = file.copy(fpath, to, overwrite = TRUE)
  if (!copy) {
    stop("Couldn't copy the file, you may not have permission to write to this
          directory. Try changing the working directory, either through the
          setwd() function or under Session in RStudio. If you still can't get
         it  working either skip this question or let me know and I will send
         you a copy manually.")
  } else {
    message("Copied the file movies.csv to ", to)
  }
  TRUE
}
