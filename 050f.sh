#!/bin/sh
# アンパサンドの削除

cat 040f.sh.out        |
sed 's/&//g'           > ${0##*/}.out

diff 040f.sh.out ${0##*/}.out > ${0##*/}.diff
