@echo off

title Optimizador de Servidores por NGDPLNk

:init
cls
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Optimizar el Servidor
echo (D) Modo Debug (Para desarrolladores)
echo (A) Acerca de
echo (S) Salir
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "I" goto :ram
if /I "%c%" EQU "D" goto :dbmode
if /I "%c%" EQU "A" goto :about
if /I "%c%" EQU "S" goto :exit
goto :init

:ram
cls
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Puedes volver al Menu Principal con "N", o
set /P c=Escribe los GB de Ram para Optimizar el Servidor = 
if /I "%c%" EQU "N" goto :init
if /I "%c%" EQU "1" goto :1G
if /I "%c%" EQU "2" goto :2G
if /I "%c%" EQU "3" goto :3G
if /I "%c%" EQU "4" goto :4G
if /I "%c%" EQU "5" goto :5G
if /I "%c%" EQU "6" goto :6G
if /I "%c%" EQU "7" goto :7G
if /I "%c%" EQU "8" goto :8G
if /I "%c%" EQU "9" goto :9G
if /I "%c%" EQU "10" goto :10G
if /I "%c%" EQU "11" goto :11G
if /I "%c%" EQU "12" goto :12G
if /I "%c%" EQU "13" goto :13G
if /I "%c%" EQU "14" goto :14G
if /I "%c%" EQU "15" goto :15G
if /I "%c%" EQU "16" goto :16G
if /I "%c%" EQU "17" goto :17G
if /I "%c%" EQU "18" goto :18G
if /I "%c%" EQU "19" goto :19G
if /I "%c%" EQU "20" goto :20G
if /I "%c%" EQU "21" goto :21G
if /I "%c%" EQU "22" goto :22G
if /I "%c%" EQU "23" goto :23G
if /I "%c%" EQU "24" goto :24G
goto :ram

