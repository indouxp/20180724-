#!/bin/sh
# 中ガッコ左側削除

cat 050f.sh.out        |
sed 's/{//g'           > ${0##*/}.out

diff 050f.sh.out ${0##*/}.out > ${0##*/}.diff
