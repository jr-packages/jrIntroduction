## ----moviesscatter, echo = FALSE, fig.margin = TRUE, fig.cap='A scatter plot of movie length against budget.', fig.height=7, fig.width=4, cache=FALSE----
data(movies, package = "ggplot2movies")
sub_movies = movies[1:500, ]

op = par(mfrow = c(2, 1), mar = c(3, 3, 3, 1))
plot(sub_movies$length, sub_movies$rating)
text(0, 8.5, "(a)")

plot(sub_movies$length, sub_movies$rating,
     ylab = "Rating", xlab = "Movie Length",
     ylim = c(0, 10), xlim = c(0, 250),
     pch = 21, bg = sub_movies$Action + 1,
     panel.first = grid(), cex = 0.7)
text(0, 9.45, "(b)")
par(op)

## ---- fig.keep="none"----------------------
data(movies, package = "ggplot2movies")
sub_movies = movies[1:500, ]
## Plot first 500 movies
plot(sub_movies$length, sub_movies$rating)

## ---- fig.keep="none"----------------------
plot(sub_movies$length, sub_movies$rating,
     ylab = "Rating", xlab = "Movie Length",
     ylim = c(0, 10), xlim = c(0, 250),
     pch = 21, bg = sub_movies$Action + 1,
     panel.first = grid(), cex = 0.7)

## ---- eval = FALSE-------------------------
#  ## Add a horizontal line at the origin
#  abline(h = 0)
#  ## Vertical line
#  abline(v = 1)

## ---- eval = FALSE-------------------------
#  ## Adds "(b)" to (0, 9.3) on the plot
#  text(0, 9.3, "(b)")

## ----moviesbarchart, fig.margin = TRUE, fig.cap="Barchart of the MPAA ratings for films.", echo = 2, fig.height=3.5----
op = par(mgp = c(2.5, 0.5, 0), mar = c(3.5, 3.5, 2, 1))
barplot(table(movies$mpaa), xlab = "MPAA Rating",
        ylab = "Frequency", border = "black")
par(op)

## ----movieshist, fig.margin = TRUE, fig.cap ='Histograms of the film ratings and budgets.', echo = 2:3, fig.width = 4, fig.height  = 7----
op = par(mfrow = c(2, 1), mar = c(3, 3, 3, 1))
hist(movies$rating, col = "grey", main = "User rating",
     freq = TRUE, xlim = c(1, 10), xlab = "Rating")
hist(movies$budget, col = "grey", main = "Film budget",
     freq = FALSE, xlab = "Budget")
par(op)

## ----eval=FALSE----------------------------
#  hist(movies$rating, col = "grey", main = "User rating",
#       freq = TRUE, xlim = c(1, 10), xlab = "Rating")
#  hist(movies$budget, col = "grey", main = "Film budget",
#       freq = FALSE, xlab = "Budget")

## ----moviesbox1, fig.margin=TRUE, fig.cap = 'Box and whisker plots of (a) film length and (b) film lengths split according to MPAA rating.', echo = FALSE, fig.width = 4, fig.height=7----
op = par(mfrow = c(2, 1), mar = c(3, 3, 3, 1))
boxplot(sub_movies$length, ylab = "Film length")
boxplot(sub_movies$length ~ sub_movies$mpaa, ylab = "Film length")
par(op)

## ----eval = FALSE, ref.label='moviesbox1', echo=2----
#  op = par(mfrow = c(2, 1), mar = c(3, 3, 3, 1))
#  boxplot(sub_movies$length, ylab = "Film length")
#  boxplot(sub_movies$length ~ sub_movies$mpaa, ylab = "Film length")
#  par(op)

## ---- eval = FALSE-------------------------
#  ## Formula pulling out columns from the data individually
#  boxplot(sub_movies$length ~ sub_movies$mpaa)
#  ## Formula and data arguments, looks a bit cleaner
#  boxplot(length ~ mpaa, data = sub_movies)

## ---- eval = FALSE-------------------------
#  boxplot(length ~ Action + Romance, data = sub_movies)

