@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
title 创建中文BAT

(
echo @echo off
echo chcp 65001 ^>nul
echo setlocal enabledelayedexpansion
echo title 中文BAT示例
echo echo.
echo echo 中文示例
echo echo.
echo echo 任意键退出
echo pause ^>nul
) > 中文BAT示例.bat

echo.
echo 创建【中文BAT】完成 ！
echo.
echo 任意键退出
pause>nul