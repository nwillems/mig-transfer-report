
default: compile

compile: graphs bibtex index.pdf

graphs:
	echo "No graphs so far"

bibtex: bibliography.bib
	pdflatex index.tex
	bibtex index.aux

index.pdf: index.tex design.tex
	pdflatex index.tex
	pdflatex index.tex
	pdflatex index.tex
