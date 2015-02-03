SHELL=bash

bmc_article.pdf: bmc_article.tex
	#pdflatex document; bibtex document; pdflatex document; pdflatex document
	latex bmc_article.tex
	bibtex bmc_article
	latex bmc_article.tex
	latex bmc_article.tex
	dvipdfm bmc_article.dvi
	@echo "##################"
	@echo -ne "# of words: "; ../texcount.pl bmc_article.tex | \
		ruby -ne 'BEGIN{@o=0, @t=0};m = $$_.match(/Words in text: (\d+)/); @o=m[1] if m; \
			m = $$_.match(/captions, etc.\): (\d+)/); @t=m[1] if m; END {puts @o.to_i + @t.to_i}'
	@echo "##################"

clean:
	#rm -fr *.toc *.aux *.bbl *.blg *.idx *.log *.out *~ doc*.pdf *.dvi PLAIN.BST *.cfg *.bst *.pdf
	rm -fr *.toc *.aux *.bbl *.blg *.idx *.log *.out *~ doc*.pdf *.dvi PLAIN.BST *.cfg *.pdf
