@echo off
setlocal enabledelayedexpansion
title IP网站连通性测试

set port=5000
echo 正在测试192.168.4.1到192.168.4.250的网站连通性...
echo ==========================================
rem (1,1,250)=(起始值,步长,结束值)
for /l %%i in (148,1,151) do (
    set ip=192.168.4.%%i
    set url=http://!ip!:%port%/
    
    echo 测试 !url!...
    
    rem 使用curl测试HTTP响应
    curl -s -o nul -w "%%{http_code}" --connect-timeout 3 "!url!" > response.txt 2>nul
    set /p http_code=<response.txt
    
    if "!http_code!"=="200" (
        echo      ----------------------------------------------
        echo      连通 !url! - HTTP 200 OK
        echo      ----------------------------------------------
    ) else if not "!http_code!"=="" (
        echo      空值 !url! - HTTP !http_code!
    ) else (
        echo      错误 !url! - 无法连接
    )
)

del response.txt >nul 2>&1
echo ==========================================
echo 测试完成！
pause