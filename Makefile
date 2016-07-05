PAPER = main
TEX = $(wildcard *.tex ./paragraphs/*.tex)
BIB = biosbib.bib lophi.bib
FIGS = $(wildcard img/*.pdf img/*.png)


.PHONY: all clean

$(PAPER).pdf: $(TEX) 
	pdflatex $(PAPER)
	-bibtex $(PAPER)
	-pdflatex $(PAPER)
	-pdflatex $(PAPER)
	-pdflatex $(PAPER).tex
	-pdflatex $(PAPER).tex


clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf ./img/*.aux ./img/*.log

