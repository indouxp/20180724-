@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR } exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: �擪�Ƀs���I�h
set LOG=%~dpn0.log

mkdir ".\from folder\ut080"
copy nul ".\from folder\ut080\.�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut080\..�e�X�g�t�@�C��12.txt"
copy nul ".\from folder\ut080\...�e�X�g�t�@�C��13.txt"
copy nul ".\from folder\ut080\....�e�X�g�t�@�C��14.txt"

mkdir ".\from folder\.ut081"
copy nul ".\from folder\.ut081\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\.ut081\�e�X�g�t�@�C��12.txt"

mkdir ".\from folder\..ut082"
copy nul ".\from folder\..ut082\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\..ut082\�e�X�g�t�@�C��12.txt"

mkdir ".\from folder\...ut083"
copy nul ".\from folder\...ut083\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\...ut083\�e�X�g�t�@�C��12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
