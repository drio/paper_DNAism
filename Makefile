document.pdf: document.tex
	pdflatex document; bibtex document; pdflatex document; pdflatex document

clean:
	rm -fr *.toc *.aux *.bbl *.blg *.idx *.log *.out *~ doc*.pdf
