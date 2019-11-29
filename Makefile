.SUFFIXES: .tex .pdf .Rnw .R
.PHONY: combine clean

INCLUDES := $(shell find . -maxdepth 1 -name '*.Rmd')
NAMES = $(basename $(INCLUDES))
TEX = $(NAMES:=.tex)
RFILES = $(NAMES:=.R)
MAIN = introduction_practicals

# Test if file exists. Useful for repos like whyR
# where notes/ is empty
$(MAIN).pdf: *.Rmd
	Rscript -e "rmarkdown::render('$(MAIN).Rmd')"
	Rscript -e "jrNotes::latexmk('$(MAIN).tex')"

combine: $(MAIN).pdf
	Rscript -e 'rmarkdown::render("vignettes/practical1.Rmd")'
	Rscript -e 'rmarkdown::render("vignettes/practical2.Rmd")'
	Rscript -e 'rmarkdown::render("vignettes/practical3.Rmd")'
	Rscript -e 'rmarkdown::render("vignettes/practical4.Rmd")'
	pdftk practical1.pdf practical2.pdf practical3.pdf practical4.pdf output introduction_practicals.pdf

clean:
	rm practical?.pdf introduction_practicals.pdf

