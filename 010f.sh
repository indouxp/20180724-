#!/bin/sh
# TOP$B%U%)%k%@%Q%9$N:o=|(B

FROM='W:\\prjs\\sasak\\from folder\\'

nkf -w -Lu -d find.f.lst           |
sort                               |
sed 's/'"${FROM:?}"'//'            > ${0##*/}.out