:1G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 1GB de Ram...
echo(
java -Xmx1G -Xms1G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:2G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 2GB de Ram...
echo(
java -Xmx2G -Xms2G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:3G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 3GB de Ram...
echo(
java -Xmx3G -Xms3G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:4G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 4GB de Ram...
echo(
java -Xmx4G -Xms4G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:5G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 5GB de Ram...
echo(
java -Xmx5G -Xms5G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:6G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 6GB de Ram...
echo(
java -Xmx6G -Xms6G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:7G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 7GB de Ram...
echo(
java -Xmx7G -Xms7G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:8G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 8GB de Ram...
echo(
java -Xmx8G -Xms8G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:9G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 9GB de Ram...
echo(
java -Xmx9G -Xms9G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:10G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 10GB de Ram...
echo(
java -Xmx10G -Xms10G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:11G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 11GB de Ram...
echo(
java -Xmx11G -Xms11G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:12G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 12GB de Ram...
echo(
java -Xmx12G -Xms12G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:13G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 13GB de Ram...
echo(
java -Xmx13G -Xms13G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:14G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 14GB de Ram...
echo(
java -Xmx14G -Xms14G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:15G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 15GB de Ram...
echo(
java -Xmx15G -Xms15G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:16G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 16GB de Ram...
echo(
java -Xmx16G -Xms16G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:17G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 17GB de Ram...
echo(
java -Xmx17G -Xms17G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:18G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 18GB de Ram...
echo(
java -Xmx18G -Xms18G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:19G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 19GB de Ram...
echo(
java -Xmx19G -Xms19G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:20G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 20GB de Ram...
echo(
java -Xmx20G -Xms20G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:21G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 21GB de Ram...
echo(
java -Xmx21G -Xms21G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:22G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 22GB de Ram...
echo(
java -Xmx22G -Xms22G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:23G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 23GB de Ram...
echo(
java -Xmx23G -Xms23G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:24G
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Optimizando el Server con 24GB de Ram...
echo(
java -Xmx24G -Xms24G -jar server.jar --eraseCache --forceUpgrade --initSettings --nogui
pause
goto :afterclose

:afterclose
cls
echo(
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Se ha cerrado el Servidor
echo(
echo Puedes revisar el registro de la consola en la carpeta "Logs"
echo(
pause
goto :init

REM Desde esta anotación se encuentra el bloque de código que activa y desactiva el modo debug
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:dbmode
cls
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo El Modo Debug muestra todos los comandos que son ejecutados por la consola durante cada proceso.
echo Este modo le es util a los desarrolladores para detectar problemas con el codigo de manera mas facil.
echo No se recomienda activar este modo si realmente no sabes como sobrellevarlo.
echo(
echo (N) Activar Modo Debug
echo (M) Desactivar Modo Debug
echo (V) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "N" goto :dbinit
if /I "%c%" EQU "M" goto :undbinit
if /I "%c%" EQU "V" goto :init
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
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Optimizar el Servidor
echo (D) Modo Debug (Para desarrolladores)
echo (A) Acerca de
echo (S) Salir
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "I" goto :version
if /I "%c%" EQU "D" goto :dbmode
if /I "%c%" EQU "A" goto :about
if /I "%c%" EQU "S" goto :exit
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
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Informacion acerca de la Herramienta y del Conjunto
echo(
echo (C) Copyright y Disclaimer
echo (M) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "C" goto :canddis
if /I "%c%" EQU "M" goto :init
goto :about

:canddis
cls
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo (O) Ver Copyright y Disclaimer Online (Recomendado)
echo (L) Ver Copyright y Disclaimer Aqui
echo (B) Volver al Menu Anterior
echo (G) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "O" goto :canddisol
if /I "%c%" EQU "L" goto :canddisof
if /I "%c%" EQU "B" goto :about
if /I "%c%" EQU "G" goto :init
goto :canddis

:canddisol
cls
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo Si continuas, se abrira el Copyright y Disclaimer mas reciente en el navegador.
echo(
pause
start https://github.com/NGDPLNk/mcsstools#informaci%C3%B3n-sobre-copyright-y-disclaimer
goto :init

:canddisof
cls
echo Optimizador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.2 por NGDPL Nk
echo --------------------------------------
echo(
echo COPYRIGHT Y DISCLAIMER MCSSTools
echo(
echo(
echo(
echo # **Información sobre Copyright y Disclaimer**
echo(
echo **MCSSTOOLS Y CADA UNA DE SUS HERRAMIENTAS NO SON UN PRODUCTO OFICIAL DE MINECRAFT. NO ESTÁN APROBADAS POR MOJANG NI ASOCIADAS CON ÉL**
echo(
echo Se otorga permiso, sin cargo, a cualquier persona que obtenga una copia de este software y los archivos de documentación asociados (MCSSTools), para utilizar el Software sin restricciones, incluidos, entre otros, los derechos de uso, copia, modificación, fusión , publicar, distribuir, sublicenciar y/o vender copias del Software, y permitir que las personas a las que se les proporcione el Software lo hagan, sujeto a las siguientes condiciones:
echo(
echo -El aviso de copyright anterior y este aviso de permiso se incluirán en todas las copias o partes sustanciales del Software.
echo(
echo EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO PERO NO LIMITADO A LAS GARANTÍAS DE COMERCIABILIDAD, ADECUACIÓN PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMO, DAÑOS U OTRA RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRO MODO, QUE SURJA DE, FUERA DE O EN RELACIÓN CON EL SOFTWARE O EL USO U OTRAS NEGOCIACIONES EN EL SOFTWARE.
echo(
echo "Minecraft" es una marca registrada de Mojang Synergies AB, y no tiene ninguna relación con este Software.
echo(
echo Oracle, Java, y MySQL son marcas registradas de Oracle y/o sus afiliados. Otros nombres pueden ser marcas registradas de sus dueños respectivos.
echo(
echo NGDPL Nk no es dueño ni tampoco almacena ningún producto de Mojang Synergies AB. Tampoco depende de NGDPL Nk la disponibilidad de estos mismos.
echo(
echo NGDPL Nk no es dueño ni tampoco almacena ningún producto de Oracle. Tampoco depende de NGDPL Nk la disponibilidad de estos mismos.
echo(
echo **Cada elemento, nombre, correspondiente a Mojang Synergies AB, es usado cumpliendo el [CLUF](https://www.minecraft.net/es-es/eula/) y las [Directrices de Marca y Herramientas](https://account.mojang.com/terms?ref=ft#brand)**
echo(
echo **Cada elemento, nombre, correspondiente a Oracle, es usado cumpliendo los [Términos de uso](https://www.oracle.com/legal/terms.html) y las [Trademarks](https://www.oracle.com/legal/trademarks.html)**
echo(
echo # **Gracias Por Usar Este Conjunto De Herramientas**
echo ©2021 - NGDPL Nk
echo(
echo(
echo(
pause
goto :init

REM Desde esta anotación se encuentra el bloque que da pie a la salida de esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:exit
cls
echo(
echo --------------------------------------------
echo Muchas Gracias por usar esta Herramienta
echo MIT License - Copyright (c) 2021 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit
