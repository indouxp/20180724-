#!/bin/sh
# フォルダ名先頭にピリオドがあるものの削除

cat 090d.sh.out        |
sed 's/\\\./\\/g'      > ${0##*/}.out

diff 090d.sh.out ${0##*/}.out > ${0##*/}.diff
