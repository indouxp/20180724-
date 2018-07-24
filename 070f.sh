#!/bin/sh
# 中ガッコ右側削除

cat 060f.sh.out        |
sed 's/}//g'           > ${0##*/}.out

diff 060f.sh.out ${0##*/}.out > ${0##*/}.diff
