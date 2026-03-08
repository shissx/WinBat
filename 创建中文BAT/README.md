# 创建中文BAT
Windows新建的BAT，容易出现不识别中文的情况，修改编码和设置即可。
## 执行
创建中文BAT.bat
```
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
```
## 生成
中文BAT示例.bat
```
@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
title 中文BAT示例
echo.
echo 中文示例
echo.
echo 任意键退出
pause >nul
```
