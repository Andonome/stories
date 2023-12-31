BOOK = $(shell basename "$$(pwd)")

output: $(BOOK).pdf

global: config/bind.sty .switch-gls
.switch-gls:
	@touch -r Makefile .switch-gls
config/bind.sty:
	@git submodule update --init

svg-inkscape: | config/bind.sty
	@pdflatex -shell-escape -jobname $(BOOK) main.tex
$(BOOK).pdf: svg-inkscape $(wildcard *.tex) $(wildcard config/*.sty)
	@pdflatex -jobname $(BOOK) main.tex

all: $(BOOK).pdf 
	latexmk -jobname=$(BOOK) -shell-escape -pdf main.tex

clean:
	rm -fr *.aux *.sls *.slo *.slg *.toc *.acn *.log *.out *.idx *.ist *.glo *.glg *.gls *.acr *.alg \
	*.pdf \
	*.ilg \
	*.ind \
	svg-inkscape \
	*.fdb_latexmk \
	*.fls

.PHONY: clean all
