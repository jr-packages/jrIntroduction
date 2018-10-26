## ---- eval = FALSE-------------------------------------------------------
#  pdf("mygraph.pdf")
#  plot(1:10)
#  dev.off()

## ---- eval = FALSE-------------------------------------------------------
#  ## 6 by 6 inches
#  pdf("mygraph.pdf", width=6, height=6)
#  plot(1:10)
#  dev.off()

## ---- eval = FALSE-------------------------------------------------------
#  png("mygraph.png")
#  plot(1:10)
#  dev.off()

## ---- eval = FALSE-------------------------------------------------------
#  ppi = 300
#  png("mygraph.png", width=6*ppi, height=6*ppi, res=ppi)
#  plot(1:10)
#  dev.off()

