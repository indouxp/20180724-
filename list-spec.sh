#!/bin/sh

cat <<EOT
SHELL名.out         : 出力
SHELL名.diff        : 入力と、出力の差異
duplicate.folder.txt: フォルダ名変更により、重複してしまうフォルダとその数
left.txt            : ファイル名(コピー元)
right.txt           : ファイル名(コピー先)
out.txt             : left.txtとright.txtのpaste後
md.bat              : フォルダ作成バッチ
copy-file.bat       : ファイルコピーバッチ
EOT
echo "== フォルダリスト(find.d.lst)より、以下を処理 =="
for FILE in *d.sh
do
  COMMENT=$(sed -n "2p" $FILE)
  echo $FILE:$COMMENT
done

echo "== ファイルリスト(find.f.lst)より、以下を処理 =="
for FILE in *f.sh
do
  COMMENT=$(sed -n "2p" $FILE)
  echo $FILE:$COMMENT
done
