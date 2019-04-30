#' Generate random vectors
#'
#' These functions create vectors of numerics, logicals or characters.
#' Given a seed, the functions will always return the
#' same subset.
#' @inheritParams GetDataFrame
#' @importFrom stats runif
#' @importFrom stats rnorm
#' @export
GetNumericVector = function(seed=1){
  set.seed(seed)
  l = sample(50000:60000, 1)
  m = runif(1, -5, 5)
  v = round(rnorm(l, m, 20), 1)
  return(v)
}

#' @export
#' @rdname GetNumericVector
GetLogicalVector = function(seed=1){
  set.seed(seed)
  l = sample(52000:60000, 1)
  v = sample(c(TRUE, FALSE), l, replace = TRUE)
  return(v)
}

#' @export
#' @rdname GetNumericVector
GetCharacterVector = function(seed=1){
  set.seed(seed)
  l = sample(51000:60000, 1)
  v = sample(LETTERS, l, replace = TRUE)
  return(v)
}