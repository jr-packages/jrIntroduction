combine:
	Rscript -e 'rmarkdown::render("practical1.Rmd")'
	Rscript -e 'rmarkdown::render("practical2.Rmd")'
	Rscript -e 'rmarkdown::render("practical3.Rmd")'
	Rscript -e 'rmarkdown::render("practical4.Rmd")'
	pdftk practical1.pdf practical2.pdf practical3.pdf practical4.pdf output introduction_practicals.pdf

clean:
	rm practical?.pdf introduction_practicals.pdf