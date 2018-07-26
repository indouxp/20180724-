#!/bin/sh
# ファイルフォーマット変換、キャラクタ変換、TOPフォルダパスの削除

FROM='W:\\prjs\\sasak\\20180724-\\from folder\\'

nkf -w -Lu -d find.f.lst           |
sort                               |
sed 's/'"${FROM:?}"'//'            > ${0##*/}.out
