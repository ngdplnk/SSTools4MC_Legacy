@echo off

echo Herramienta de Inicio de Servidores de Minecraft
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo Disenado para Iniciar Servidores Vanilla
echo -------------------------------------------------
echo(
echo Te damos la Bienvenida
echo Con esta herramienta podras Iniciar tu Servidor de Minecraft
echo Recuerda que debes usar esta Herramienta desde la carpeta principal de tu Servidor,
echo De lo contrario, la Herramienta no podra acceder a tu Servidor y mucho menos iniciarlo.
echo(
echo Estas usando una Alpha, por lo que puede que falten funciones o estas esten incompletas
echo ---------------------------------------------

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

:1.2.1
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.2.1
:1.2.1yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.2.1y
if /I "%c%" EQU "N" goto :version
goto :1.2.1yn

:1.2.1y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.2.1
:1.2.1ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.2.1_1G
if /I "%c%" EQU "2" goto :1.2.1_2G
if /I "%c%" EQU "3" goto :1.2.1_3G
if /I "%c%" EQU "4" goto :1.2.1_4G
if /I "%c%" EQU "5" goto :1.2.1_5G
if /I "%c%" EQU "6" goto :1.2.1_6G
if /I "%c%" EQU "7" goto :1.2.1_7G
if /I "%c%" EQU "8" goto :1.2.1_8G
if /I "%c%" EQU "9" goto :1.2.1_9G
if /I "%c%" EQU "10" goto :1.2.1_10G
if /I "%c%" EQU "11" goto :1.2.1_11G
if /I "%c%" EQU "12" goto :1.2.1_12G
if /I "%c%" EQU "13" goto :1.2.1_13G
if /I "%c%" EQU "14" goto :1.2.1_14G
if /I "%c%" EQU "15" goto :1.2.1_15G
if /I "%c%" EQU "16" goto :1.2.1_16G
goto :1.2.1ramnull

:1.2.1ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.2.1_1G
if /I "%c%" EQU "2" goto :1.2.1_2G
if /I "%c%" EQU "3" goto :1.2.1_3G
if /I "%c%" EQU "4" goto :1.2.1_4G
if /I "%c%" EQU "5" goto :1.2.1_5G
if /I "%c%" EQU "6" goto :1.2.1_6G
if /I "%c%" EQU "7" goto :1.2.1_7G
if /I "%c%" EQU "8" goto :1.2.1_8G
if /I "%c%" EQU "9" goto :1.2.1_9G
if /I "%c%" EQU "10" goto :1.2.1_10G
if /I "%c%" EQU "11" goto :1.2.1_11G
if /I "%c%" EQU "12" goto :1.2.1_12G
if /I "%c%" EQU "13" goto :1.2.1_13G
if /I "%c%" EQU "14" goto :1.2.1_14G
if /I "%c%" EQU "15" goto :1.2.1_15G
if /I "%c%" EQU "16" goto :1.2.1_16G
goto :1.2.1ramnull

:1.2.1_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.1_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.2.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.2.2
:1.2.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.2.2y
if /I "%c%" EQU "N" goto :version
goto :1.2.2yn

:1.2.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.2.2
:1.2.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.2.2_1G
if /I "%c%" EQU "2" goto :1.2.2_2G
if /I "%c%" EQU "3" goto :1.2.2_3G
if /I "%c%" EQU "4" goto :1.2.2_4G
if /I "%c%" EQU "5" goto :1.2.2_5G
if /I "%c%" EQU "6" goto :1.2.2_6G
if /I "%c%" EQU "7" goto :1.2.2_7G
if /I "%c%" EQU "8" goto :1.2.2_8G
if /I "%c%" EQU "9" goto :1.2.2_9G
if /I "%c%" EQU "10" goto :1.2.2_10G
if /I "%c%" EQU "11" goto :1.2.2_11G
if /I "%c%" EQU "12" goto :1.2.2_12G
if /I "%c%" EQU "13" goto :1.2.2_13G
if /I "%c%" EQU "14" goto :1.2.2_14G
if /I "%c%" EQU "15" goto :1.2.2_15G
if /I "%c%" EQU "16" goto :1.2.2_16G
goto :1.2.2ramnull

:1.2.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.2.2_1G
if /I "%c%" EQU "2" goto :1.2.2_2G
if /I "%c%" EQU "3" goto :1.2.2_3G
if /I "%c%" EQU "4" goto :1.2.2_4G
if /I "%c%" EQU "5" goto :1.2.2_5G
if /I "%c%" EQU "6" goto :1.2.2_6G
if /I "%c%" EQU "7" goto :1.2.2_7G
if /I "%c%" EQU "8" goto :1.2.2_8G
if /I "%c%" EQU "9" goto :1.2.2_9G
if /I "%c%" EQU "10" goto :1.2.2_10G
if /I "%c%" EQU "11" goto :1.2.2_11G
if /I "%c%" EQU "12" goto :1.2.2_12G
if /I "%c%" EQU "13" goto :1.2.2_13G
if /I "%c%" EQU "14" goto :1.2.2_14G
if /I "%c%" EQU "15" goto :1.2.2_15G
if /I "%c%" EQU "16" goto :1.2.2_16G
goto :1.2.2ramnull

:1.2.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.2.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.2.3
:1.2.3yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.2.3y
if /I "%c%" EQU "N" goto :version
goto :1.2.3yn

:1.2.3y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.2.3
:1.2.3ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.2.3_1G
if /I "%c%" EQU "2" goto :1.2.3_2G
if /I "%c%" EQU "3" goto :1.2.3_3G
if /I "%c%" EQU "4" goto :1.2.3_4G
if /I "%c%" EQU "5" goto :1.2.3_5G
if /I "%c%" EQU "6" goto :1.2.3_6G
if /I "%c%" EQU "7" goto :1.2.3_7G
if /I "%c%" EQU "8" goto :1.2.3_8G
if /I "%c%" EQU "9" goto :1.2.3_9G
if /I "%c%" EQU "10" goto :1.2.3_10G
if /I "%c%" EQU "11" goto :1.2.3_11G
if /I "%c%" EQU "12" goto :1.2.3_12G
if /I "%c%" EQU "13" goto :1.2.3_13G
if /I "%c%" EQU "14" goto :1.2.3_14G
if /I "%c%" EQU "15" goto :1.2.3_15G
if /I "%c%" EQU "16" goto :1.2.3_16G
goto :1.2.3ramnull

:1.2.3ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.2.3_1G
if /I "%c%" EQU "2" goto :1.2.3_2G
if /I "%c%" EQU "3" goto :1.2.3_3G
if /I "%c%" EQU "4" goto :1.2.3_4G
if /I "%c%" EQU "5" goto :1.2.3_5G
if /I "%c%" EQU "6" goto :1.2.3_6G
if /I "%c%" EQU "7" goto :1.2.3_7G
if /I "%c%" EQU "8" goto :1.2.3_8G
if /I "%c%" EQU "9" goto :1.2.3_9G
if /I "%c%" EQU "10" goto :1.2.3_10G
if /I "%c%" EQU "11" goto :1.2.3_11G
if /I "%c%" EQU "12" goto :1.2.3_12G
if /I "%c%" EQU "13" goto :1.2.3_13G
if /I "%c%" EQU "14" goto :1.2.3_14G
if /I "%c%" EQU "15" goto :1.2.3_15G
if /I "%c%" EQU "16" goto :1.2.3_16G
goto :1.2.3ramnull

:1.2.3_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.3_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.2.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.2.4
:1.2.4yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.2.4y
if /I "%c%" EQU "N" goto :version
goto :1.2.4yn

:1.2.4y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.2.4
:1.2.4ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.2.4_1G
if /I "%c%" EQU "2" goto :1.2.4_2G
if /I "%c%" EQU "3" goto :1.2.4_3G
if /I "%c%" EQU "4" goto :1.2.4_4G
if /I "%c%" EQU "5" goto :1.2.4_5G
if /I "%c%" EQU "6" goto :1.2.4_6G
if /I "%c%" EQU "7" goto :1.2.4_7G
if /I "%c%" EQU "8" goto :1.2.4_8G
if /I "%c%" EQU "9" goto :1.2.4_9G
if /I "%c%" EQU "10" goto :1.2.4_10G
if /I "%c%" EQU "11" goto :1.2.4_11G
if /I "%c%" EQU "12" goto :1.2.4_12G
if /I "%c%" EQU "13" goto :1.2.4_13G
if /I "%c%" EQU "14" goto :1.2.4_14G
if /I "%c%" EQU "15" goto :1.2.4_15G
if /I "%c%" EQU "16" goto :1.2.4_16G
goto :1.2.4ramnull

:1.2.4ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.2.4_1G
if /I "%c%" EQU "2" goto :1.2.4_2G
if /I "%c%" EQU "3" goto :1.2.4_3G
if /I "%c%" EQU "4" goto :1.2.4_4G
if /I "%c%" EQU "5" goto :1.2.4_5G
if /I "%c%" EQU "6" goto :1.2.4_6G
if /I "%c%" EQU "7" goto :1.2.4_7G
if /I "%c%" EQU "8" goto :1.2.4_8G
if /I "%c%" EQU "9" goto :1.2.4_9G
if /I "%c%" EQU "10" goto :1.2.4_10G
if /I "%c%" EQU "11" goto :1.2.4_11G
if /I "%c%" EQU "12" goto :1.2.4_12G
if /I "%c%" EQU "13" goto :1.2.4_13G
if /I "%c%" EQU "14" goto :1.2.4_14G
if /I "%c%" EQU "15" goto :1.2.4_15G
if /I "%c%" EQU "16" goto :1.2.4_16G
goto :1.2.4ramnull

:1.2.4_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.4_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.2.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.2.5
:1.2.5yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.2.5y
if /I "%c%" EQU "N" goto :version
goto :1.2.5yn

:1.2.5y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.2.5
:1.2.5ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.2.5_1G
if /I "%c%" EQU "2" goto :1.2.5_2G
if /I "%c%" EQU "3" goto :1.2.5_3G
if /I "%c%" EQU "4" goto :1.2.5_4G
if /I "%c%" EQU "5" goto :1.2.5_5G
if /I "%c%" EQU "6" goto :1.2.5_6G
if /I "%c%" EQU "7" goto :1.2.5_7G
if /I "%c%" EQU "8" goto :1.2.5_8G
if /I "%c%" EQU "9" goto :1.2.5_9G
if /I "%c%" EQU "10" goto :1.2.5_10G
if /I "%c%" EQU "11" goto :1.2.5_11G
if /I "%c%" EQU "12" goto :1.2.5_12G
if /I "%c%" EQU "13" goto :1.2.5_13G
if /I "%c%" EQU "14" goto :1.2.5_14G
if /I "%c%" EQU "15" goto :1.2.5_15G
if /I "%c%" EQU "16" goto :1.2.5_16G
goto :1.2.5ramnull

:1.2.5ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.2.5_1G
if /I "%c%" EQU "2" goto :1.2.5_2G
if /I "%c%" EQU "3" goto :1.2.5_3G
if /I "%c%" EQU "4" goto :1.2.5_4G
if /I "%c%" EQU "5" goto :1.2.5_5G
if /I "%c%" EQU "6" goto :1.2.5_6G
if /I "%c%" EQU "7" goto :1.2.5_7G
if /I "%c%" EQU "8" goto :1.2.5_8G
if /I "%c%" EQU "9" goto :1.2.5_9G
if /I "%c%" EQU "10" goto :1.2.5_10G
if /I "%c%" EQU "11" goto :1.2.5_11G
if /I "%c%" EQU "12" goto :1.2.5_12G
if /I "%c%" EQU "13" goto :1.2.5_13G
if /I "%c%" EQU "14" goto :1.2.5_14G
if /I "%c%" EQU "15" goto :1.2.5_15G
if /I "%c%" EQU "16" goto :1.2.5_16G
goto :1.2.5ramnull

:1.2.5_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.2.5_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.2.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.3.1
:1.3.1yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.3.1y
if /I "%c%" EQU "N" goto :version
goto :1.3.1yn

:1.3.1y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.3.1
:1.3.1ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.3.1_1G
if /I "%c%" EQU "2" goto :1.3.1_2G
if /I "%c%" EQU "3" goto :1.3.1_3G
if /I "%c%" EQU "4" goto :1.3.1_4G
if /I "%c%" EQU "5" goto :1.3.1_5G
if /I "%c%" EQU "6" goto :1.3.1_6G
if /I "%c%" EQU "7" goto :1.3.1_7G
if /I "%c%" EQU "8" goto :1.3.1_8G
if /I "%c%" EQU "9" goto :1.3.1_9G
if /I "%c%" EQU "10" goto :1.3.1_10G
if /I "%c%" EQU "11" goto :1.3.1_11G
if /I "%c%" EQU "12" goto :1.3.1_12G
if /I "%c%" EQU "13" goto :1.3.1_13G
if /I "%c%" EQU "14" goto :1.3.1_14G
if /I "%c%" EQU "15" goto :1.3.1_15G
if /I "%c%" EQU "16" goto :1.3.1_16G
goto :1.3.1ramnull

:1.3.1ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.3.1_1G
if /I "%c%" EQU "2" goto :1.3.1_2G
if /I "%c%" EQU "3" goto :1.3.1_3G
if /I "%c%" EQU "4" goto :1.3.1_4G
if /I "%c%" EQU "5" goto :1.3.1_5G
if /I "%c%" EQU "6" goto :1.3.1_6G
if /I "%c%" EQU "7" goto :1.3.1_7G
if /I "%c%" EQU "8" goto :1.3.1_8G
if /I "%c%" EQU "9" goto :1.3.1_9G
if /I "%c%" EQU "10" goto :1.3.1_10G
if /I "%c%" EQU "11" goto :1.3.1_11G
if /I "%c%" EQU "12" goto :1.3.1_12G
if /I "%c%" EQU "13" goto :1.3.1_13G
if /I "%c%" EQU "14" goto :1.3.1_14G
if /I "%c%" EQU "15" goto :1.3.1_15G
if /I "%c%" EQU "16" goto :1.3.1_16G
goto :1.3.1ramnull

:1.3.1_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.1_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.3.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.3.2
:1.3.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.3.2y
if /I "%c%" EQU "N" goto :version
goto :1.3.2yn

:1.3.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.3.2
:1.3.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.3.2_1G
if /I "%c%" EQU "2" goto :1.3.2_2G
if /I "%c%" EQU "3" goto :1.3.2_3G
if /I "%c%" EQU "4" goto :1.3.2_4G
if /I "%c%" EQU "5" goto :1.3.2_5G
if /I "%c%" EQU "6" goto :1.3.2_6G
if /I "%c%" EQU "7" goto :1.3.2_7G
if /I "%c%" EQU "8" goto :1.3.2_8G
if /I "%c%" EQU "9" goto :1.3.2_9G
if /I "%c%" EQU "10" goto :1.3.2_10G
if /I "%c%" EQU "11" goto :1.3.2_11G
if /I "%c%" EQU "12" goto :1.3.2_12G
if /I "%c%" EQU "13" goto :1.3.2_13G
if /I "%c%" EQU "14" goto :1.3.2_14G
if /I "%c%" EQU "15" goto :1.3.2_15G
if /I "%c%" EQU "16" goto :1.3.2_16G
goto :1.3.2ramnull

:1.3.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.3.2_1G
if /I "%c%" EQU "2" goto :1.3.2_2G
if /I "%c%" EQU "3" goto :1.3.2_3G
if /I "%c%" EQU "4" goto :1.3.2_4G
if /I "%c%" EQU "5" goto :1.3.2_5G
if /I "%c%" EQU "6" goto :1.3.2_6G
if /I "%c%" EQU "7" goto :1.3.2_7G
if /I "%c%" EQU "8" goto :1.3.2_8G
if /I "%c%" EQU "9" goto :1.3.2_9G
if /I "%c%" EQU "10" goto :1.3.2_10G
if /I "%c%" EQU "11" goto :1.3.2_11G
if /I "%c%" EQU "12" goto :1.3.2_12G
if /I "%c%" EQU "13" goto :1.3.2_13G
if /I "%c%" EQU "14" goto :1.3.2_14G
if /I "%c%" EQU "15" goto :1.3.2_15G
if /I "%c%" EQU "16" goto :1.3.2_16G
goto :1.3.2ramnull

:1.3.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.3.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.3.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit