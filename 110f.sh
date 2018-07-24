#!/bin/sh
# トップフォルダ名先頭にピリオド

cat 100f.sh.out        |
sed 's/^\.//g'      > ${0##*/}.out

diff 100f.sh.out ${0##*/}.out > ${0##*/}.diff
