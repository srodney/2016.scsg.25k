# 2013.11.10
# Steve Rodney

# This Makefile and the associated latex templates are useful
# for quick compilation of different versions of the same 
# research statement.  

default: scsg open

clean:
	rm -f *.aux *.log *.bbl *.blg *.lof *.lot *.toc *options.tex


update: scsg=scsg25k_preLOI_for_usc
update: 
	pdflatex $(scsg); \
	open $(scsg).pdf


scsg: scsg=scsg25k_preLOI_for_usc
scsg: 
	pdflatex $(scsg); \
	bibtex $(scsg); \
	pdflatex $(scsg); \
	pdflatex $(scsg); \
	open $(scsg).pdf


