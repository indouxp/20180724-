#!/bin/sh
# TOPフォルダパスの削除

FROM='W:\\prjs\\sasak\\from folder\\'

nkf -w -Lu -d find.f.lst           |
sort                               |
sed 's/'"${FROM:?}"'//'            > ${0##*/}.out
