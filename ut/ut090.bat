@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

rd /s /q ".\from folder"
icacls "to folder\ut111" /remove:d GLOBAL\20166038 2>nul
rd /s /q ".\to folder"

call .\mak-base.bat
if %errorlevel% neq 0 (echo ERROR & exit /b 1)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: �ϊ��ɂ��A�o�b�e�B���O��������
set LOG=%~dpn0.log

mkdir ".\from folder\ut090"
copy nul ".\from folder\ut090\~�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut090\�e�X�g�t�@�C��12~.txt"

mkdir ".\from folder\ut090~"
copy nul ".\from folder\ut090~\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut090~\�e�X�g�t�@�C��12.txt"

mkdir ".\from folder\~ut090"
copy nul ".\from folder\~ut090\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\~ut090\�e�X�g�t�@�C��12.txt"

mkdir ".\from folder\ut~~~090"
copy nul ".\from folder\ut~~~090\�e�X�g�t�@�C��11.txt"
copy nul ".\from folder\ut~~~090\�e�X�g�t�@�C��12.txt"

tree /f "from folder" > %LOG%

call .\find.bat ".\from folder"
