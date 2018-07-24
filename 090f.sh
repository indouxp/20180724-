#!/bin/sh
# .がファイル名最後(この結果は変換なし)最後がピリオドのフォルダは、Win上で作成できない

cat 080f.sh.out        |
sed 's/\.\\//g'        |
sed 's/\.$//g'         > ${0##*/}.out

diff 080f.sh.out ${0##*/}.out > ${0##*/}.diff
