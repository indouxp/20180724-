#!/bin/sh
# copyコマンドのリストを作成

FROM='W:\\prjs\\sasak\\from folder'
TO='W:\\prjs\\sasak\\to folder'

for FILE in *f.sh.out
do
  LAST=$FILE
done

cat 010f.sh.out                                |
awk -v FROM="$FROM" 'BEGIN {
                     }
                     {
                       printf("copy /y /v %c%s\\%s%c\n", 34, FROM, $0, 34);
                     }'                        > left.txt

cat $LAST                                      |
awk -v TO="$TO" 'BEGIN {
                 }
                 {
                   printf("%c%s\\%s%c\n", 34, TO, $0, 34);
                 }'                            > right.txt

paste left.txt right.txt > out.txt

echo "@echo off" >  copy-file.bat
awk 'BEGIN{
     }
     {
       if ($0 ~ /\.ashx *"$/ ||
           $0 ~ /\.asmx *"$/ ||
           $0 ~ /\.json *"$/ ||
           $0 ~ /\.soap *"$/ ||
           $0 ~ /\.svc *"$/  ||
           $0 ~ /\.xamlx *"$/) {
         next;
       }
       printf(": %04d\n", NR);
       printf("%s\n", $0);
       printf("if %%errorlevel%% neq 0 (echo E%04d)\n", NR);
     }' out.txt |
nkf -s -Lw -c   >> copy-file.bat                                 
