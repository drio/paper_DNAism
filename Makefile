SHELL=bash

document.pdf: document.tex
	pdflatex document; bibtex document; pdflatex document; pdflatex document
	@echo "##################"
	@echo -ne "# of words: "; ./texcount.pl document.tex | \
		ruby -ne 'BEGIN{@o=0, @t=0};m = $$_.match(/Words in text: (\d+)/); @o=m[1] if m; \
			m = $$_.match(/captions, etc.\): (\d+)/); @t=m[1] if m; END {puts @o.to_i + @t.to_i}'
	@echo "##################"

cover.pdf: cover.tex
	pdflatex $<

clean:
	rm -fr *.toc *.aux *.bbl *.blg *.idx *.log *.out *~ doc*.pdf *.dvi
