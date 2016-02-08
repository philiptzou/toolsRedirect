#! /bin/bash
_pages=$(find . -name '*.mw' -a -not -name '.*' | sed -s 's/^\.\/\(.\+\)\.mw$/\1/')

git config --unset remote.origin.pages
git config --add remote.origin.pages "$_pages"
