#!/usr/bin/make 

# nothing done
all:

cl: git2cl
git2cl:
	@git log --date=short --pretty=format:"%ad %an <%ae>%n%n%s%n%b" | \
	sed -e 's/^\(.*\)$$/\t\1/g' | \
	sed -e 's/^\t\([0-9]*-[0-9]*-[0-9]*.*\)$$/\1/g' | \
	sed -e 's/^\t$$//g' \
	> ChangeLog
