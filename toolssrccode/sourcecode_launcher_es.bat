@echo off

echo Herramienta de Inicio de Servidores de Minecraft
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo Disenado para Iniciar Servidores Vanilla
echo -------------------------------------------------
echo(
echo Te damos la Bienvenida
echo Con esta herramienta podras Iniciar tu Servidor de Minecraft
echo Recuerda que esta es una Alpha, por lo que puede que falten funciones o estas esten incompletas
echo(

:version
echo(
set /P c=Escribe la Version del Servidor que deseas iniciar= 
if /I "%c%" EQU "1.2.1" goto :1.2.1
if /I "%c%" EQU "1.2.2" goto :1.2.2
if /I "%c%" EQU "1.2.3" goto :1.2.3
if /I "%c%" EQU "1.2.4" goto :1.2.4
if /I "%c%" EQU "1.2.5" goto :1.2.5
if /I "%c%" EQU "1.3.1" goto :1.3.1
if /I "%c%" EQU "1.3.2" goto :1.3.2
if /I "%c%" EQU "1.4.2" goto :1.4.2
if /I "%c%" EQU "1.4.4" goto :1.4.4
if /I "%c%" EQU "1.4.5" goto :1.4.5
if /I "%c%" EQU "1.4.6" goto :1.4.6
if /I "%c%" EQU "1.4.7" goto :1.4.7
if /I "%c%" EQU "1.5.1" goto :1.5.1
if /I "%c%" EQU "1.5.2" goto :1.5.2
if /I "%c%" EQU "1.6.1" goto :1.6.1
if /I "%c%" EQU "1.6.2" goto :1.6.2
if /I "%c%" EQU "1.6.4" goto :1.6.4
if /I "%c%" EQU "1.7.2" goto :1.7.2
if /I "%c%" EQU "1.7.3" goto :1.7.3
if /I "%c%" EQU "1.7.4" goto :1.7.4
if /I "%c%" EQU "1.7.5" goto :1.7.5
if /I "%c%" EQU "1.7.6" goto :1.7.6
if /I "%c%" EQU "1.7.7" goto :1.7.7
if /I "%c%" EQU "1.7.8" goto :1.7.8
if /I "%c%" EQU "1.7.9" goto :1.7.9
if /I "%c%" EQU "1.7.10" goto :1.7.10
if /I "%c%" EQU "1.8" goto :1.8
if /I "%c%" EQU "1.8.1" goto :1.8.1
if /I "%c%" EQU "1.8.2" goto :1.8.2
if /I "%c%" EQU "1.8.3" goto :1.8.3
if /I "%c%" EQU "1.8.4" goto :1.8.4
if /I "%c%" EQU "1.8.5" goto :1.8.5
if /I "%c%" EQU "1.8.6" goto :1.8.6
if /I "%c%" EQU "1.8.7" goto :1.8.7
if /I "%c%" EQU "1.8.8" goto :1.8.8
if /I "%c%" EQU "1.8.9" goto :1.8.9
if /I "%c%" EQU "1.9" goto :1.9
if /I "%c%" EQU "1.9.1" goto :1.9.1
if /I "%c%" EQU "1.9.2" goto :1.9.2
if /I "%c%" EQU "1.9.3" goto :1.9.3
if /I "%c%" EQU "1.9.4" goto :1.9.4
if /I "%c%" EQU "1.10" goto :1.10
if /I "%c%" EQU "1.10.1" goto :1.10.1
if /I "%c%" EQU "1.10.2" goto :1.10.2
if /I "%c%" EQU "1.11" goto :1.11
if /I "%c%" EQU "1.11.1" goto :1.11.1
if /I "%c%" EQU "1.11.2" goto :1.11.2
if /I "%c%" EQU "1.12" goto :1.12
if /I "%c%" EQU "1.12.1" goto :1.12.1
if /I "%c%" EQU "1.12.2" goto :1.12.2
if /I "%c%" EQU "1.13" goto :1.13
if /I "%c%" EQU "1.13.1" goto :1.13.1
if /I "%c%" EQU "1.13.2" goto :1.13.2
if /I "%c%" EQU "1.14" goto :1.14
if /I "%c%" EQU "1.14.1" goto :1.14.1
if /I "%c%" EQU "1.14.2" goto :1.14.2
if /I "%c%" EQU "1.14.3" goto :1.14.3
if /I "%c%" EQU "1.14.4" goto :1.14.4
if /I "%c%" EQU "1.15" goto :1.15
if /I "%c%" EQU "1.15.1" goto :1.15.1
if /I "%c%" EQU "1.15.2" goto :1.15.2
if /I "%c%" EQU "1.16" goto :1.16
if /I "%c%" EQU "1.16.1" goto :1.16.1
if /I "%c%" EQU "1.16.2" goto :1.16.2
if /I "%c%" EQU "1.16.3" goto :1.16.3
if /I "%c%" EQU "1.16.4" goto :1.16.4
if /I "%c%" EQU "1.16.5" goto :1.16.5
goto :versionnull

:versionnull
echo(
echo Esa Version no esta disponible o es incorrecta
set /P c=Vuelve a escribir la Version del Servidor que deseas iniciar= 
if /I "%c%" EQU "1.2.1" goto :1.2.1
if /I "%c%" EQU "1.2.2" goto :1.2.2
if /I "%c%" EQU "1.2.3" goto :1.2.3
if /I "%c%" EQU "1.2.4" goto :1.2.4
if /I "%c%" EQU "1.2.5" goto :1.2.5
if /I "%c%" EQU "1.3.1" goto :1.3.1
if /I "%c%" EQU "1.3.2" goto :1.3.2
if /I "%c%" EQU "1.4.2" goto :1.4.2
if /I "%c%" EQU "1.4.4" goto :1.4.4
if /I "%c%" EQU "1.4.5" goto :1.4.5
if /I "%c%" EQU "1.4.6" goto :1.4.6
if /I "%c%" EQU "1.4.7" goto :1.4.7
if /I "%c%" EQU "1.5.1" goto :1.5.1
if /I "%c%" EQU "1.5.2" goto :1.5.2
if /I "%c%" EQU "1.6.1" goto :1.6.1
if /I "%c%" EQU "1.6.2" goto :1.6.2
if /I "%c%" EQU "1.6.4" goto :1.6.4
if /I "%c%" EQU "1.7.2" goto :1.7.2
if /I "%c%" EQU "1.7.3" goto :1.7.3
if /I "%c%" EQU "1.7.4" goto :1.7.4
if /I "%c%" EQU "1.7.5" goto :1.7.5
if /I "%c%" EQU "1.7.6" goto :1.7.6
if /I "%c%" EQU "1.7.7" goto :1.7.7
if /I "%c%" EQU "1.7.8" goto :1.7.8
if /I "%c%" EQU "1.7.9" goto :1.7.9
if /I "%c%" EQU "1.7.10" goto :1.7.10
if /I "%c%" EQU "1.8" goto :1.8
if /I "%c%" EQU "1.8.1" goto :1.8.1
if /I "%c%" EQU "1.8.2" goto :1.8.2
if /I "%c%" EQU "1.8.3" goto :1.8.3
if /I "%c%" EQU "1.8.4" goto :1.8.4
if /I "%c%" EQU "1.8.5" goto :1.8.5
if /I "%c%" EQU "1.8.6" goto :1.8.6
if /I "%c%" EQU "1.8.7" goto :1.8.7
if /I "%c%" EQU "1.8.8" goto :1.8.8
if /I "%c%" EQU "1.8.9" goto :1.8.9
if /I "%c%" EQU "1.9" goto :1.9
if /I "%c%" EQU "1.9.1" goto :1.9.1
if /I "%c%" EQU "1.9.2" goto :1.9.2
if /I "%c%" EQU "1.9.3" goto :1.9.3
if /I "%c%" EQU "1.9.4" goto :1.9.4
if /I "%c%" EQU "1.10" goto :1.10
if /I "%c%" EQU "1.10.1" goto :1.10.1
if /I "%c%" EQU "1.10.2" goto :1.10.2
if /I "%c%" EQU "1.11" goto :1.11
if /I "%c%" EQU "1.11.1" goto :1.11.1
if /I "%c%" EQU "1.11.2" goto :1.11.2
if /I "%c%" EQU "1.12" goto :1.12
if /I "%c%" EQU "1.12.1" goto :1.12.1
if /I "%c%" EQU "1.12.2" goto :1.12.2
if /I "%c%" EQU "1.13" goto :1.13
if /I "%c%" EQU "1.13.1" goto :1.13.1
if /I "%c%" EQU "1.13.2" goto :1.13.2
if /I "%c%" EQU "1.14" goto :1.14
if /I "%c%" EQU "1.14.1" goto :1.14.1
if /I "%c%" EQU "1.14.2" goto :1.14.2
if /I "%c%" EQU "1.14.3" goto :1.14.3
if /I "%c%" EQU "1.14.4" goto :1.14.4
if /I "%c%" EQU "1.15" goto :1.15
if /I "%c%" EQU "1.15.1" goto :1.15.1
if /I "%c%" EQU "1.15.2" goto :1.15.2
if /I "%c%" EQU "1.16" goto :1.16
if /I "%c%" EQU "1.16.1" goto :1.16.1
if /I "%c%" EQU "1.16.2" goto :1.16.2
if /I "%c%" EQU "1.16.3" goto :1.16.3
if /I "%c%" EQU "1.16.4" goto :1.16.4
if /I "%c%" EQU "1.16.5" goto :1.16.5
goto :versionnull
