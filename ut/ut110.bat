@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: copy失敗
set LOG=%~dpn0.log

mkdir ".\from folder\ut110"
copy nul ".\from folder\ut110\テストファイル11.txt"
copy nul ".\from folder\ut110\テストファイル12.txt"

mkdir ".\from folder\ut111"
copy nul ".\from folder\ut111\テストファイル11.txt"
copy nul ".\from folder\ut111\テストファイル12.txt"

mkdir ".\from folder\ut112"
copy nul ".\from folder\ut112\テストファイル11.txt"
copy nul ".\from folder\ut112\テストファイル12.txt"

tree /f "from folder" > %LOG%

mkdir "to folder\ut111"
icacls "to folder\ut111" /deny GLOBAL\20166038:wd
icacls "to folder\ut111" >> %LOG%

call .\find.bat ".\from folder"
