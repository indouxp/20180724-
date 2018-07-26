#!/bin/sh
# copyコマンドのリストを作成

FROM='W:\\prjs\\sasak2\\20180724-\\from folder'
TO='W:\\prjs\\sasak2\\20180724-\\to folder'

for FILE in *f.sh.out
do
  LAST=$FILE
done

cat 010f.sh.out                                |
awk -v FROM="$FROM" 'BEGIN {
                       system("cat /dev/null > exclusionByExtension.txt"); 
                     }
                     {
                       if ($0 ~ /\.ashx *$/ ||
                           $0 ~ /\.asmx *$/ ||
                           $0 ~ /\.json *$/ ||
                           $0 ~ /\.soap *$/ ||
                           $0 ~ /\.svc *$/  ||
                           $0 ~ /\.xamlx *$/) {
                         printf("%s\n", $0) >> "exclusionByExtension.txt";
                         next;
                       }
                       gsub(/%/, "%%");        # %をエスケープ
                       printf("\n");
                       printf("    copy /v %c%s\\%s%c\n", 34, FROM, $0, 34);
                       printf("    if !errorlevel! neq 0 (echo E01:copy fail: %c%s%c)\n", 34, $0, 34);
                       printf("\n");
                       printf("    echo E02:duplicate: %c%s\\%s%c\n", 34, FROM, $0, 34);
                       printf("\n");
                     }'                        > left.txt

cat $LAST                                      |
awk -v TO="$TO" 'BEGIN {
                 }
                 {
                   if ($0 ~ /\.ashx *$/ ||
                       $0 ~ /\.asmx *$/ ||
                       $0 ~ /\.json *$/ ||
                       $0 ~ /\.soap *$/ ||
                       $0 ~ /\.svc *$/  ||
                       $0 ~ /\.xamlx *$/) {
                     next;
                   }
                   printf("if not exist %c%s\\%s%c (\n", 34, TO, $0, 34);
                   printf("%c%s\\%s%c\n", 34, TO, $0, 34);
                   printf("\n");
                   printf(") else (\n");
                   printf("\n");
                   printf(")\n");
                 }'                            > right.txt

paste left.txt right.txt > out.txt

echo "@echo off"                       | nkf -s -Lw -c >  copy-file.bat
echo "setlocal enabledelayedexpansion" | nkf -s -Lw -c >> copy-file.bat
cat out.txt                            | nkf -s -Lw -c >> copy-file.bat                                 

