######################################################################
# SETTINGS
__ALLTeXFiles__ := $(wildcard *.tex)
TEXFiles := $(__ALLTeXFiles__:%.v.tex=)
PDFFiles := $(TEXFiles:%.tex=%.pdf)
REMOVE_TARGET :=  \
	*~ *.bak *.aux *.log *.toc *.tmp *.ps *.fdb_latexmk *.bbl *.blg *.dvi \
	*.nav *.out *.snm auto *.vrb
all: $(PDFFiles) post

%.pdf: %.tex 
	platex $<
	platex $<
	platex $<
	dvipdfmx $*.dvi

post: 
	$(RM) -rf $(REMOVE_TARGET)

clean: post

distclean: clean
	rm -rf *.pdf 

