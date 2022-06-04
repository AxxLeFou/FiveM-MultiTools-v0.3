@echo off
cls
color 0A
title FiveM MultiTools

:question
echo [1] Delete my FiveM cache
echo [2] Delete DigitalEntitlements and CitizenFX (clean traces)
echo [3] Start FiveM
echo [4] Start RedEngine
echo [5] Start Desudo
echo [6] Close the program
echo.
set /p choix=What do you want to do (1/2/3/4/5/6)? :

if /I "%choix%"=="1" (goto :A)
if /I "%choix%"=="2" (goto :B)
if /I "%choix%"=="3" (goto :C)
if /I "%choix%"=="4" (goto :D)
if /I "%choix%"=="5" (goto :E)
if /I "%choix%"=="6" (goto :F)
if /I "%choix%" NEQ 1 (goto :error)
if /I "%choix%" NEQ 2 (goto :error)
if /I "%choix%" NEQ 3 (goto :error)
if /I "%choix%" NEQ 4 (goto :error)
if /I "%choix%" NEQ 5 (goto :error)
if /I "%choix%" NEQ 6 (goto :error)

goto question

:A
echo.
echo Your cache has been deleted !
goto choixa

:B
echo.
echo DigitalEntitlements and CitizenFX has been deleted !
goto choixb

:C
echo.
echo FiveM started.. !
echo.
echo Loading...
cd "%localappdata%\FiveM\"
start FiveM.exe
goto end

:D
echo.
echo RedEngine started..
echo.
echo Loading...
cd "%~dp0\Red"
start Red.exe
goto end

:E
echo.
echo Desudo started..
echo.
echo Loading...
cd "%~dp0\Desudo"
start Desudo.exe
goto end

:F
echo.
echo Press any key to close
exit >nul

:error
echo.
echo Incorrect number, press the Enter key...
goto choixerror

:choixa
cd "%localappdata%"
cd "FiveM"
cd "FiveM.app"
rmdir /s /q crashes
rmdir /s /q logs
cd "data"
rmdir /s /q server-cache
rmdir /s /q server-cache-priv
rmdir /s /q cache
rmdir /s /q nui-storage

:choixb
cd "%localappdata%"
rmdir /s /q DigitalEntitlements
cd "%AppData%"
rmdir /s /q CitizenFX

:choixerror
goto end

:end
pause>nul
cls
cd "%~dp0" 
goto question






