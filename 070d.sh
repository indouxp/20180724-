#!/bin/sh
# 中ガッコ右側削除

cat 060d.sh.out        |
sed 's/}//g'           > ${0##*/}.out

diff 060d.sh.out ${0##*/}.out > ${0##*/}.diff
