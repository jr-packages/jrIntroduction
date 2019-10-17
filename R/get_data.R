#' Dummy data
#'
#' Dummy data set using in assignment 1
#'
#' @name get_data
#' @docType data
#' @usage data(get_data, package = "jrIntroduction")
#' @return A tibble
#' @keywords datasets
#' @examples
#' data(get_data)
NULL

# nolint start
# set.seed(seed)
# l = sample(50000:60000, 1)
# m = runif(1, -5, 5)
# v1 = round(rnorm(l, m, 20), 1)
# v2 = sample(c(TRUE, FALSE), l, replace = TRUE)
# v3 = sample(LETTERS, l, replace = TRUE)
#
# get_data = tibble::tibble(v1, v2, v3)
# save(get_data, file="data/get_data.RData", version = 2)
# nolint end


#' Generate random vectors
#'
#' These functions create vectors of numerics, logicals or characters.
#' Given a seed, the functions will always return the
#' same subset.
#' @importFrom stats runif
#' @importFrom stats rnorm
#' @importFrom utils data
#' @export
GetNumericVector = function() {
  e = new.env()
  data("get_data", package = "jrIntroduction", envir = e)
  e$get_data$v1
}

#' @export
#' @rdname GetNumericVector
GetLogicalVector = function() {
  e = new.env()
  data("get_data", package = "jrIntroduction", envir = e)
  e$get_data$v2

}

#' @export
#' @rdname GetNumericVector
GetCharacterVector = function() {
  e = new.env()
  data("get_data", package = "jrIntroduction", envir = e)
  e$get_data$v3
}
