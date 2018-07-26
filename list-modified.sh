#!/bin/sh
# 処理前(010f.sh.out)と、処理済み(990f.sh.out)の差異チェック

for FILE in *f.sh.out    # 出力のリスト
do
  if [ -z "$TOP" ]; then # $TOPが未定義
    TOP=${FILE:?}
  fi
  LAST=${FILE:?}
done

#echo $TOP
#echo $LAST

diff ${TOP:?} ${LAST:?}
