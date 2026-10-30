@echo off
chcp 936 >nul
title Mochi 本地网站 - 关闭本窗口即停止
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 goto nopython

echo ==========================================
echo   Mochi 字卡 - 本地网站已启动
echo ==========================================
echo.
echo   网址: http://localhost:8899/index.html
echo.
echo   浏览器会自动打开，没打开就手动复制上面网址
echo   用完后，关闭这个黑色窗口即可
echo.
echo ==========================================
echo.

start "" "http://localhost:8899/index.html"
python -m http.server 8899
goto end

:nopython
echo.
echo [提示] 没有找到 Python，无法启动本地服务器
echo.
echo 你可以：
echo   1) 直接双击 index.html 打开（功能基本可用）
echo   2) 安装 Python 后再用本文件
echo      下载: https://www.python.org/downloads/
echo.
pause

:end
