@echo off
set FROMTOP="%1"
set DIRLIST=%~dpn0.d.lst
set FILELIST=%~dpn0.f.lst

dir /ad /b /s  "%FROMTOP%" > %DIRLIST%
dir /a-d /b /s "%FROMTOP%" > %FILELIST%
