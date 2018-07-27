@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR } exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 先頭にピリオド
set LOG=%~dpn0.log

mkdir ".\from folder\ut080"
copy nul ".\from folder\ut080\.テストファイル11.txt"
copy nul ".\from folder\ut080\..テストファイル12.txt"
copy nul ".\from folder\ut080\...テストファイル13.txt"
copy nul ".\from folder\ut080\....テストファイル14.txt"

mkdir ".\from folder\.ut081"
copy nul ".\from folder\.ut081\テストファイル11.txt"
copy nul ".\from folder\.ut081\テストファイル12.txt"

mkdir ".\from folder\..ut082"
copy nul ".\from folder\..ut082\テストファイル11.txt"
copy nul ".\from folder\..ut082\テストファイル12.txt"

mkdir ".\from folder\...ut083"
copy nul ".\from folder\...ut083\テストファイル11.txt"
copy nul ".\from folder\...ut083\テストファイル12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
