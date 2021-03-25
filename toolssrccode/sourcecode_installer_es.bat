@echo off

echo Herramienta de Creacion de Servidores de Minecraft
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo Disenado para Crear Servidores Vanilla
echo -------------------------------------------------
echo(
echo Te damos la Bienvenida
echo Con esta herramienta podras Configurar desde cero tu propio Servidor de Minecraft
echo Al finalizar el proceso, DEBES CAMBIAR EL NOMBRE DE LA CARPETA DE TU SERVIDOR,
echo O bien, cambiar su ubicacion (De esta manera no hara conflicto si deseas crear otro Servidor en algun momento)
echo(
echo Estas usando una Alpha, por lo que puede que falten funciones o estas esten incompletas
echo ---------------------------------------------

:version
echo(
echo Vamos a configurar tu Servidor de Minecraft
set /P c=Para comenzar, escribe la Version de Minecraft para la que estara dedicado tu nuevo Servidor= 
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
set /P c=Vuelve a escribir la Version de Minecraft para la que estara dedicado tu nuevo Servidor= 
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

:1.2.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://assets.minecraft.net/1_2/minecraft_server.jar >C:\MCSSTools\NeededFiles\Server_1.2.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.2.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.2.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://assets.minecraft.net/1_2/minecraft_server.jar >C:\MCSSTools\NeededFiles\Server_1.2.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.2.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.2.3
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://assets.minecraft.net/1_2/minecraft_server.jar >C:\MCSSTools\NeededFiles\Server_1.2.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.2.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.2.4
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://assets.minecraft.net/1_2_5/minecraft_server.jar >C:\MCSSTools\NeededFiles\Server_1.2.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.2.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.2.5
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar >C:\MCSSTools\NeededFiles\Server_1.2.5.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.2.5.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.3.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/82563ce498bfc1fc8a2cb5bf236f7da86a390646/server.jar >C:\MCSSTools\NeededFiles\Server_1.3.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.3.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.3.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar >C:\MCSSTools\NeededFiles\Server_1.3.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.3.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.4.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/5be700523a729bb78ef99206fb480a63dcd09825/server.jar >C:\MCSSTools\NeededFiles\Server_1.4.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.4.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.4.3
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/9be68adf6e80721975df12f2445fa24617328d18/server.jar >C:\MCSSTools\NeededFiles\Server_1.4.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.4.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.4.4
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/4215dcadb706508bf9d6d64209a0080b9cee9e71/server.jar >C:\MCSSTools\NeededFiles\Server_1.4.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.4.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.4.5
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/c12fd88a8233d2c517dbc8196ba2ae855f4d36ea/server.jar >C:\MCSSTools\NeededFiles\Server_1.4.5.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.4.5.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.4.6
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a0aeb5709af5f2c3058c1cf0dc6b110a7a61278c/server.jar >C:\MCSSTools\NeededFiles\Server_1.4.6.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.4.6.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.4.7
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar >C:\MCSSTools\NeededFiles\Server_1.4.7.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.4.7.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.5.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/d07c71ee2767dabb79fb32dad8162e1b854d5324/server.jar >C:\MCSSTools\NeededFiles\Server_1.5.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.5.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.5.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar >C:\MCSSTools\NeededFiles\Server_1.5.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.5.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.6.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/0252918a5f9d47e3c6eb1dfec02134d1374a89b4/server.jar >C:\MCSSTools\NeededFiles\Server_1.6.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.6.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.6.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/01b6ea555c6978e6713e2a2dfd7fe19b1449ca54/server.jar >C:\MCSSTools\NeededFiles\Server_1.6.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.6.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.6.4
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar >C:\MCSSTools\NeededFiles\Server_1.6.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.6.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.3
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/707857a7bc7bf54fe60d557cca71004c34aa07bb/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.4
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/61220311cef80aecc4cd8afecd5f18ca6b9461ff/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.5
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/e1d557b2e31ea881404e41b05ec15c810415e060/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.5.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.5.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.6
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/41ea7757d4d7f74b95fc1ac20f919a8e521e910c/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.6.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.6.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.7
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a6ffc1624da980986c6cc12a1ddc79ab1b025c62/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.7.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.7.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.8
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/c69ebfb84c2577661770371c4accdd5f87b8b21d/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.8.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.8.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.9
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.9.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.9.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.7.10
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar >C:\MCSSTools\NeededFiles\Server_1.7.10.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.7.10.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/68bfb524888f7c0ab939025e07e5de08843dac0f/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a37bdd5210137354ed1bfe3dac0a5b77fe08fe2e/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.3
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/163ba351cb86f6390450bb2a67fafeb92b6c0f2f/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.4
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/dd4b5eba1c79500390e0b0f45162fa70d38f8a3d/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.5
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/ea6dd23658b167dbc0877015d1072cac21ab6eee/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.5.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.5.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.6
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/2bd44b53198f143fb278f8bec3a505dad0beacd2/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.6.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.6.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.7
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/35c59e16d1f3b751cd20b76b9b8a19045de363a9/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.7.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.7.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.8
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.8.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.8.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.8.9
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar >C:\MCSSTools\NeededFiles\Server_1.8.9.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.8.9.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.9
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/b4d449cf2918e0f3bd8aa18954b916a4d1880f0d/server.jar >C:\MCSSTools\NeededFiles\Server_1.9.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.9.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.9.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/bf95d9118d9b4b827f524c878efd275125b56181/server.jar >C:\MCSSTools\NeededFiles\Server_1.9.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.9.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.9.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/2b95cc7b136017e064c46d04a5825fe4cfa1be30/server.jar >C:\MCSSTools\NeededFiles\Server_1.9.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.9.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.9.3
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/8e897b6b6d784f745332644f4d104f7a6e737ccf/server.jar >C:\MCSSTools\NeededFiles\Server_1.9.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.9.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.9.4
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar >C:\MCSSTools\NeededFiles\Server_1.9.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.9.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.10
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar >C:\MCSSTools\NeededFiles\Server_1.10.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.10.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.10.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/cb4c6f9f51a845b09a8861cdbe0eea3ff6996dee/server.jar >C:\MCSSTools\NeededFiles\Server_1.10.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.10.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.10.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar >C:\MCSSTools\NeededFiles\Server_1.10.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.10.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.11
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar >C:\MCSSTools\NeededFiles\Server_1.11.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.11.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.11.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/1f97bd101e508d7b52b3d6a7879223b000b5eba0/server.jar >C:\MCSSTools\NeededFiles\Server_1.11.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.11.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.11.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar >C:\MCSSTools\NeededFiles\Server_1.11.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.11.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.12
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar >C:\MCSSTools\NeededFiles\Server_1.12.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.12.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.12.1
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar >C:\MCSSTools\NeededFiles\Server_1.12.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.12.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.12.2
echo ---------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar >C:\MCSSTools\NeededFiles\Server_1.12.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.12.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.13
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar >C:\MCSSTools\NeededFiles\Server_1.13.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.13.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.13.1
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar >C:\MCSSTools\NeededFiles\Server_1.13.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.13.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.13.2
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar >C:\MCSSTools\NeededFiles\Server_1.13.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.13.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.14
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar >C:\MCSSTools\NeededFiles\Server_1.14.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.14.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.14.1
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar >C:\MCSSTools\NeededFiles\Server_1.14.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.14.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.14.2
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar >C:\MCSSTools\NeededFiles\Server_1.14.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.14.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.14.3
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar >C:\MCSSTools\NeededFiles\Server_1.14.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.14.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.14.4
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar >C:\MCSSTools\NeededFiles\Server_1.14.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.14.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.15
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar >C:\MCSSTools\NeededFiles\Server_1.15.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.15.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.15.1
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar >C:\MCSSTools\NeededFiles\Server_1.15.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.15.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.15.2
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar >C:\MCSSTools\NeededFiles\Server_1.15.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.15.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.16
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar >C:\MCSSTools\NeededFiles\Server_1.16.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.16.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.16.1
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar >C:\MCSSTools\NeededFiles\Server_1.16.1.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.16.1.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.16.2
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar >C:\MCSSTools\NeededFiles\Server_1.16.2.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.16.2.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.16.3
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar >C:\MCSSTools\NeededFiles\Server_1.16.3.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.16.3.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.16.4
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar >C:\MCSSTools\NeededFiles\Server_1.16.4.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.16.4.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:1.16.5
echo --------------------------------------------
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
pause
echo(
echo Espera un momento...
cd C:\
mkdir MCSSTools
cd C:\MCSSTools
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar >C:\MCSSTools\NeededFiles\Server_1.16.5.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\MCSSTools\NeededFiles\Server_1.16.5.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\MCSSTools\NeededFiles\server.properties
copy C:\MCSSTools\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\MCSSTools
goto :listo

:listo
echo -------------------------------------------
echo(
echo Se han descargado todos los archivos necesarios para tu nuevo Servidor
:listo.1
echo Te invitamos a leer el CLUF (Contrato de Licencia del Usuario final de Minecraft, o EULA) en el siguiente link
echo(
echo https://account.mojang.com/documents/minecraft_eula
echo(
set /P c=Cuando lo hayas leido, escribe "ACEPTO" para aceptarlo y poder continuar= 
if /I "%c%" EQU "ACEPTO" goto :eula
goto :listo.1

:eula
cd %USERPROFILE%\Desktop\Servidor\
echo eula=true>eula.txt
goto :preconfig

:preconfig
echo -------------------------------------------
echo(
echo Ahora es momento de configurar los parametros de tu Servidor. Se abrira un Bloc de Notas.
echo Cuando lo cierres, tu Servidor estara configurado y listo para ser iniciado.
echo Se recomienda visitar la Wiki que explica detalladamente cada uno de los parametros disponibles
echo(
echo https://minecraft.fandom.com/wiki/Server.properties
echo(
pause
cd %USERPROFILE%\Desktop\Servidor\
server.properties
echo -------------------------------------------
echo(
echo Listo! Ya tienes tu Servidor para que puedas jugar y disfrutar en el
echo Recuerda cambiar el nombre o la ubicacion de la carpeta de tu Servidor
echo No olvides usar la Herramienta Lanzador cuando quieras abrir tu Servidor
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit