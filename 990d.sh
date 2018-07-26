#!/bin/sh
# mkdir コマンドのリストを作成
TO='W:\\prjs\\sasak\\20180724-\\to folder'

echo "@echo off" | nkf -s -Lw -c > md.bat

# フォルダパス処理の最終ファイル選択
for FILE in *d.sh.out
do
  LAST=$FILE
done

cat $LAST                                      |
sort -u                                        |
awk -v TO="$TO" 'BEGIN {
                 }
                 {
                   printf(": %04d\n", NR);
                   printf("if not exist %c%s\\%s%c md %c%s\\%s%c\n", 34, TO, $0, 34, 34, TO, $0, 34);
                   printf("if %%errorlevel%% neq 0 (echo E%04d)\n", NR);
                 }'                            |
nkf -s -Lw -c                                  >> md.bat


# フォルダ名のリスト
cat $LAST |
sort      |
uniq -c   > folders.txt
