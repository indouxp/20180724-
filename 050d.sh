#!/bin/sh
# アンパサンドの削除

cat 040d.sh.out        |
sed 's/&//g'           > ${0##*/}.out

diff 040d.sh.out ${0##*/}.out > ${0##*/}.diff
