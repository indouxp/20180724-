@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 拡張子エラー
set LOG=%~dpn0.log

mkdir ".\from folder\ut100"
copy nul ".\from folder\ut100\テストファイル11.ashx"
copy nul ".\from folder\ut100\テストファイル12.asmx"
copy nul ".\from folder\ut100\テストファイル13.json"
copy nul ".\from folder\ut100\テストファイル14.soap"
copy nul ".\from folder\ut100\テストファイル15.svc"
copy nul ".\from folder\ut100\テストファイル16.xamlx"

mkdir ".\from folder\ut100.ashx"
copy nul ".\from folder\ut100.ashx\テストファイル11.ashx"
copy nul ".\from folder\ut100.ashx\テストファイル12.asmx"
copy nul ".\from folder\ut100.ashx\テストファイル13.json"
copy nul ".\from folder\ut100.ashx\テストファイル14.soap"
copy nul ".\from folder\ut100.ashx\テストファイル15.svc"
copy nul ".\from folder\ut100.ashx\テストファイル16.xamlx"

mkdir ".\from folder\ut100.asmx"
copy nul ".\from folder\ut100.asmx\テストファイル11.ashx"
copy nul ".\from folder\ut100.asmx\テストファイル12.asmx"
copy nul ".\from folder\ut100.asmx\テストファイル13.json"
copy nul ".\from folder\ut100.asmx\テストファイル14.soap"
copy nul ".\from folder\ut100.asmx\テストファイル15.svc"
copy nul ".\from folder\ut100.asmx\テストファイル16.xamlx"

mkdir ".\from folder\ut100.json"
copy nul ".\from folder\ut100.json\テストファイル11.ashx"
copy nul ".\from folder\ut100.json\テストファイル12.asmx"
copy nul ".\from folder\ut100.json\テストファイル13.json"
copy nul ".\from folder\ut100.json\テストファイル14.soap"
copy nul ".\from folder\ut100.json\テストファイル15.svc"
copy nul ".\from folder\ut100.json\テストファイル16.xamlx"

mkdir ".\from folder\ut100.soap"
copy nul ".\from folder\ut100.soap\テストファイル11.ashx"
copy nul ".\from folder\ut100.soap\テストファイル12.asmx"
copy nul ".\from folder\ut100.soap\テストファイル13.json"
copy nul ".\from folder\ut100.soap\テストファイル14.soap"
copy nul ".\from folder\ut100.soap\テストファイル15.svc"
copy nul ".\from folder\ut100.soap\テストファイル16.xamlx"

mkdir ".\from folder\ut100.svc"
copy nul ".\from folder\ut100.svc\テストファイル11.ashx"
copy nul ".\from folder\ut100.svc\テストファイル12.asmx"
copy nul ".\from folder\ut100.svc\テストファイル13.json"
copy nul ".\from folder\ut100.svc\テストファイル14.soap"
copy nul ".\from folder\ut100.svc\テストファイル15.svc"
copy nul ".\from folder\ut100.svc\テストファイル16.xamlx"

mkdir ".\from folder\ut100.xamlx"
copy nul ".\from folder\ut100.xamlx\テストファイル11.ashx"
copy nul ".\from folder\ut100.xamlx\テストファイル12.asmx"
copy nul ".\from folder\ut100.xamlx\テストファイル13.json"
copy nul ".\from folder\ut100.xamlx\テストファイル14.soap"
copy nul ".\from folder\ut100.xamlx\テストファイル15.svc"
copy nul ".\from folder\ut100.xamlx\テストファイル16.xamlx"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
