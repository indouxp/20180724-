@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR } exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 中ガッコ後
set LOG=%~dpn0.log

mkdir ".\from folder\ut060"
copy nul ".\from folder\ut060\}テストファイル11.txt"
copy nul ".\from folder\ut060\テストファイル12}.txt"
copy nul ".\from folder\ut060\テスト}ファイル13.txt"
copy nul ".\from folder\ut060\テスト}}}ファイル14.txt"

mkdir ".\from folder\ut061}"
copy nul ".\from folder\ut061}\テストファイル11.txt"
copy nul ".\from folder\ut061}\テストファイル12.txt"

mkdir ".\from folder\}ut062"
copy nul ".\from folder\}ut062\テストファイル11.txt"
copy nul ".\from folder\}ut062\テストファイル12.txt"

mkdir ".\from folder\ut}}}063"
copy nul ".\from folder\ut}}}063\テストファイル11.txt"
copy nul ".\from folder\ut}}}063\テストファイル12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
