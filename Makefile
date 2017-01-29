#!/usr/bin/make
ORG	:= $(wildcard *.org)
TEX	:= $(ORG:%.org=%.tex)
PDF	:= $(ORG:%.org=%.pdf)

all: $(PDF) post
%.pdf: %.org
	emacs -q --no-site-file --batch README.org -f org-beamer-export-to-pdf
post:
	@rm -f $(TEX) *~
distclean: post
	rm -f $(PDF)
cl: git2cl
git2cl:
	@git log --date=short --pretty=format:"%ad %an <%ae>%n%n%s%n%b" | \
	sed -e 's/^\(.*\)$$/\t\1/g' | \
	sed -e 's/^\t\([0-9]*-[0-9]*-[0-9]*.*\)$$/\1/g' | \
	sed -e 's/^\t$$//g' \
	> ChangeLog
	[ ! `git diff --check --exit-code ChangeLog` ] || git commit --amend -C HEAD
