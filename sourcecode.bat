@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\nikko\Desktop\mcsstool_v0.01alpha.exe
REM BFCPEICON=C:\Users\nikko\Desktop\mcsstool\icon.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=1
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=0.0.0.1
REM BFCPEVERPRODUCT=Minecraft Server Start Tool
REM BFCPEVERDESC=Minecraft Server Start Tool Alpha
REM BFCPEVERCOMPANY=NGDPL Nk
REM BFCPEVERCOPYRIGHT=NGDPL Nk
REM BFCPEOPTIONEND
@ECHO ON
@echo off

echo Herramienta de Inicio de Servidores de Minecraft
echo Version 0.0.0.1 alpha by NGDPL Nk
echo Disenado para Servidores Vanilla 1.16.5

:choice
set /P c=Te Gustaria Configurar El Servidor Antes de Iniciarlo? [Y/N]
if /I "%c%" EQU "Y" goto :si
if /I "%c%" EQU "N" goto :no
goto :choice


:si

echo Se Abrira el Bloc de Notas para Configurar. Cuando lo cierres y continues, el Servidor se iniciara con la nueva configuracion."
pause
server.properties
pause
echo Iniciando Servidor...
java -Xmx3G -Xms3G -jar Server_1.16.5.jar nogui
pause
exit

:no

echo OK. Iniciando Servidor...
java -Xmx3G -Xms3G -jar Server_1.16.5.jar nogui
pause
exit