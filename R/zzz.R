.onAttach = function(...) {
  if (!interactive() || runif(1) < 0.5) return()

  msg = "We've compiled a list of useful books: See
  vignette('books', package = 'jrIntroduction')" # nocov
  packageStartupMessage(paste(strwrap(msg), collapse = "\n")) # nocov
}