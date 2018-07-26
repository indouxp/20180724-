#!/bin/sh
# フォルダリストから、mkdir フォルダリスト一覧のバッチファイル作成

rm -f duplicate.folder.txt

for FILE in [0-9][0-9][0-9]d.sh
do
  echo ${FILE:?}
  ./${FILE:?}
done

for FILE in [0-9][0-9][0-9]f.sh
do
  echo ${FILE:?}
  ./${FILE:?}
done
