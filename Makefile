document.pdf: document.tex
	pdflatex document; bibtex document; pdflatex document; pdflatex document
	@./texcount.pl document.tex

clean:
	rm -fr *.toc *.aux *.bbl *.blg *.idx *.log *.out *~ doc*.pdf *.dvi
