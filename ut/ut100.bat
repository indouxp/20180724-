@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: �g���q�G���[
set LOG=%~dpn0.log

mkdir ".\from folder\ut100"
copy nul ".\from folder\ut100\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100\�e�X�g�t�@�C��16.xamlx"

mkdir ".\from folder\ut100.ashx"
copy nul ".\from folder\ut100.ashx\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100.ashx\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100.ashx\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100.ashx\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100.ashx\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100.ashx\�e�X�g�t�@�C��16.xamlx"

mkdir ".\from folder\ut100.asmx"
copy nul ".\from folder\ut100.asmx\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100.asmx\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100.asmx\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100.asmx\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100.asmx\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100.asmx\�e�X�g�t�@�C��16.xamlx"

mkdir ".\from folder\ut100.json"
copy nul ".\from folder\ut100.json\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100.json\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100.json\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100.json\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100.json\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100.json\�e�X�g�t�@�C��16.xamlx"

mkdir ".\from folder\ut100.soap"
copy nul ".\from folder\ut100.soap\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100.soap\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100.soap\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100.soap\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100.soap\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100.soap\�e�X�g�t�@�C��16.xamlx"

mkdir ".\from folder\ut100.svc"
copy nul ".\from folder\ut100.svc\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100.svc\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100.svc\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100.svc\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100.svc\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100.svc\�e�X�g�t�@�C��16.xamlx"

mkdir ".\from folder\ut100.xamlx"
copy nul ".\from folder\ut100.xamlx\�e�X�g�t�@�C��11.ashx"
copy nul ".\from folder\ut100.xamlx\�e�X�g�t�@�C��12.asmx"
copy nul ".\from folder\ut100.xamlx\�e�X�g�t�@�C��13.json"
copy nul ".\from folder\ut100.xamlx\�e�X�g�t�@�C��14.soap"
copy nul ".\from folder\ut100.xamlx\�e�X�g�t�@�C��15.svc"
copy nul ".\from folder\ut100.xamlx\�e�X�g�t�@�C��16.xamlx"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
