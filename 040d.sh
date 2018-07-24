#!/bin/sh
# パーセント削除

cat 030d.sh.out        |
sed 's/%//g'           > ${0##*/}.out

diff 030d.sh.out ${0##*/}.out > ${0##*/}.diff
