@echo off
title Console | BSBSYSTEM

:menu
cls
echo Custom Console Menu
echo 1. Open Registry Editor
echo 2. BSBSYSTEM
echo 3. Exit

choice /c 123 /n /m "Choose an option:"

if errorlevel 3 goto :exit
if errorlevel 2 goto :bsbsystem
if errorlevel 1 goto :openregistry
goto :menu

:openregistry
start regedit
goto :menu

:bsbsystem
echo Performing BSBSYSTEM action...
rem Create a folder named "bsbsystem"
mkdir bsbsystem

rem Create a .reg file
echo Windows Registry Editor Version 5.00 > bsbsystem\bsbsystem.reg
echo. >> bsbsystem\bsbsystem.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\BSBSYSTEM] >> bsbsystem\bsbsystem.reg
echo "bsbsystem"=- >> bsbsystem\bsbsystem.reg

echo BSBSYSTEM action completed.
pause
goto :menu

:exit
