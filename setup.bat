@echo off
chcp 65001 >nul
@echo 打包程序即将开始...
@echo 请按回车键开始打包...
pause >nul
pyinstaller --onefile main.py --icon=favicon.ico
@echo 打包程序完成
@echo 请按回车键退出...
pause >nul
