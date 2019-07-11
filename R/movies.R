#' Movie information and user ratings from IMDB.com.
#'
#' The internet movie database, \url{http://imdb.com}, is a
#' website devoted to collecting movie data supplied by
#' studios and fans.
#'
#' It claims to be the biggest movie database on the web
#' and is run by amazon.  More about information
#' \url{imdb.com }can be found online,
#' \url{http://imdb.com/help/show_leaf?about}, including
#' information about the data collection process,
#' \url{http://imdb.com/help/show_leaf?infosource}.
#' @name movies
#' @docType data
#' @usage data(movies)
#' @return A data frame with 3658 rows and 21 variables.
#' \describe{
#' \item{title.}{Title of the movie.}
#' \item{year.}{Year of release.}
#' \item{budget.}{Total budget (if known) in US dollars}
#' \item{gross.}{Grossed amount in US dollars}
#' \item{duration}{Duration in minutes.}
#' \item{classification}{PG, 12A, etc}
#' \item{rating.}{Average IMDB user rating.}
#' \item{votes.}{Number of IMDB users who rated this movie.}
#' \item{language}{Original language of the film}
#' \item{country}{Country of release}
#' \item{cast_total_facebook_likes}{Total number of facebook likes of the cast}
#' \item{action, adventure, comedy, crime, drama, fantasy, sci-fi, thriller, romance, other}{Binary variables representing if movie was classified as belonging to that genre.}}
#'@references Credit: This data set was found of kaggle
#'@keywords datasets
#' @examples
#' data(movies)
NULL