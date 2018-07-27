@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: アンパサンド
set LOG=%~dpn0.log

mkdir ".\from folder\ut040"
copy nul ".\from folder\ut040\&テストファイル11.txt"
copy nul ".\from folder\ut040\テストファイル12&.txt"
copy nul ".\from folder\ut040\テスト&ファイル13.txt"
copy nul ".\from folder\ut040\テスト&&&ファイル14.txt"

mkdir ".\from folder\ut041&"
copy nul ".\from folder\ut041&\テストファイル11.txt"
copy nul ".\from folder\ut041&\テストファイル12.txt"

mkdir ".\from folder\&ut042"
copy nul ".\from folder\&ut042\テストファイル11.txt"
copy nul ".\from folder\&ut042\テストファイル12.txt"

mkdir ".\from folder\ut&&&013"
copy nul ".\from folder\ut&&&013\テストファイル11.txt"
copy nul ".\from folder\ut&&&013\テストファイル12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
