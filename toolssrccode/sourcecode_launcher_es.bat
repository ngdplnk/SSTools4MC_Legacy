@echo off

echo Herramienta de Inicio de Servidores de Minecraft
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo Disenado para Servidores Vanilla 1.16.5
echo -------------------------------------------------

:eleccion
set /P c=Es la primera vez que abres Servidor? [S/N]
if /I "%c%" EQU "S" goto :si
if /I "%c%" EQU "N" goto :eleccion2.2
goto :eleccion

:si
echo ---------------------------------------------
echo Se descargaran los archivos necesarios desde Internet
echo Tambien se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo Espera un momento...
cd C:\
mkdir MCSSTool
cd C:\MCSSTool
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar >C:\MCSSTool\NeededFiles\Server_1.16.5.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTool\NeededFiles\* %USERPROFILE%\Desktop\Servidor\
copy %~dp0\eula.txt %USERPROFILE%\Desktop\Servidor\
copy %~dp0\mcsstl.exe %USERPROFILE%\Desktop\Servidor\
copy %~dp0\server.properties %USERPROFILE%\Desktop\Servidor\
cd %USERPROFILE%\Desktop\Servidor\
ren mcsstl.exe "Abrir Server.exe"

:eleccion2
echo ---------------------------------------------------------------
set /P c=Te gustaria configurar el Servidor antes de Iniciarlo? [S/N]
if /I "%c%" EQU "S" goto :si2
if /I "%c%" EQU "N" goto :no2
goto :eleccion2

:si2
echo -------------------------------------------
echo Se abrira el Bloc de Notas para Configurar
echo Cuando lo cierres y continues, el Servidor se iniciara con la nueva configuracion
cd %USERPROFILE%\Desktop\Servidor\
pause
server.properties
pause
echo Iniciando Servidor...
goto :inicio

:no2
echo --------------------------
echo OK. Iniciando Servidor...
goto :inicio

:eleccion2.2
echo ---------------------------------------------------------------
set /P c=Te gustaria configurar el Servidor antes de Iniciarlo? [S/N]
if /I "%c%" EQU "S" goto :si2.2
if /I "%c%" EQU "N" goto :no2.2
goto :eleccion2.2

:si2.2
echo -------------------------------------------
echo Se abrira el Bloc de Notas para Configurar
echo Cuando lo cierres y continues, el Servidor se iniciara con la nueva configuracion
pause
server.properties
pause
echo Iniciando Servidor...
goto :inicio

:inicio
java -Xmx1024M -Xms1024M -jar Server_1.16.5.jar nogui
pause
exit