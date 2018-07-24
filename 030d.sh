#!/bin/sh
# シャープの削除

cat 020d.sh.out        |
sed 's/#//g'           > ${0##*/}.out

diff 020d.sh.out ${0##*/}.out > ${0##*/}.diff
