@echo off

mkdir ".\from folder"

mkdir ".\from folder\テストフォルダ1"
copy nul ".\from folder\テストフォルダ1\テストファイル11.txt"
copy nul ".\from folder\テストフォルダ1\テストファイル12.txt"

mkdir ".\from folder\テストフォルダ2"
copy nul ".\from folder\テストフォルダ2\テストファイル21.txt"
copy nul ".\from folder\テストフォルダ2\テストファイル22.txt"

mkdir ".\from folder\テスト フォルダ3"
copy nul ".\from folder\テスト フォルダ3\テスト ファイル31.txt"
copy nul ".\from folder\テスト フォルダ3\テスト ファイル32.txt"

mkdir ".\from folder\テストフォルダ1\TEST FOLDER11"
copy nul ".\from folder\テストフォルダ1\TEST FOLDER11\テスト ファイル111.txt"
copy nul ".\from folder\テストフォルダ1\TEST FOLDER11\テスト ファイル112.txt"
