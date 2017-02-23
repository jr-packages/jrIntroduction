globalVariables("movies")
#' Subset of the yeast data set
#'
#' This function creates a subset (of random rows) of the
#' yeast data set data frame.
#' The seed argument resets the random number generator.
#' @param seed A positive interger for the random number generator. Default 1.
#' @return A data frame with a random numer of rows
#' @export
#' @examples
#' d1 = GetDataFrame()
#' d2 = GetDataFrame(10)
#' identical(d1, d2)
GetDataFrame = function(seed=1) {
  set.seed(seed)
  data(movies, envir = environment())
  d = movies
  l = sample(50:100, 1)
  del_rows = sample(1:nrow(d), l)

  d = d[-del_rows,]
  rownames(d) = 1:nrow(d)

  return(d)
}
