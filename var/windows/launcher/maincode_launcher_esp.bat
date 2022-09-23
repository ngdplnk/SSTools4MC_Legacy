@echo off

title Lanzador de Servidores para Minecraft

:init
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Iniciar el Servidor
echo (D) Modo Debug
echo (C) Licencia
echo (S) Salir
echo(
set /P menu=Elige una de las opciones = 
if /I "%menu%" EQU "I" goto :ram
if /I "%menu%" EQU "D" goto :dbmode
if /I "%menu%" EQU "C" goto :about
if /I "%menu%" EQU "S" goto :exit
goto :init

:ram
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Puedes volver al Menu Principal con "N", o
set /P c=Escribe los GB de Ram para Asignar al Servidor = 
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
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Iniciando el Server con %ram% de Ram Asignada...
echo(
java -Xmx%ram% -Xms%ram% -jar server.jar nogui
pause
goto :afterclose

:afterclose
cls
echo(
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Se ha cerrado el Servidor
echo(
echo Puedes revisar el registro en la carpeta "Logs"
echo(
pause
goto :init

REM Desde esta anotación se encuentra el bloque de código que activa y desactiva el modo debug
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:dbmode
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo El Modo Debug muestra todos los comandos que son ejecutados por la consola durante cada proceso.
echo Este modo le es util a los desarrolladores para detectar problemas con el codigo de manera mas facil.
echo No se recomienda activar este modo si realmente no sabes como sobrellevarlo.
echo(
echo (N) Activar Modo Debug
echo (M) Desactivar Modo Debug
echo (V) Volver al Menu Principal
echo(
set /P debug=Elige una de las opciones = 
if /I "%debug%" EQU "N" goto :dbinit
if /I "%debug%" EQU "M" goto :undbinit
if /I "%debug%" EQU "V" goto :init
goto :dbmode

:dbinit
cls
@echo off
cls
echo(
echo El Modo Debug esta Activado
echo(
pause
cls
@echo on
cls
echo Lanzador de Servidores para Minecraft
echo ------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Iniciar el Servidor
echo (D) Modo Debug
echo (C) Licencia
echo (S) Salir
echo(
set /P menu=Elige una de las opciones = 
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
echo El Modo Debug esta Desactivado
echo(
pause
goto :init

REM Desde esta anotación se encuentran los bloques de código que contienen la información "acerca de" esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

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

REM Desde esta anotación se encuentra el bloque que da pie a la salida de esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:exit
cls
echo(
echo --------------------------------------------
echo Gracias por usar esta Herramienta
echo MIT License - Copyright (c) 2022 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit
