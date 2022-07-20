@echo off

title Server Launcher for Minecraft

:init
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo You are in the Main Menu
echo(
echo (I) Start Server
echo (D) Debug Mode
echo (C) Copyright
echo (S) Exit
echo(
set /P menu=Choose one of the options = 
if /I "%menu%" EQU "I" goto :ram
if /I "%menu%" EQU "D" goto :dbmode
if /I "%menu%" EQU "C" goto :about
if /I "%menu%" EQU "S" goto :exit
goto :init

:ram
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo You can return to the Main Menu with "N", or
set /P c=Type the GB of Ram to Assign to the Server = 
if /I "%c%" EQU "N" goto :init
if /I "%c%" EQU "1" set ram=1G& goto :server
if /I "%c%" EQU "2" set ram=2G& goto :server
if /I "%c%" EQU "3" set ram=3G& goto :server
if /I "%c%" EQU "4" set ram=4G& goto :server
if /I "%c%" EQU "5" set ram=5G& goto :server
if /I "%c%" EQU "6" set ram=6G& goto :server
if /I "%c%" EQU "7" set ram=7G& goto :server
if /I "%c%" EQU "8" set ram=8G& goto :server
if /I "%c%" EQU "9" set ram=9G& goto :server
if /I "%c%" EQU "10" set ram=10G& goto :server
if /I "%c%" EQU "11" set ram=11G& goto :server
if /I "%c%" EQU "12" set ram=12G& goto :server
if /I "%c%" EQU "13" set ram=13G& goto :server
if /I "%c%" EQU "15" set ram=15G& goto :server
if /I "%c%" EQU "16" set ram=16G& goto :server
if /I "%c%" EQU "17" set ram=17G& goto :server
if /I "%c%" EQU "18" set ram=18G& goto :server
if /I "%c%" EQU "19" set ram=19G& goto :server
if /I "%c%" EQU "20" set ram=20G& goto :server
if /I "%c%" EQU "21" set ram=21G& goto :server
if /I "%c%" EQU "22" set ram=22G& goto :server
if /I "%c%" EQU "23" set ram=23G& goto :server
if /I "%c%" EQU "24" set ram=24G& goto :server
goto :ram

:server
cls
echo(
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Starting the Server with %ram% Ram Assigned...
echo(
java -Xmx%ram% -Xms%ram% -jar server.jar nogui
pause
goto :afterclose

:afterclose
cls
echo(
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Server has been closed
echo(
echo You can check the console log in "Logs" folder
echo(
pause
goto :init

REM Desde esta anotación se encuentra el bloque de código que activa y desactiva el Debug Mode
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:dbmode
cls
echo Server Launcher for Minecraft
echo ------------------------------------
echo(
echo Debug Mode shows all the commands that are executed by the console during each process.
echo This mode is useful for developers to detect problems with the code more easily.
echo It is not recommended to activate this mode if you really do not know how to cope with it.
echo(
echo (N) Enable Debug Mode
echo (M) Disable Debug Mode
echo (V) Back to Main Menu
echo(
set /P debug=Choose one of the options = 
if /I "%debug%" EQU "N" goto :dbinit
if /I "%debug%" EQU "M" goto :undbinit
if /I "%debug%" EQU "V" goto :init
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
echo You are in the Main Menu
echo(
echo (I) Start Server
echo (D) Debug Mode
echo (C) Copyright
echo (S) Exit
echo(
set /P menu=Choose one of the options = 
if /I "%menu%" EQU "I" goto :ram
if /I "%menu%" EQU "D" goto :dbmode
if /I "%menu%" EQU "C" goto :about
if /I "%menu%" EQU "S" goto :exit
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

REM Desde esta anotación se encuentran los bloques de código que contienen la información "acerca de" esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:about
cls
echo Server Installer for Minecraft
echo ------------------------------------
echo(
echo The latest copyright information will open in the browser.
echo(
pause
start https://github.com/NGDPLNk/SSTools4MC#informaci%C3%B3n-sobre-copyright-y-disclaimer
goto :init

REM Desde esta anotación se encuentra el bloque que da pie a la salida de esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:exit
cls
echo(
echo --------------------------------------------
echo Thank you for using this Tool
echo MIT License - Copyright (c) 2022 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit
