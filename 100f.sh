#!/bin/sh
# ファイル名先頭にピリオド

cat 090f.sh.out        |
sed 's/\\\./\\/g'      > ${0##*/}.out

diff 090f.sh.out ${0##*/}.out > ${0##*/}.diff
