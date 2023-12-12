@echo off
title Server Launcher for Minecraft

:init
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Main Menu
echo(
echo (1) Start Server
echo (2) License
echo (3) Exit
echo(
set /P menu=Select one of the options = 
if /I "%menu%" EQU "1" goto :ram
if /I "%menu%" EQU "2" goto :about
if /I "%menu%" EQU "3" goto :exit
if /I "%menu%" EQU "4" goto :dbmode
goto :init

:ram
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo You can return to Main Menu with "N", or
set /P gbs=Type the GB of Ram to Assign to the Server = 
if /I "%gbs%" EQU "N" goto :init
set "var="&for /f "delims=0123456789" %%i in ("%gbs%") do set var=%%i
if defined var (goto :ram) else (set ram=%gbs%& goto :server)

:server
cls
echo(
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Starting the Server with %ram%GB of Ram Assigned...
echo(
java -Xmx%ram%G -Xms%ram%G -jar server.jar nogui
pause
goto :afterclose

:afterclose
cls
echo(
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Server closed
echo(
echo You can check the console log in "Logs" folder
echo(
pause
goto :init

:dbmode
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Debug Mode shows all the commands that are executed by the console during each process.
echo This mode is useful for developer to detect problems with the code more easily.
echo It is not recommended to activate this mode if you really do not know how to cope with it.
echo(
echo (1) Enable Debug Mode
echo (2) Disable Debug Mode
echo (3) Back to Main Menu
echo(
set /P debug=Select one of the options = 
if /I "%debug%" EQU "1" goto :dbinit
if /I "%debug%" EQU "2" goto :undbinit
if /I "%debug%" EQU "3" goto :init
goto :dbmode

:dbinit
cls
@echo off
cls
echo(
echo Debug Mode Enabled
echo(
pause
cls
@echo on
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Main Menu
echo(
echo (1) Start Server
echo (2) License
echo (3) Exit
echo(
set /P menu=Select one of the options = 
if /I "%menu%" EQU "1" goto :ram
if /I "%menu%" EQU "2" goto :about
if /I "%menu%" EQU "3" goto :exit
if /I "%menu%" EQU "4" goto :dbmode
goto :init

:undbinit
cls
@echo off
cls
echo(
echo Debug Mode Disabled
echo(
pause
goto :init

:about
cls
echo Server Installer for Minecraft
echo ------------------------------------
echo(
echo The latest License information will open in the browser.
echo(
pause
start https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE
goto :init

:exit
cls
echo(
echo --------------------------------------------
echo Thank you for using this Tool
echo MIT License - Copyright (c) 2023 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit
