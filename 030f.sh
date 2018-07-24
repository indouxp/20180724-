#!/bin/sh
# シャープの削除

cat 020f.sh.out        |
sed 's/#//g'           > ${0##*/}.out

diff 020f.sh.out ${0##*/}.out > ${0##*/}.diff
