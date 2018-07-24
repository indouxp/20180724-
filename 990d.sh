#!/bin/sh
# mkdir コマンドのリストを作成
TO='W:\\prjs\\sasak\\to folder'

echo "@echo off" > md.bat

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
                   printf("md %c%s\\%s%c\n", 34, TO, $0, 34);
                   printf("if %%errorlevel%% neq 0 (echo E%04d)\n", NR);
                 }'                            |
nkf -s -Lw -c                                  >> md.bat


cat $LAST |
sort      |
uniq -c   >> duplicate.folder.txt
