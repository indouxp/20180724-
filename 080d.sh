#!/bin/sh
# .複数ピリオドの削除

cat 070d.sh.out        |
sed 's/\.\.*/\./g'     > ${0##*/}.out

diff 070d.sh.out ${0##*/}.out > ${0##*/}.diff
