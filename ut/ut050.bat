@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR * exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: アスタリスク <- テストデータ作れない

mkdir ".\from folder\ut010"
copy nul ".\from folder\ut010\*テストファイル11.txt"
copy nul ".\from folder\ut010\テストファイル12*.txt"
copy nul ".\from folder\ut010\テスト*ファイル13.txt"
copy nul ".\from folder\ut010\テスト***ファイル14.txt"

mkdir ".\from folder\ut011*"
copy nul ".\from folder\ut011*\テストファイル11.txt"
copy nul ".\from folder\ut011*\テストファイル12.txt"

mkdir ".\from folder\*ut012"
copy nul ".\from folder\*ut012\テストファイル11.txt"
copy nul ".\from folder\*ut012\テストファイル12.txt"

mkdir ".\from folder\ut***013"
copy nul ".\from folder\ut***013\テストファイル11.txt"
copy nul ".\from folder\ut***013\テストファイル12.txt"

tree /f "from folder"

call .\find.bat ".\from folder"
