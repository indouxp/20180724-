#!/bin/sh
# .複数ピリオドの削除

cat 070f.sh.out        |
sed 's/\.\.*/\./g'     > ${0##*/}.out

diff 070f.sh.out ${0##*/}.out > ${0##*/}.diff
