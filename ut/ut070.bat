@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR } exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 連続ピリオド
set LOG=%~dpn0.log

mkdir ".\from folder\ut070"
copy nul ".\from folder\ut070\..テストファイル11.txt"
copy nul ".\from folder\ut070\テストファイル12...txt"
copy nul ".\from folder\ut070\テスト..ファイル13.txt"
copy nul ".\from folder\ut070\テスト...ファイル14.txt"

: ut071..はut071として作成される
mkdir ".\from folder\ut071.."
copy nul ".\from folder\ut071..\テストファイル11.txt"
copy nul ".\from folder\ut071..\テストファイル12.txt"

mkdir ".\from folder\..ut072"
copy nul ".\from folder\..ut072\テストファイル11.txt"
copy nul ".\from folder\..ut072\テストファイル12.txt"

mkdir ".\from folder\ut...013"
copy nul ".\from folder\ut...013\テストファイル11.txt"
copy nul ".\from folder\ut...013\テストファイル12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
