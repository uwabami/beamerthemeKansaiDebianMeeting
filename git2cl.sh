#!/bin/sh
if test -d ".git"; then
    git log --date-order --date=short  | \
    sed -e '/^commit.*$/d' | \
    awk '/^Author/ {sub(/\\$/,""); getline t; print $0 t; next}; 1' | \
    sed -e 's/^Author: //g' | \
    sed -e 's/>Date:   \([0-9]*-[0-9]*-[0-9]*\)/>\t\1/g' | \
    sed -e 's/^\(.*\) \(\)\t\(.*\)/\3    \1    \2/g' > ChangeLog
    exit 0
else
    echo "There are not .git directory."
    exit 1
fi

