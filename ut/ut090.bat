@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 変換により、バッティングが生じる
set LOG=%~dpn0.log

mkdir ".\from folder\ut090"
copy nul ".\from folder\ut090\~テストファイル11.txt"
copy nul ".\from folder\ut090\テストファイル12~.txt"

mkdir ".\from folder\ut090~"
copy nul ".\from folder\ut090~\テストファイル11.txt"
copy nul ".\from folder\ut090~\テストファイル12.txt"

mkdir ".\from folder\~ut090"
copy nul ".\from folder\~ut090\テストファイル11.txt"
copy nul ".\from folder\~ut090\テストファイル12.txt"

mkdir ".\from folder\ut~~~090"
copy nul ".\from folder\ut~~~090\テストファイル11.txt"
copy nul ".\from folder\ut~~~090\テストファイル12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
