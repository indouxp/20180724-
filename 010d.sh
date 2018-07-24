#!/bin/sh
# TOPフォルダパスの削除

FROM='W:\\prjs\\sasak\\from folder\\'

nkf -w -Lu -d find.d.lst           |
sort                               |
sed 's/'"${FROM:?}"'//'            > ${0##*/}.out
