#!/bin/sh
# チルダ削除

cat 010d.sh.out        |
sed 's/~//g'           > ${0##*/}.out

diff 010d.sh.out ${0##*/}.out > ${0##*/}.diff
