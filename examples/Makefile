######################################################################
# SETTINGS
__ALLTeXFiles__ := $(wildcard *.tex)
TEXFiles := $(__ALLTeXFiles__:%.v.tex=)
PDFFiles := $(TEXFiles:%.tex=%.pdf)
REMOVE_TARGET :=  \
	*~ *.bak *.aux *.log *.toc *.tmp *.ps *.fdb_latexmk *.bbl *.blg *.dvi \
	*.nav *.out *.snm auto *.vrb *.ppm

all: post

%.pdf: %.tex 
	platex $<
	platex $<
	platex $<
	dvipdfmx $*.dvi

create_thums: create_thums-stamp
create_thums-stamp: $(PDFFiles)
	pdftoppm -r 300 sample.pdf thumbs
	mogrify -format png -geometry 640x480 *.ppm
	touch $@

post: create_thums
	$(RM) -rf $(REMOVE_TARGET)

clean: post

distclean: clean
	rm -rf *.pdf thumbs*.png thums-stamp

