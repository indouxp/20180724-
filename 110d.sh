#!/bin/sh
# トップフォルダ名先頭にピリオド

cat 100d.sh.out        |
sed 's/^\.//g'      > ${0##*/}.out

diff 100d.sh.out ${0##*/}.out > ${0##*/}.diff
