@echo off
title Lanzador de Servidores para Minecraft

:init
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Menu Principal
echo(
echo (1) Iniciar Servidor
echo (2) Licencia
echo (3) Salir
echo(
set /P menu=Elige una de las opciones = 
if /I "%menu%" EQU "1" goto :ram
if /I "%menu%" EQU "2" goto :about
if /I "%menu%" EQU "3" goto :exit
if /I "%menu%" EQU "4" goto :dbmode
goto :init

:ram
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Puedes volver al Menu Principal con "N", o
set /P gbs=Escribe los GB de Ram para Asignar al Servidor = 
if /I "%gbs%" EQU "N" goto :init
set "var="&for /f "delims=0123456789" %%i in ("%gbs%") do set var=%%i
if defined var (goto :ram) else (set ram=%gbs%& goto :server)

:server
cls
echo(
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Iniciando el Server con %ram%GB de Ram Asignada...
echo(
java -Xmx%ram%G -Xms%ram%G -jar server.jar nogui
pause
goto :afterclose

:afterclose
cls
echo(
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Servidor Cerrado
echo(
echo Puedes revisar el registro en la carpeta "Logs"
echo(
pause
goto :init

:dbmode
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo El Modo Debug muestra todos los comandos que son ejecutados por la consola durante cada proceso.
echo Este modo le es util al desarrollador para detectar problemas con el codigo facilmente.
echo No se recomienda activar este modo si realmente no sabes como sobrellevarlo.
echo(
echo (1) Activar Modo Debug
echo (2) Desactivar Modo Debug
echo (3) Volver al Menu Principal
echo(
set /P debug=Elige una de las opciones = 
if /I "%debug%" EQU "1" goto :dbinit
if /I "%debug%" EQU "2" goto :undbinit
if /I "%debug%" EQU "3" goto :init
goto :dbmode

:dbinit
cls
@echo off
cls
echo(
echo Modo Debug Activado
echo(
pause
cls
@echo on
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Menu Principal
echo(
echo (1) Iniciar Servidor
echo (2) Licencia
echo (3) Salir
echo(
set /P menu=Elige una de las opciones = 
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
echo Modo Debug Desactivado
echo(
pause
goto :init

:about
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Se abrira la informacion sobre Licencia mas reciente en el navegador.
echo(
pause
start https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE
goto :init

:exit
cls
echo(
echo --------------------------------------------
echo Gracias por usar esta Herramienta
echo MIT License - Copyright (c) 2023 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit
