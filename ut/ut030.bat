@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: �p�[�Z���g
set LOG=%~dpn0.log

mkdir ".\from folder\ut030"
copy nul ".\from folder\ut030\%%�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut030\�e�X�g�t�@�C��12%%.txt"
copy nul ".\from folder\ut030\�e�X�g%%�t�@�C��13.txt"
copy nul ".\from folder\ut030\�e�X�g%%%%%%�t�@�C��14.txt"

mkdir ".\from folder\ut031%%"
copy nul ".\from folder\ut031%%\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut031%%\�e�X�g�t�@�C��12.txt"

mkdir ".\from folder\%%ut032"
copy nul ".\from folder\%%ut032\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\%%ut032\�e�X�g�t�@�C��12.txt"

mkdir ".\from folder\ut%%%%%%013"
copy nul ".\from folder\ut%%%%%%013\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut%%%%%%013\�e�X�g�t�@�C��12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
