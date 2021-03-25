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

:1.4.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.4.2
:1.4.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.4.2y
if /I "%c%" EQU "N" goto :version
goto :1.4.2yn

:1.4.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.4.2
:1.4.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.4.2_1G
if /I "%c%" EQU "2" goto :1.4.2_2G
if /I "%c%" EQU "3" goto :1.4.2_3G
if /I "%c%" EQU "4" goto :1.4.2_4G
if /I "%c%" EQU "5" goto :1.4.2_5G
if /I "%c%" EQU "6" goto :1.4.2_6G
if /I "%c%" EQU "7" goto :1.4.2_7G
if /I "%c%" EQU "8" goto :1.4.2_8G
if /I "%c%" EQU "9" goto :1.4.2_9G
if /I "%c%" EQU "10" goto :1.4.2_10G
if /I "%c%" EQU "11" goto :1.4.2_11G
if /I "%c%" EQU "12" goto :1.4.2_12G
if /I "%c%" EQU "13" goto :1.4.2_13G
if /I "%c%" EQU "14" goto :1.4.2_14G
if /I "%c%" EQU "15" goto :1.4.2_15G
if /I "%c%" EQU "16" goto :1.4.2_16G
goto :1.4.2ramnull

:1.4.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.4.2_1G
if /I "%c%" EQU "2" goto :1.4.2_2G
if /I "%c%" EQU "3" goto :1.4.2_3G
if /I "%c%" EQU "4" goto :1.4.2_4G
if /I "%c%" EQU "5" goto :1.4.2_5G
if /I "%c%" EQU "6" goto :1.4.2_6G
if /I "%c%" EQU "7" goto :1.4.2_7G
if /I "%c%" EQU "8" goto :1.4.2_8G
if /I "%c%" EQU "9" goto :1.4.2_9G
if /I "%c%" EQU "10" goto :1.4.2_10G
if /I "%c%" EQU "11" goto :1.4.2_11G
if /I "%c%" EQU "12" goto :1.4.2_12G
if /I "%c%" EQU "13" goto :1.4.2_13G
if /I "%c%" EQU "14" goto :1.4.2_14G
if /I "%c%" EQU "15" goto :1.4.2_15G
if /I "%c%" EQU "16" goto :1.4.2_16G
goto :1.4.2ramnull

:1.4.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.4.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.4.4
:1.4.4yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.4.4y
if /I "%c%" EQU "N" goto :version
goto :1.4.4yn

:1.4.4y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.4.4
:1.4.4ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.4.4_1G
if /I "%c%" EQU "2" goto :1.4.4_2G
if /I "%c%" EQU "3" goto :1.4.4_3G
if /I "%c%" EQU "4" goto :1.4.4_4G
if /I "%c%" EQU "5" goto :1.4.4_5G
if /I "%c%" EQU "6" goto :1.4.4_6G
if /I "%c%" EQU "7" goto :1.4.4_7G
if /I "%c%" EQU "8" goto :1.4.4_8G
if /I "%c%" EQU "9" goto :1.4.4_9G
if /I "%c%" EQU "10" goto :1.4.4_10G
if /I "%c%" EQU "11" goto :1.4.4_11G
if /I "%c%" EQU "12" goto :1.4.4_12G
if /I "%c%" EQU "13" goto :1.4.4_13G
if /I "%c%" EQU "14" goto :1.4.4_14G
if /I "%c%" EQU "15" goto :1.4.4_15G
if /I "%c%" EQU "16" goto :1.4.4_16G
goto :1.4.4ramnull

:1.4.4ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.4.4_1G
if /I "%c%" EQU "2" goto :1.4.4_2G
if /I "%c%" EQU "3" goto :1.4.4_3G
if /I "%c%" EQU "4" goto :1.4.4_4G
if /I "%c%" EQU "5" goto :1.4.4_5G
if /I "%c%" EQU "6" goto :1.4.4_6G
if /I "%c%" EQU "7" goto :1.4.4_7G
if /I "%c%" EQU "8" goto :1.4.4_8G
if /I "%c%" EQU "9" goto :1.4.4_9G
if /I "%c%" EQU "10" goto :1.4.4_10G
if /I "%c%" EQU "11" goto :1.4.4_11G
if /I "%c%" EQU "12" goto :1.4.4_12G
if /I "%c%" EQU "13" goto :1.4.4_13G
if /I "%c%" EQU "14" goto :1.4.4_14G
if /I "%c%" EQU "15" goto :1.4.4_15G
if /I "%c%" EQU "16" goto :1.4.4_16G
goto :1.4.4ramnull

:1.4.4_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.4_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.4.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.4.5
:1.4.5yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.4.5y
if /I "%c%" EQU "N" goto :version
goto :1.4.5yn

:1.4.5y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.4.5
:1.4.5ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.4.5_1G
if /I "%c%" EQU "2" goto :1.4.5_2G
if /I "%c%" EQU "3" goto :1.4.5_3G
if /I "%c%" EQU "4" goto :1.4.5_4G
if /I "%c%" EQU "5" goto :1.4.5_5G
if /I "%c%" EQU "6" goto :1.4.5_6G
if /I "%c%" EQU "7" goto :1.4.5_7G
if /I "%c%" EQU "8" goto :1.4.5_8G
if /I "%c%" EQU "9" goto :1.4.5_9G
if /I "%c%" EQU "10" goto :1.4.5_10G
if /I "%c%" EQU "11" goto :1.4.5_11G
if /I "%c%" EQU "12" goto :1.4.5_12G
if /I "%c%" EQU "13" goto :1.4.5_13G
if /I "%c%" EQU "14" goto :1.4.5_14G
if /I "%c%" EQU "15" goto :1.4.5_15G
if /I "%c%" EQU "16" goto :1.4.5_16G
goto :1.4.5ramnull

:1.4.5ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.4.5_1G
if /I "%c%" EQU "2" goto :1.4.5_2G
if /I "%c%" EQU "3" goto :1.4.5_3G
if /I "%c%" EQU "4" goto :1.4.5_4G
if /I "%c%" EQU "5" goto :1.4.5_5G
if /I "%c%" EQU "6" goto :1.4.5_6G
if /I "%c%" EQU "7" goto :1.4.5_7G
if /I "%c%" EQU "8" goto :1.4.5_8G
if /I "%c%" EQU "9" goto :1.4.5_9G
if /I "%c%" EQU "10" goto :1.4.5_10G
if /I "%c%" EQU "11" goto :1.4.5_11G
if /I "%c%" EQU "12" goto :1.4.5_12G
if /I "%c%" EQU "13" goto :1.4.5_13G
if /I "%c%" EQU "14" goto :1.4.5_14G
if /I "%c%" EQU "15" goto :1.4.5_15G
if /I "%c%" EQU "16" goto :1.4.5_16G
goto :1.4.5ramnull

:1.4.5_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.5_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.4.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.4.6
:1.4.6yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.4.6y
if /I "%c%" EQU "N" goto :version
goto :1.4.6yn

:1.4.6y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.4.6
:1.4.6ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.4.6_1G
if /I "%c%" EQU "2" goto :1.4.6_2G
if /I "%c%" EQU "3" goto :1.4.6_3G
if /I "%c%" EQU "4" goto :1.4.6_4G
if /I "%c%" EQU "5" goto :1.4.6_5G
if /I "%c%" EQU "6" goto :1.4.6_6G
if /I "%c%" EQU "7" goto :1.4.6_7G
if /I "%c%" EQU "8" goto :1.4.6_8G
if /I "%c%" EQU "9" goto :1.4.6_9G
if /I "%c%" EQU "10" goto :1.4.6_10G
if /I "%c%" EQU "11" goto :1.4.6_11G
if /I "%c%" EQU "12" goto :1.4.6_12G
if /I "%c%" EQU "13" goto :1.4.6_13G
if /I "%c%" EQU "14" goto :1.4.6_14G
if /I "%c%" EQU "15" goto :1.4.6_15G
if /I "%c%" EQU "16" goto :1.4.6_16G
goto :1.4.6ramnull

:1.4.6ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.4.6_1G
if /I "%c%" EQU "2" goto :1.4.6_2G
if /I "%c%" EQU "3" goto :1.4.6_3G
if /I "%c%" EQU "4" goto :1.4.6_4G
if /I "%c%" EQU "5" goto :1.4.6_5G
if /I "%c%" EQU "6" goto :1.4.6_6G
if /I "%c%" EQU "7" goto :1.4.6_7G
if /I "%c%" EQU "8" goto :1.4.6_8G
if /I "%c%" EQU "9" goto :1.4.6_9G
if /I "%c%" EQU "10" goto :1.4.6_10G
if /I "%c%" EQU "11" goto :1.4.6_11G
if /I "%c%" EQU "12" goto :1.4.6_12G
if /I "%c%" EQU "13" goto :1.4.6_13G
if /I "%c%" EQU "14" goto :1.4.6_14G
if /I "%c%" EQU "15" goto :1.4.6_15G
if /I "%c%" EQU "16" goto :1.4.6_16G
goto :1.4.6ramnull

:1.4.6_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.6_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.4.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.4.7
:1.4.7yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.4.7y
if /I "%c%" EQU "N" goto :version
goto :1.4.7yn

:1.4.7y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.4.7
:1.4.7ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.4.7_1G
if /I "%c%" EQU "2" goto :1.4.7_2G
if /I "%c%" EQU "3" goto :1.4.7_3G
if /I "%c%" EQU "4" goto :1.4.7_4G
if /I "%c%" EQU "5" goto :1.4.7_5G
if /I "%c%" EQU "6" goto :1.4.7_6G
if /I "%c%" EQU "7" goto :1.4.7_7G
if /I "%c%" EQU "8" goto :1.4.7_8G
if /I "%c%" EQU "9" goto :1.4.7_9G
if /I "%c%" EQU "10" goto :1.4.7_10G
if /I "%c%" EQU "11" goto :1.4.7_11G
if /I "%c%" EQU "12" goto :1.4.7_12G
if /I "%c%" EQU "13" goto :1.4.7_13G
if /I "%c%" EQU "14" goto :1.4.7_14G
if /I "%c%" EQU "15" goto :1.4.7_15G
if /I "%c%" EQU "16" goto :1.4.7_16G
goto :1.4.7ramnull

:1.4.7ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.4.7_1G
if /I "%c%" EQU "2" goto :1.4.7_2G
if /I "%c%" EQU "3" goto :1.4.7_3G
if /I "%c%" EQU "4" goto :1.4.7_4G
if /I "%c%" EQU "5" goto :1.4.7_5G
if /I "%c%" EQU "6" goto :1.4.7_6G
if /I "%c%" EQU "7" goto :1.4.7_7G
if /I "%c%" EQU "8" goto :1.4.7_8G
if /I "%c%" EQU "9" goto :1.4.7_9G
if /I "%c%" EQU "10" goto :1.4.7_10G
if /I "%c%" EQU "11" goto :1.4.7_11G
if /I "%c%" EQU "12" goto :1.4.7_12G
if /I "%c%" EQU "13" goto :1.4.7_13G
if /I "%c%" EQU "14" goto :1.4.7_14G
if /I "%c%" EQU "15" goto :1.4.7_15G
if /I "%c%" EQU "16" goto :1.4.7_16G
goto :1.4.7ramnull

:1.4.7_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.4.7_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.4.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.5.1
:1.5.1yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.5.1y
if /I "%c%" EQU "N" goto :version
goto :1.5.1yn

:1.5.1y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.5.1
:1.5.1ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.5.1_1G
if /I "%c%" EQU "2" goto :1.5.1_2G
if /I "%c%" EQU "3" goto :1.5.1_3G
if /I "%c%" EQU "4" goto :1.5.1_4G
if /I "%c%" EQU "5" goto :1.5.1_5G
if /I "%c%" EQU "6" goto :1.5.1_6G
if /I "%c%" EQU "7" goto :1.5.1_7G
if /I "%c%" EQU "8" goto :1.5.1_8G
if /I "%c%" EQU "9" goto :1.5.1_9G
if /I "%c%" EQU "10" goto :1.5.1_10G
if /I "%c%" EQU "11" goto :1.5.1_11G
if /I "%c%" EQU "12" goto :1.5.1_12G
if /I "%c%" EQU "13" goto :1.5.1_13G
if /I "%c%" EQU "14" goto :1.5.1_14G
if /I "%c%" EQU "15" goto :1.5.1_15G
if /I "%c%" EQU "16" goto :1.5.1_16G
goto :1.5.1ramnull

:1.5.1ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.5.1_1G
if /I "%c%" EQU "2" goto :1.5.1_2G
if /I "%c%" EQU "3" goto :1.5.1_3G
if /I "%c%" EQU "4" goto :1.5.1_4G
if /I "%c%" EQU "5" goto :1.5.1_5G
if /I "%c%" EQU "6" goto :1.5.1_6G
if /I "%c%" EQU "7" goto :1.5.1_7G
if /I "%c%" EQU "8" goto :1.5.1_8G
if /I "%c%" EQU "9" goto :1.5.1_9G
if /I "%c%" EQU "10" goto :1.5.1_10G
if /I "%c%" EQU "11" goto :1.5.1_11G
if /I "%c%" EQU "12" goto :1.5.1_12G
if /I "%c%" EQU "13" goto :1.5.1_13G
if /I "%c%" EQU "14" goto :1.5.1_14G
if /I "%c%" EQU "15" goto :1.5.1_15G
if /I "%c%" EQU "16" goto :1.5.1_16G
goto :1.5.1ramnull

:1.5.1_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.1_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.5.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.5.2
:1.5.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.5.2y
if /I "%c%" EQU "N" goto :version
goto :1.5.2yn

:1.5.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.5.2
:1.5.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.5.2_1G
if /I "%c%" EQU "2" goto :1.5.2_2G
if /I "%c%" EQU "3" goto :1.5.2_3G
if /I "%c%" EQU "4" goto :1.5.2_4G
if /I "%c%" EQU "5" goto :1.5.2_5G
if /I "%c%" EQU "6" goto :1.5.2_6G
if /I "%c%" EQU "7" goto :1.5.2_7G
if /I "%c%" EQU "8" goto :1.5.2_8G
if /I "%c%" EQU "9" goto :1.5.2_9G
if /I "%c%" EQU "10" goto :1.5.2_10G
if /I "%c%" EQU "11" goto :1.5.2_11G
if /I "%c%" EQU "12" goto :1.5.2_12G
if /I "%c%" EQU "13" goto :1.5.2_13G
if /I "%c%" EQU "14" goto :1.5.2_14G
if /I "%c%" EQU "15" goto :1.5.2_15G
if /I "%c%" EQU "16" goto :1.5.2_16G
goto :1.5.2ramnull

:1.5.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.5.2_1G
if /I "%c%" EQU "2" goto :1.5.2_2G
if /I "%c%" EQU "3" goto :1.5.2_3G
if /I "%c%" EQU "4" goto :1.5.2_4G
if /I "%c%" EQU "5" goto :1.5.2_5G
if /I "%c%" EQU "6" goto :1.5.2_6G
if /I "%c%" EQU "7" goto :1.5.2_7G
if /I "%c%" EQU "8" goto :1.5.2_8G
if /I "%c%" EQU "9" goto :1.5.2_9G
if /I "%c%" EQU "10" goto :1.5.2_10G
if /I "%c%" EQU "11" goto :1.5.2_11G
if /I "%c%" EQU "12" goto :1.5.2_12G
if /I "%c%" EQU "13" goto :1.5.2_13G
if /I "%c%" EQU "14" goto :1.5.2_14G
if /I "%c%" EQU "15" goto :1.5.2_15G
if /I "%c%" EQU "16" goto :1.5.2_16G
goto :1.5.2ramnull

:1.5.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.5.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.5.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.6.1
:1.6.1yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.6.1y
if /I "%c%" EQU "N" goto :version
goto :1.6.1yn

:1.6.1y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.6.1
:1.6.1ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.6.1_1G
if /I "%c%" EQU "2" goto :1.6.1_2G
if /I "%c%" EQU "3" goto :1.6.1_3G
if /I "%c%" EQU "4" goto :1.6.1_4G
if /I "%c%" EQU "5" goto :1.6.1_5G
if /I "%c%" EQU "6" goto :1.6.1_6G
if /I "%c%" EQU "7" goto :1.6.1_7G
if /I "%c%" EQU "8" goto :1.6.1_8G
if /I "%c%" EQU "9" goto :1.6.1_9G
if /I "%c%" EQU "10" goto :1.6.1_10G
if /I "%c%" EQU "11" goto :1.6.1_11G
if /I "%c%" EQU "12" goto :1.6.1_12G
if /I "%c%" EQU "13" goto :1.6.1_13G
if /I "%c%" EQU "14" goto :1.6.1_14G
if /I "%c%" EQU "15" goto :1.6.1_15G
if /I "%c%" EQU "16" goto :1.6.1_16G
goto :1.6.1ramnull

:1.6.1ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.6.1_1G
if /I "%c%" EQU "2" goto :1.6.1_2G
if /I "%c%" EQU "3" goto :1.6.1_3G
if /I "%c%" EQU "4" goto :1.6.1_4G
if /I "%c%" EQU "5" goto :1.6.1_5G
if /I "%c%" EQU "6" goto :1.6.1_6G
if /I "%c%" EQU "7" goto :1.6.1_7G
if /I "%c%" EQU "8" goto :1.6.1_8G
if /I "%c%" EQU "9" goto :1.6.1_9G
if /I "%c%" EQU "10" goto :1.6.1_10G
if /I "%c%" EQU "11" goto :1.6.1_11G
if /I "%c%" EQU "12" goto :1.6.1_12G
if /I "%c%" EQU "13" goto :1.6.1_13G
if /I "%c%" EQU "14" goto :1.6.1_14G
if /I "%c%" EQU "15" goto :1.6.1_15G
if /I "%c%" EQU "16" goto :1.6.1_16G
goto :1.6.1ramnull

:1.6.1_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.1_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.6.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.6.2
:1.6.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.6.2y
if /I "%c%" EQU "N" goto :version
goto :1.6.2yn

:1.6.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.6.2
:1.6.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.6.2_1G
if /I "%c%" EQU "2" goto :1.6.2_2G
if /I "%c%" EQU "3" goto :1.6.2_3G
if /I "%c%" EQU "4" goto :1.6.2_4G
if /I "%c%" EQU "5" goto :1.6.2_5G
if /I "%c%" EQU "6" goto :1.6.2_6G
if /I "%c%" EQU "7" goto :1.6.2_7G
if /I "%c%" EQU "8" goto :1.6.2_8G
if /I "%c%" EQU "9" goto :1.6.2_9G
if /I "%c%" EQU "10" goto :1.6.2_10G
if /I "%c%" EQU "11" goto :1.6.2_11G
if /I "%c%" EQU "12" goto :1.6.2_12G
if /I "%c%" EQU "13" goto :1.6.2_13G
if /I "%c%" EQU "14" goto :1.6.2_14G
if /I "%c%" EQU "15" goto :1.6.2_15G
if /I "%c%" EQU "16" goto :1.6.2_16G
goto :1.6.2ramnull

:1.6.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.6.2_1G
if /I "%c%" EQU "2" goto :1.6.2_2G
if /I "%c%" EQU "3" goto :1.6.2_3G
if /I "%c%" EQU "4" goto :1.6.2_4G
if /I "%c%" EQU "5" goto :1.6.2_5G
if /I "%c%" EQU "6" goto :1.6.2_6G
if /I "%c%" EQU "7" goto :1.6.2_7G
if /I "%c%" EQU "8" goto :1.6.2_8G
if /I "%c%" EQU "9" goto :1.6.2_9G
if /I "%c%" EQU "10" goto :1.6.2_10G
if /I "%c%" EQU "11" goto :1.6.2_11G
if /I "%c%" EQU "12" goto :1.6.2_12G
if /I "%c%" EQU "13" goto :1.6.2_13G
if /I "%c%" EQU "14" goto :1.6.2_14G
if /I "%c%" EQU "15" goto :1.6.2_15G
if /I "%c%" EQU "16" goto :1.6.2_16G
goto :1.6.2ramnull

:1.6.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.6.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.6.4
:1.6.4yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.6.4y
if /I "%c%" EQU "N" goto :version
goto :1.6.4yn

:1.6.4y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.6.4
:1.6.4ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.6.4_1G
if /I "%c%" EQU "2" goto :1.6.4_2G
if /I "%c%" EQU "3" goto :1.6.4_3G
if /I "%c%" EQU "4" goto :1.6.4_4G
if /I "%c%" EQU "5" goto :1.6.4_5G
if /I "%c%" EQU "6" goto :1.6.4_6G
if /I "%c%" EQU "7" goto :1.6.4_7G
if /I "%c%" EQU "8" goto :1.6.4_8G
if /I "%c%" EQU "9" goto :1.6.4_9G
if /I "%c%" EQU "10" goto :1.6.4_10G
if /I "%c%" EQU "11" goto :1.6.4_11G
if /I "%c%" EQU "12" goto :1.6.4_12G
if /I "%c%" EQU "13" goto :1.6.4_13G
if /I "%c%" EQU "14" goto :1.6.4_14G
if /I "%c%" EQU "15" goto :1.6.4_15G
if /I "%c%" EQU "16" goto :1.6.4_16G
goto :1.6.4ramnull

:1.6.4ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.6.4_1G
if /I "%c%" EQU "2" goto :1.6.4_2G
if /I "%c%" EQU "3" goto :1.6.4_3G
if /I "%c%" EQU "4" goto :1.6.4_4G
if /I "%c%" EQU "5" goto :1.6.4_5G
if /I "%c%" EQU "6" goto :1.6.4_6G
if /I "%c%" EQU "7" goto :1.6.4_7G
if /I "%c%" EQU "8" goto :1.6.4_8G
if /I "%c%" EQU "9" goto :1.6.4_9G
if /I "%c%" EQU "10" goto :1.6.4_10G
if /I "%c%" EQU "11" goto :1.6.4_11G
if /I "%c%" EQU "12" goto :1.6.4_12G
if /I "%c%" EQU "13" goto :1.6.4_13G
if /I "%c%" EQU "14" goto :1.6.4_14G
if /I "%c%" EQU "15" goto :1.6.4_15G
if /I "%c%" EQU "16" goto :1.6.4_16G
goto :1.6.4ramnull

:1.6.4_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.6.4_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.6.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.2
:1.7.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.2y
if /I "%c%" EQU "N" goto :version
goto :1.7.2yn

:1.7.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.2
:1.7.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.2_1G
if /I "%c%" EQU "2" goto :1.7.2_2G
if /I "%c%" EQU "3" goto :1.7.2_3G
if /I "%c%" EQU "4" goto :1.7.2_4G
if /I "%c%" EQU "5" goto :1.7.2_5G
if /I "%c%" EQU "6" goto :1.7.2_6G
if /I "%c%" EQU "7" goto :1.7.2_7G
if /I "%c%" EQU "8" goto :1.7.2_8G
if /I "%c%" EQU "9" goto :1.7.2_9G
if /I "%c%" EQU "10" goto :1.7.2_10G
if /I "%c%" EQU "11" goto :1.7.2_11G
if /I "%c%" EQU "12" goto :1.7.2_12G
if /I "%c%" EQU "13" goto :1.7.2_13G
if /I "%c%" EQU "14" goto :1.7.2_14G
if /I "%c%" EQU "15" goto :1.7.2_15G
if /I "%c%" EQU "16" goto :1.7.2_16G
goto :1.7.2ramnull

:1.7.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.2_1G
if /I "%c%" EQU "2" goto :1.7.2_2G
if /I "%c%" EQU "3" goto :1.7.2_3G
if /I "%c%" EQU "4" goto :1.7.2_4G
if /I "%c%" EQU "5" goto :1.7.2_5G
if /I "%c%" EQU "6" goto :1.7.2_6G
if /I "%c%" EQU "7" goto :1.7.2_7G
if /I "%c%" EQU "8" goto :1.7.2_8G
if /I "%c%" EQU "9" goto :1.7.2_9G
if /I "%c%" EQU "10" goto :1.7.2_10G
if /I "%c%" EQU "11" goto :1.7.2_11G
if /I "%c%" EQU "12" goto :1.7.2_12G
if /I "%c%" EQU "13" goto :1.7.2_13G
if /I "%c%" EQU "14" goto :1.7.2_14G
if /I "%c%" EQU "15" goto :1.7.2_15G
if /I "%c%" EQU "16" goto :1.7.2_16G
goto :1.7.2ramnull

:1.7.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.3
:1.7.3yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.3y
if /I "%c%" EQU "N" goto :version
goto :1.7.3yn

:1.7.3y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.3
:1.7.3ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.3_1G
if /I "%c%" EQU "2" goto :1.7.3_2G
if /I "%c%" EQU "3" goto :1.7.3_3G
if /I "%c%" EQU "4" goto :1.7.3_4G
if /I "%c%" EQU "5" goto :1.7.3_5G
if /I "%c%" EQU "6" goto :1.7.3_6G
if /I "%c%" EQU "7" goto :1.7.3_7G
if /I "%c%" EQU "8" goto :1.7.3_8G
if /I "%c%" EQU "9" goto :1.7.3_9G
if /I "%c%" EQU "10" goto :1.7.3_10G
if /I "%c%" EQU "11" goto :1.7.3_11G
if /I "%c%" EQU "12" goto :1.7.3_12G
if /I "%c%" EQU "13" goto :1.7.3_13G
if /I "%c%" EQU "14" goto :1.7.3_14G
if /I "%c%" EQU "15" goto :1.7.3_15G
if /I "%c%" EQU "16" goto :1.7.3_16G
goto :1.7.3ramnull

:1.7.3ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.3_1G
if /I "%c%" EQU "2" goto :1.7.3_2G
if /I "%c%" EQU "3" goto :1.7.3_3G
if /I "%c%" EQU "4" goto :1.7.3_4G
if /I "%c%" EQU "5" goto :1.7.3_5G
if /I "%c%" EQU "6" goto :1.7.3_6G
if /I "%c%" EQU "7" goto :1.7.3_7G
if /I "%c%" EQU "8" goto :1.7.3_8G
if /I "%c%" EQU "9" goto :1.7.3_9G
if /I "%c%" EQU "10" goto :1.7.3_10G
if /I "%c%" EQU "11" goto :1.7.3_11G
if /I "%c%" EQU "12" goto :1.7.3_12G
if /I "%c%" EQU "13" goto :1.7.3_13G
if /I "%c%" EQU "14" goto :1.7.3_14G
if /I "%c%" EQU "15" goto :1.7.3_15G
if /I "%c%" EQU "16" goto :1.7.3_16G
goto :1.7.3ramnull

:1.7.3_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.3_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.4
:1.7.4yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.4y
if /I "%c%" EQU "N" goto :version
goto :1.7.4yn

:1.7.4y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.4
:1.7.4ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.4_1G
if /I "%c%" EQU "2" goto :1.7.4_2G
if /I "%c%" EQU "3" goto :1.7.4_3G
if /I "%c%" EQU "4" goto :1.7.4_4G
if /I "%c%" EQU "5" goto :1.7.4_5G
if /I "%c%" EQU "6" goto :1.7.4_6G
if /I "%c%" EQU "7" goto :1.7.4_7G
if /I "%c%" EQU "8" goto :1.7.4_8G
if /I "%c%" EQU "9" goto :1.7.4_9G
if /I "%c%" EQU "10" goto :1.7.4_10G
if /I "%c%" EQU "11" goto :1.7.4_11G
if /I "%c%" EQU "12" goto :1.7.4_12G
if /I "%c%" EQU "13" goto :1.7.4_13G
if /I "%c%" EQU "14" goto :1.7.4_14G
if /I "%c%" EQU "15" goto :1.7.4_15G
if /I "%c%" EQU "16" goto :1.7.4_16G
goto :1.7.4ramnull

:1.7.4ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.4_1G
if /I "%c%" EQU "2" goto :1.7.4_2G
if /I "%c%" EQU "3" goto :1.7.4_3G
if /I "%c%" EQU "4" goto :1.7.4_4G
if /I "%c%" EQU "5" goto :1.7.4_5G
if /I "%c%" EQU "6" goto :1.7.4_6G
if /I "%c%" EQU "7" goto :1.7.4_7G
if /I "%c%" EQU "8" goto :1.7.4_8G
if /I "%c%" EQU "9" goto :1.7.4_9G
if /I "%c%" EQU "10" goto :1.7.4_10G
if /I "%c%" EQU "11" goto :1.7.4_11G
if /I "%c%" EQU "12" goto :1.7.4_12G
if /I "%c%" EQU "13" goto :1.7.4_13G
if /I "%c%" EQU "14" goto :1.7.4_14G
if /I "%c%" EQU "15" goto :1.7.4_15G
if /I "%c%" EQU "16" goto :1.7.4_16G
goto :1.7.4ramnull

:1.7.4_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.4_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.5
:1.7.5yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.5y
if /I "%c%" EQU "N" goto :version
goto :1.7.5yn

:1.7.5y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.5
:1.7.5ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.5_1G
if /I "%c%" EQU "2" goto :1.7.5_2G
if /I "%c%" EQU "3" goto :1.7.5_3G
if /I "%c%" EQU "4" goto :1.7.5_4G
if /I "%c%" EQU "5" goto :1.7.5_5G
if /I "%c%" EQU "6" goto :1.7.5_6G
if /I "%c%" EQU "7" goto :1.7.5_7G
if /I "%c%" EQU "8" goto :1.7.5_8G
if /I "%c%" EQU "9" goto :1.7.5_9G
if /I "%c%" EQU "10" goto :1.7.5_10G
if /I "%c%" EQU "11" goto :1.7.5_11G
if /I "%c%" EQU "12" goto :1.7.5_12G
if /I "%c%" EQU "13" goto :1.7.5_13G
if /I "%c%" EQU "14" goto :1.7.5_14G
if /I "%c%" EQU "15" goto :1.7.5_15G
if /I "%c%" EQU "16" goto :1.7.5_16G
goto :1.7.5ramnull

:1.7.5ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.5_1G
if /I "%c%" EQU "2" goto :1.7.5_2G
if /I "%c%" EQU "3" goto :1.7.5_3G
if /I "%c%" EQU "4" goto :1.7.5_4G
if /I "%c%" EQU "5" goto :1.7.5_5G
if /I "%c%" EQU "6" goto :1.7.5_6G
if /I "%c%" EQU "7" goto :1.7.5_7G
if /I "%c%" EQU "8" goto :1.7.5_8G
if /I "%c%" EQU "9" goto :1.7.5_9G
if /I "%c%" EQU "10" goto :1.7.5_10G
if /I "%c%" EQU "11" goto :1.7.5_11G
if /I "%c%" EQU "12" goto :1.7.5_12G
if /I "%c%" EQU "13" goto :1.7.5_13G
if /I "%c%" EQU "14" goto :1.7.5_14G
if /I "%c%" EQU "15" goto :1.7.5_15G
if /I "%c%" EQU "16" goto :1.7.5_16G
goto :1.7.5ramnull

:1.7.5_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.5_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.6
:1.7.6yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.6y
if /I "%c%" EQU "N" goto :version
goto :1.7.6yn

:1.7.6y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.6
:1.7.6ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.6_1G
if /I "%c%" EQU "2" goto :1.7.6_2G
if /I "%c%" EQU "3" goto :1.7.6_3G
if /I "%c%" EQU "4" goto :1.7.6_4G
if /I "%c%" EQU "5" goto :1.7.6_5G
if /I "%c%" EQU "6" goto :1.7.6_6G
if /I "%c%" EQU "7" goto :1.7.6_7G
if /I "%c%" EQU "8" goto :1.7.6_8G
if /I "%c%" EQU "9" goto :1.7.6_9G
if /I "%c%" EQU "10" goto :1.7.6_10G
if /I "%c%" EQU "11" goto :1.7.6_11G
if /I "%c%" EQU "12" goto :1.7.6_12G
if /I "%c%" EQU "13" goto :1.7.6_13G
if /I "%c%" EQU "14" goto :1.7.6_14G
if /I "%c%" EQU "15" goto :1.7.6_15G
if /I "%c%" EQU "16" goto :1.7.6_16G
goto :1.7.6ramnull

:1.7.6ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.6_1G
if /I "%c%" EQU "2" goto :1.7.6_2G
if /I "%c%" EQU "3" goto :1.7.6_3G
if /I "%c%" EQU "4" goto :1.7.6_4G
if /I "%c%" EQU "5" goto :1.7.6_5G
if /I "%c%" EQU "6" goto :1.7.6_6G
if /I "%c%" EQU "7" goto :1.7.6_7G
if /I "%c%" EQU "8" goto :1.7.6_8G
if /I "%c%" EQU "9" goto :1.7.6_9G
if /I "%c%" EQU "10" goto :1.7.6_10G
if /I "%c%" EQU "11" goto :1.7.6_11G
if /I "%c%" EQU "12" goto :1.7.6_12G
if /I "%c%" EQU "13" goto :1.7.6_13G
if /I "%c%" EQU "14" goto :1.7.6_14G
if /I "%c%" EQU "15" goto :1.7.6_15G
if /I "%c%" EQU "16" goto :1.7.6_16G
goto :1.7.6ramnull

:1.7.6_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.6_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.7
:1.7.7yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.7y
if /I "%c%" EQU "N" goto :version
goto :1.7.7yn

:1.7.7y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.7
:1.7.7ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.7_1G
if /I "%c%" EQU "2" goto :1.7.7_2G
if /I "%c%" EQU "3" goto :1.7.7_3G
if /I "%c%" EQU "4" goto :1.7.7_4G
if /I "%c%" EQU "5" goto :1.7.7_5G
if /I "%c%" EQU "6" goto :1.7.7_6G
if /I "%c%" EQU "7" goto :1.7.7_7G
if /I "%c%" EQU "8" goto :1.7.7_8G
if /I "%c%" EQU "9" goto :1.7.7_9G
if /I "%c%" EQU "10" goto :1.7.7_10G
if /I "%c%" EQU "11" goto :1.7.7_11G
if /I "%c%" EQU "12" goto :1.7.7_12G
if /I "%c%" EQU "13" goto :1.7.7_13G
if /I "%c%" EQU "14" goto :1.7.7_14G
if /I "%c%" EQU "15" goto :1.7.7_15G
if /I "%c%" EQU "16" goto :1.7.7_16G
goto :1.7.7amnull

:1.7.7ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.7_1G
if /I "%c%" EQU "2" goto :1.7.7_2G
if /I "%c%" EQU "3" goto :1.7.7_3G
if /I "%c%" EQU "4" goto :1.7.7_4G
if /I "%c%" EQU "5" goto :1.7.7_5G
if /I "%c%" EQU "6" goto :1.7.7_6G
if /I "%c%" EQU "7" goto :1.7.7_7G
if /I "%c%" EQU "8" goto :1.7.7_8G
if /I "%c%" EQU "9" goto :1.7.7_9G
if /I "%c%" EQU "10" goto :1.7.7_10G
if /I "%c%" EQU "11" goto :1.7.7_11G
if /I "%c%" EQU "12" goto :1.7.7_12G
if /I "%c%" EQU "13" goto :1.7.7_13G
if /I "%c%" EQU "14" goto :1.7.7_14G
if /I "%c%" EQU "15" goto :1.7.7_15G
if /I "%c%" EQU "16" goto :1.7.7_16G
goto :1.7.7ramnull

:1.7.7_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.7_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.8
:1.7.8yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.8y
if /I "%c%" EQU "N" goto :version
goto :1.7.8yn

:1.7.8y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.8
:1.7.8ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.8_1G
if /I "%c%" EQU "2" goto :1.7.8_2G
if /I "%c%" EQU "3" goto :1.7.8_3G
if /I "%c%" EQU "4" goto :1.7.8_4G
if /I "%c%" EQU "5" goto :1.7.8_5G
if /I "%c%" EQU "6" goto :1.7.8_6G
if /I "%c%" EQU "7" goto :1.7.8_7G
if /I "%c%" EQU "8" goto :1.7.8_8G
if /I "%c%" EQU "9" goto :1.7.8_9G
if /I "%c%" EQU "10" goto :1.7.8_10G
if /I "%c%" EQU "11" goto :1.7.8_11G
if /I "%c%" EQU "12" goto :1.7.8_12G
if /I "%c%" EQU "13" goto :1.7.8_13G
if /I "%c%" EQU "14" goto :1.7.8_14G
if /I "%c%" EQU "15" goto :1.7.8_15G
if /I "%c%" EQU "16" goto :1.7.8_16G
goto :1.7.8ramnull

:1.7.8ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.8_1G
if /I "%c%" EQU "2" goto :1.7.8_2G
if /I "%c%" EQU "3" goto :1.7.8_3G
if /I "%c%" EQU "4" goto :1.7.8_4G
if /I "%c%" EQU "5" goto :1.7.8_5G
if /I "%c%" EQU "6" goto :1.7.8_6G
if /I "%c%" EQU "7" goto :1.7.8_7G
if /I "%c%" EQU "8" goto :1.7.8_8G
if /I "%c%" EQU "9" goto :1.7.8_9G
if /I "%c%" EQU "10" goto :1.7.8_10G
if /I "%c%" EQU "11" goto :1.7.8_11G
if /I "%c%" EQU "12" goto :1.7.8_12G
if /I "%c%" EQU "13" goto :1.7.8_13G
if /I "%c%" EQU "14" goto :1.7.8_14G
if /I "%c%" EQU "15" goto :1.7.8_15G
if /I "%c%" EQU "16" goto :1.7.8_16G
goto :1.7.8ramnull

:1.7.8_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.8_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.9
:1.7.9yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.9y
if /I "%c%" EQU "N" goto :version
goto :1.7.9yn

:1.7.9y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.9
:1.7.9ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.9_1G
if /I "%c%" EQU "2" goto :1.7.9_2G
if /I "%c%" EQU "3" goto :1.7.9_3G
if /I "%c%" EQU "4" goto :1.7.9_4G
if /I "%c%" EQU "5" goto :1.7.9_5G
if /I "%c%" EQU "6" goto :1.7.9_6G
if /I "%c%" EQU "7" goto :1.7.9_7G
if /I "%c%" EQU "8" goto :1.7.9_8G
if /I "%c%" EQU "9" goto :1.7.9_9G
if /I "%c%" EQU "10" goto :1.7.9_10G
if /I "%c%" EQU "11" goto :1.7.9_11G
if /I "%c%" EQU "12" goto :1.7.9_12G
if /I "%c%" EQU "13" goto :1.7.9_13G
if /I "%c%" EQU "14" goto :1.7.9_14G
if /I "%c%" EQU "15" goto :1.7.9_15G
if /I "%c%" EQU "16" goto :1.7.9_16G
goto :1.7.9ramnull

:1.7.9ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.9_1G
if /I "%c%" EQU "2" goto :1.7.9_2G
if /I "%c%" EQU "3" goto :1.7.9_3G
if /I "%c%" EQU "4" goto :1.7.9_4G
if /I "%c%" EQU "5" goto :1.7.9_5G
if /I "%c%" EQU "6" goto :1.7.9_6G
if /I "%c%" EQU "7" goto :1.7.9_7G
if /I "%c%" EQU "8" goto :1.7.9_8G
if /I "%c%" EQU "9" goto :1.7.9_9G
if /I "%c%" EQU "10" goto :1.7.9_10G
if /I "%c%" EQU "11" goto :1.7.9_11G
if /I "%c%" EQU "12" goto :1.7.9_12G
if /I "%c%" EQU "13" goto :1.7.9_13G
if /I "%c%" EQU "14" goto :1.7.9_14G
if /I "%c%" EQU "15" goto :1.7.9_15G
if /I "%c%" EQU "16" goto :1.7.9_16G
goto :1.7.9ramnull

:1.7.9_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.9_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.7.10
:1.7.10yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.7.10y
if /I "%c%" EQU "N" goto :version
goto :1.7.10yn

:1.7.10y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.7.10
:1.7.10ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.7.10_1G
if /I "%c%" EQU "2" goto :1.7.10_2G
if /I "%c%" EQU "3" goto :1.7.10_3G
if /I "%c%" EQU "4" goto :1.7.10_4G
if /I "%c%" EQU "5" goto :1.7.10_5G
if /I "%c%" EQU "6" goto :1.7.10_6G
if /I "%c%" EQU "7" goto :1.7.10_7G
if /I "%c%" EQU "8" goto :1.7.10_8G
if /I "%c%" EQU "9" goto :1.7.10_9G
if /I "%c%" EQU "10" goto :1.7.10_10G
if /I "%c%" EQU "11" goto :1.7.10_11G
if /I "%c%" EQU "12" goto :1.7.10_12G
if /I "%c%" EQU "13" goto :1.7.10_13G
if /I "%c%" EQU "14" goto :1.7.10_14G
if /I "%c%" EQU "15" goto :1.7.10_15G
if /I "%c%" EQU "16" goto :1.7.10_16G
goto :1.7.10ramnull

:1.7.10ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.7.10_1G
if /I "%c%" EQU "2" goto :1.7.10_2G
if /I "%c%" EQU "3" goto :1.7.10_3G
if /I "%c%" EQU "4" goto :1.7.10_4G
if /I "%c%" EQU "5" goto :1.7.10_5G
if /I "%c%" EQU "6" goto :1.7.10_6G
if /I "%c%" EQU "7" goto :1.7.10_7G
if /I "%c%" EQU "8" goto :1.7.10_8G
if /I "%c%" EQU "9" goto :1.7.10_9G
if /I "%c%" EQU "10" goto :1.7.10_10G
if /I "%c%" EQU "11" goto :1.7.10_11G
if /I "%c%" EQU "12" goto :1.7.10_12G
if /I "%c%" EQU "13" goto :1.7.10_13G
if /I "%c%" EQU "14" goto :1.7.10_14G
if /I "%c%" EQU "15" goto :1.7.10_15G
if /I "%c%" EQU "16" goto :1.7.10_16G
goto :1.7.10ramnull

:1.7.10_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.7.10_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.7.10.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8
:1.8yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8y
if /I "%c%" EQU "N" goto :version
goto :1.8yn

:1.8y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8
:1.8ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8_1G
if /I "%c%" EQU "2" goto :1.8_2G
if /I "%c%" EQU "3" goto :1.8_3G
if /I "%c%" EQU "4" goto :1.8_4G
if /I "%c%" EQU "5" goto :1.8_5G
if /I "%c%" EQU "6" goto :1.8_6G
if /I "%c%" EQU "7" goto :1.8_7G
if /I "%c%" EQU "8" goto :1.8_8G
if /I "%c%" EQU "9" goto :1.8_9G
if /I "%c%" EQU "10" goto :1.8_10G
if /I "%c%" EQU "11" goto :1.8_11G
if /I "%c%" EQU "12" goto :1.8_12G
if /I "%c%" EQU "13" goto :1.8_13G
if /I "%c%" EQU "14" goto :1.8_14G
if /I "%c%" EQU "15" goto :1.8_15G
if /I "%c%" EQU "16" goto :1.8_16G
goto :1.8ramnull

:1.8ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8_1G
if /I "%c%" EQU "2" goto :1.8_2G
if /I "%c%" EQU "3" goto :1.8_3G
if /I "%c%" EQU "4" goto :1.8_4G
if /I "%c%" EQU "5" goto :1.8_5G
if /I "%c%" EQU "6" goto :1.8_6G
if /I "%c%" EQU "7" goto :1.8_7G
if /I "%c%" EQU "8" goto :1.8_8G
if /I "%c%" EQU "9" goto :1.8_9G
if /I "%c%" EQU "10" goto :1.8_10G
if /I "%c%" EQU "11" goto :1.8_11G
if /I "%c%" EQU "12" goto :1.8_12G
if /I "%c%" EQU "13" goto :1.8_13G
if /I "%c%" EQU "14" goto :1.8_14G
if /I "%c%" EQU "15" goto :1.8_15G
if /I "%c%" EQU "16" goto :1.8_16G
goto :1.8ramnull

:1.8_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.1
:1.8.1yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.1y
if /I "%c%" EQU "N" goto :version
goto :1.8.1yn

:1.8.1y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.1
:1.8.1ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.1_1G
if /I "%c%" EQU "2" goto :1.8.1_2G
if /I "%c%" EQU "3" goto :1.8.1_3G
if /I "%c%" EQU "4" goto :1.8.1_4G
if /I "%c%" EQU "5" goto :1.8.1_5G
if /I "%c%" EQU "6" goto :1.8.1_6G
if /I "%c%" EQU "7" goto :1.8.1_7G
if /I "%c%" EQU "8" goto :1.8.1_8G
if /I "%c%" EQU "9" goto :1.8.1_9G
if /I "%c%" EQU "10" goto :1.8.1_10G
if /I "%c%" EQU "11" goto :1.8.1_11G
if /I "%c%" EQU "12" goto :1.8.1_12G
if /I "%c%" EQU "13" goto :1.8.1_13G
if /I "%c%" EQU "14" goto :1.8.1_14G
if /I "%c%" EQU "15" goto :1.8.1_15G
if /I "%c%" EQU "16" goto :1.8.1_16G
goto :1.8.1ramnull

:1.8.1ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.1_1G
if /I "%c%" EQU "2" goto :1.8.1_2G
if /I "%c%" EQU "3" goto :1.8.1_3G
if /I "%c%" EQU "4" goto :1.8.1_4G
if /I "%c%" EQU "5" goto :1.8.1_5G
if /I "%c%" EQU "6" goto :1.8.1_6G
if /I "%c%" EQU "7" goto :1.8.1_7G
if /I "%c%" EQU "8" goto :1.8.1_8G
if /I "%c%" EQU "9" goto :1.8.1_9G
if /I "%c%" EQU "10" goto :1.8.1_10G
if /I "%c%" EQU "11" goto :1.8.1_11G
if /I "%c%" EQU "12" goto :1.8.1_12G
if /I "%c%" EQU "13" goto :1.8.1_13G
if /I "%c%" EQU "14" goto :1.8.1_14G
if /I "%c%" EQU "15" goto :1.8.1_15G
if /I "%c%" EQU "16" goto :1.8.1_16G
goto :1.8.1ramnull

:1.8.1_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.1_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.2
:1.8.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.2y
if /I "%c%" EQU "N" goto :version
goto :1.8.2yn

:1.8.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.2
:1.8.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.2_1G
if /I "%c%" EQU "2" goto :1.8.2_2G
if /I "%c%" EQU "3" goto :1.8.2_3G
if /I "%c%" EQU "4" goto :1.8.2_4G
if /I "%c%" EQU "5" goto :1.8.2_5G
if /I "%c%" EQU "6" goto :1.8.2_6G
if /I "%c%" EQU "7" goto :1.8.2_7G
if /I "%c%" EQU "8" goto :1.8.2_8G
if /I "%c%" EQU "9" goto :1.8.2_9G
if /I "%c%" EQU "10" goto :1.8.2_10G
if /I "%c%" EQU "11" goto :1.8.2_11G
if /I "%c%" EQU "12" goto :1.8.2_12G
if /I "%c%" EQU "13" goto :1.8.2_13G
if /I "%c%" EQU "14" goto :1.8.2_14G
if /I "%c%" EQU "15" goto :1.8.2_15G
if /I "%c%" EQU "16" goto :1.8.2_16G
goto :1.8.2ramnull

:1.8.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.2_1G
if /I "%c%" EQU "2" goto :1.8.2_2G
if /I "%c%" EQU "3" goto :1.8.2_3G
if /I "%c%" EQU "4" goto :1.8.2_4G
if /I "%c%" EQU "5" goto :1.8.2_5G
if /I "%c%" EQU "6" goto :1.8.2_6G
if /I "%c%" EQU "7" goto :1.8.2_7G
if /I "%c%" EQU "8" goto :1.8.2_8G
if /I "%c%" EQU "9" goto :1.8.2_9G
if /I "%c%" EQU "10" goto :1.8.2_10G
if /I "%c%" EQU "11" goto :1.8.2_11G
if /I "%c%" EQU "12" goto :1.8.2_12G
if /I "%c%" EQU "13" goto :1.8.2_13G
if /I "%c%" EQU "14" goto :1.8.2_14G
if /I "%c%" EQU "15" goto :1.8.2_15G
if /I "%c%" EQU "16" goto :1.8.2_16G
goto :1.8.2ramnull

:1.8.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.3
:1.8.3yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.3y
if /I "%c%" EQU "N" goto :version
goto :1.8.3yn

:1.8.3y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.3
:1.8.3ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.3_1G
if /I "%c%" EQU "2" goto :1.8.3_2G
if /I "%c%" EQU "3" goto :1.8.3_3G
if /I "%c%" EQU "4" goto :1.8.3_4G
if /I "%c%" EQU "5" goto :1.8.3_5G
if /I "%c%" EQU "6" goto :1.8.3_6G
if /I "%c%" EQU "7" goto :1.8.3_7G
if /I "%c%" EQU "8" goto :1.8.3_8G
if /I "%c%" EQU "9" goto :1.8.3_9G
if /I "%c%" EQU "10" goto :1.8.3_10G
if /I "%c%" EQU "11" goto :1.8.3_11G
if /I "%c%" EQU "12" goto :1.8.3_12G
if /I "%c%" EQU "13" goto :1.8.3_13G
if /I "%c%" EQU "14" goto :1.8.3_14G
if /I "%c%" EQU "15" goto :1.8.3_15G
if /I "%c%" EQU "16" goto :1.8.3_16G
goto :1.8.3ramnull

:1.8.3ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.3_1G
if /I "%c%" EQU "2" goto :1.8.3_2G
if /I "%c%" EQU "3" goto :1.8.3_3G
if /I "%c%" EQU "4" goto :1.8.3_4G
if /I "%c%" EQU "5" goto :1.8.3_5G
if /I "%c%" EQU "6" goto :1.8.3_6G
if /I "%c%" EQU "7" goto :1.8.3_7G
if /I "%c%" EQU "8" goto :1.8.3_8G
if /I "%c%" EQU "9" goto :1.8.3_9G
if /I "%c%" EQU "10" goto :1.8.3_10G
if /I "%c%" EQU "11" goto :1.8.3_11G
if /I "%c%" EQU "12" goto :1.8.3_12G
if /I "%c%" EQU "13" goto :1.8.3_13G
if /I "%c%" EQU "14" goto :1.8.3_14G
if /I "%c%" EQU "15" goto :1.8.3_15G
if /I "%c%" EQU "16" goto :1.8.3_16G
goto :1.8.3ramnull

:1.8.3_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.3_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.4
:1.8.4yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.4y
if /I "%c%" EQU "N" goto :version
goto :1.8.4yn

:1.8.4y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.4
:1.8.4ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.4_1G
if /I "%c%" EQU "2" goto :1.8.4_2G
if /I "%c%" EQU "3" goto :1.8.4_3G
if /I "%c%" EQU "4" goto :1.8.4_4G
if /I "%c%" EQU "5" goto :1.8.4_5G
if /I "%c%" EQU "6" goto :1.8.4_6G
if /I "%c%" EQU "7" goto :1.8.4_7G
if /I "%c%" EQU "8" goto :1.8.4_8G
if /I "%c%" EQU "9" goto :1.8.4_9G
if /I "%c%" EQU "10" goto :1.8.4_10G
if /I "%c%" EQU "11" goto :1.8.4_11G
if /I "%c%" EQU "12" goto :1.8.4_12G
if /I "%c%" EQU "13" goto :1.8.4_13G
if /I "%c%" EQU "14" goto :1.8.4_14G
if /I "%c%" EQU "15" goto :1.8.4_15G
if /I "%c%" EQU "16" goto :1.8.4_16G
goto :1.8.4ramnull

:1.8.4ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.4_1G
if /I "%c%" EQU "2" goto :1.8.4_2G
if /I "%c%" EQU "3" goto :1.8.4_3G
if /I "%c%" EQU "4" goto :1.8.4_4G
if /I "%c%" EQU "5" goto :1.8.4_5G
if /I "%c%" EQU "6" goto :1.8.4_6G
if /I "%c%" EQU "7" goto :1.8.4_7G
if /I "%c%" EQU "8" goto :1.8.4_8G
if /I "%c%" EQU "9" goto :1.8.4_9G
if /I "%c%" EQU "10" goto :1.8.4_10G
if /I "%c%" EQU "11" goto :1.8.4_11G
if /I "%c%" EQU "12" goto :1.8.4_12G
if /I "%c%" EQU "13" goto :1.8.4_13G
if /I "%c%" EQU "14" goto :1.8.4_14G
if /I "%c%" EQU "15" goto :1.8.4_15G
if /I "%c%" EQU "16" goto :1.8.4_16G
goto :1.8.4ramnull

:1.8.4_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.4_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.5
:1.8.5yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.5y
if /I "%c%" EQU "N" goto :version
goto :1.8.5yn

:1.8.5y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.5
:1.8.5ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.5_1G
if /I "%c%" EQU "2" goto :1.8.5_2G
if /I "%c%" EQU "3" goto :1.8.5_3G
if /I "%c%" EQU "4" goto :1.8.5_4G
if /I "%c%" EQU "5" goto :1.8.5_5G
if /I "%c%" EQU "6" goto :1.8.5_6G
if /I "%c%" EQU "7" goto :1.8.5_7G
if /I "%c%" EQU "8" goto :1.8.5_8G
if /I "%c%" EQU "9" goto :1.8.5_9G
if /I "%c%" EQU "10" goto :1.8.5_10G
if /I "%c%" EQU "11" goto :1.8.5_11G
if /I "%c%" EQU "12" goto :1.8.5_12G
if /I "%c%" EQU "13" goto :1.8.5_13G
if /I "%c%" EQU "14" goto :1.8.5_14G
if /I "%c%" EQU "15" goto :1.8.5_15G
if /I "%c%" EQU "16" goto :1.8.5_16G
goto :1.8.5ramnull

:1.8.5ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.5_1G
if /I "%c%" EQU "2" goto :1.8.5_2G
if /I "%c%" EQU "3" goto :1.8.5_3G
if /I "%c%" EQU "4" goto :1.8.5_4G
if /I "%c%" EQU "5" goto :1.8.5_5G
if /I "%c%" EQU "6" goto :1.8.5_6G
if /I "%c%" EQU "7" goto :1.8.5_7G
if /I "%c%" EQU "8" goto :1.8.5_8G
if /I "%c%" EQU "9" goto :1.8.5_9G
if /I "%c%" EQU "10" goto :1.8.5_10G
if /I "%c%" EQU "11" goto :1.8.5_11G
if /I "%c%" EQU "12" goto :1.8.5_12G
if /I "%c%" EQU "13" goto :1.8.5_13G
if /I "%c%" EQU "14" goto :1.8.5_14G
if /I "%c%" EQU "15" goto :1.8.5_15G
if /I "%c%" EQU "16" goto :1.8.5_16G
goto :1.8.5ramnull

:1.8.5_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.5_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.5.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.6
:1.8.6yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.6y
if /I "%c%" EQU "N" goto :version
goto :1.8.6yn

:1.8.6y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.6
:1.8.6ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.6_1G
if /I "%c%" EQU "2" goto :1.8.6_2G
if /I "%c%" EQU "3" goto :1.8.6_3G
if /I "%c%" EQU "4" goto :1.8.6_4G
if /I "%c%" EQU "5" goto :1.8.6_5G
if /I "%c%" EQU "6" goto :1.8.6_6G
if /I "%c%" EQU "7" goto :1.8.6_7G
if /I "%c%" EQU "8" goto :1.8.6_8G
if /I "%c%" EQU "9" goto :1.8.6_9G
if /I "%c%" EQU "10" goto :1.8.6_10G
if /I "%c%" EQU "11" goto :1.8.6_11G
if /I "%c%" EQU "12" goto :1.8.6_12G
if /I "%c%" EQU "13" goto :1.8.6_13G
if /I "%c%" EQU "14" goto :1.8.6_14G
if /I "%c%" EQU "15" goto :1.8.6_15G
if /I "%c%" EQU "16" goto :1.8.6_16G
goto :1.8.6ramnull

:1.8.6ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.6_1G
if /I "%c%" EQU "2" goto :1.8.6_2G
if /I "%c%" EQU "3" goto :1.8.6_3G
if /I "%c%" EQU "4" goto :1.8.6_4G
if /I "%c%" EQU "5" goto :1.8.6_5G
if /I "%c%" EQU "6" goto :1.8.6_6G
if /I "%c%" EQU "7" goto :1.8.6_7G
if /I "%c%" EQU "8" goto :1.8.6_8G
if /I "%c%" EQU "9" goto :1.8.6_9G
if /I "%c%" EQU "10" goto :1.8.6_10G
if /I "%c%" EQU "11" goto :1.8.6_11G
if /I "%c%" EQU "12" goto :1.8.6_12G
if /I "%c%" EQU "13" goto :1.8.6_13G
if /I "%c%" EQU "14" goto :1.8.6_14G
if /I "%c%" EQU "15" goto :1.8.6_15G
if /I "%c%" EQU "16" goto :1.8.6_16G
goto :1.8.6ramnull

:1.8.6_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.6_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.6.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.7
:1.8.7yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.7y
if /I "%c%" EQU "N" goto :version
goto :1.8.7yn

:1.8.7y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.7
:1.8.7ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.7_1G
if /I "%c%" EQU "2" goto :1.8.7_2G
if /I "%c%" EQU "3" goto :1.8.7_3G
if /I "%c%" EQU "4" goto :1.8.7_4G
if /I "%c%" EQU "5" goto :1.8.7_5G
if /I "%c%" EQU "6" goto :1.8.7_6G
if /I "%c%" EQU "7" goto :1.8.7_7G
if /I "%c%" EQU "8" goto :1.8.7_8G
if /I "%c%" EQU "9" goto :1.8.7_9G
if /I "%c%" EQU "10" goto :1.8.7_10G
if /I "%c%" EQU "11" goto :1.8.7_11G
if /I "%c%" EQU "12" goto :1.8.7_12G
if /I "%c%" EQU "13" goto :1.8.7_13G
if /I "%c%" EQU "14" goto :1.8.7_14G
if /I "%c%" EQU "15" goto :1.8.7_15G
if /I "%c%" EQU "16" goto :1.8.7_16G
goto :1.8.7ramnull

:1.8.7ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.7_1G
if /I "%c%" EQU "2" goto :1.8.7_2G
if /I "%c%" EQU "3" goto :1.8.7_3G
if /I "%c%" EQU "4" goto :1.8.7_4G
if /I "%c%" EQU "5" goto :1.8.7_5G
if /I "%c%" EQU "6" goto :1.8.7_6G
if /I "%c%" EQU "7" goto :1.8.7_7G
if /I "%c%" EQU "8" goto :1.8.7_8G
if /I "%c%" EQU "9" goto :1.8.7_9G
if /I "%c%" EQU "10" goto :1.8.7_10G
if /I "%c%" EQU "11" goto :1.8.7_11G
if /I "%c%" EQU "12" goto :1.8.7_12G
if /I "%c%" EQU "13" goto :1.8.7_13G
if /I "%c%" EQU "14" goto :1.8.7_14G
if /I "%c%" EQU "15" goto :1.8.7_15G
if /I "%c%" EQU "16" goto :1.8.7_16G
goto :1.8.7ramnull

:1.8.7_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.7_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.7.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.8
:1.8.8yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.8y
if /I "%c%" EQU "N" goto :version
goto :1.8.8yn

:1.8.8y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.8
:1.8.8ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.8_1G
if /I "%c%" EQU "2" goto :1.8.8_2G
if /I "%c%" EQU "3" goto :1.8.8_3G
if /I "%c%" EQU "4" goto :1.8.8_4G
if /I "%c%" EQU "5" goto :1.8.8_5G
if /I "%c%" EQU "6" goto :1.8.8_6G
if /I "%c%" EQU "7" goto :1.8.8_7G
if /I "%c%" EQU "8" goto :1.8.8_8G
if /I "%c%" EQU "9" goto :1.8.8_9G
if /I "%c%" EQU "10" goto :1.8.8_10G
if /I "%c%" EQU "11" goto :1.8.8_11G
if /I "%c%" EQU "12" goto :1.8.8_12G
if /I "%c%" EQU "13" goto :1.8.8_13G
if /I "%c%" EQU "14" goto :1.8.8_14G
if /I "%c%" EQU "15" goto :1.8.8_15G
if /I "%c%" EQU "16" goto :1.8.8_16G
goto :1.8.8ramnull

:1.8.8ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.8_1G
if /I "%c%" EQU "2" goto :1.8.8_2G
if /I "%c%" EQU "3" goto :1.8.8_3G
if /I "%c%" EQU "4" goto :1.8.8_4G
if /I "%c%" EQU "5" goto :1.8.8_5G
if /I "%c%" EQU "6" goto :1.8.8_6G
if /I "%c%" EQU "7" goto :1.8.8_7G
if /I "%c%" EQU "8" goto :1.8.8_8G
if /I "%c%" EQU "9" goto :1.8.8_9G
if /I "%c%" EQU "10" goto :1.8.8_10G
if /I "%c%" EQU "11" goto :1.8.8_11G
if /I "%c%" EQU "12" goto :1.8.8_12G
if /I "%c%" EQU "13" goto :1.8.8_13G
if /I "%c%" EQU "14" goto :1.8.8_14G
if /I "%c%" EQU "15" goto :1.8.8_15G
if /I "%c%" EQU "16" goto :1.8.8_16G
goto :1.8.8ramnull

:1.8.8_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.8_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.8.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.8.9
:1.8.9yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.8.9y
if /I "%c%" EQU "N" goto :version
goto :1.8.9yn

:1.8.9y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.8.9
:1.8.9ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.8.9_1G
if /I "%c%" EQU "2" goto :1.8.9_2G
if /I "%c%" EQU "3" goto :1.8.9_3G
if /I "%c%" EQU "4" goto :1.8.9_4G
if /I "%c%" EQU "5" goto :1.8.9_5G
if /I "%c%" EQU "6" goto :1.8.9_6G
if /I "%c%" EQU "7" goto :1.8.9_7G
if /I "%c%" EQU "8" goto :1.8.9_8G
if /I "%c%" EQU "9" goto :1.8.9_9G
if /I "%c%" EQU "10" goto :1.8.9_10G
if /I "%c%" EQU "11" goto :1.8.9_11G
if /I "%c%" EQU "12" goto :1.8.9_12G
if /I "%c%" EQU "13" goto :1.8.9_13G
if /I "%c%" EQU "14" goto :1.8.9_14G
if /I "%c%" EQU "15" goto :1.8.9_15G
if /I "%c%" EQU "16" goto :1.8.9_16G
goto :1.8.9ramnull

:1.8.9ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.8.9_1G
if /I "%c%" EQU "2" goto :1.8.9_2G
if /I "%c%" EQU "3" goto :1.8.9_3G
if /I "%c%" EQU "4" goto :1.8.9_4G
if /I "%c%" EQU "5" goto :1.8.9_5G
if /I "%c%" EQU "6" goto :1.8.9_6G
if /I "%c%" EQU "7" goto :1.8.9_7G
if /I "%c%" EQU "8" goto :1.8.9_8G
if /I "%c%" EQU "9" goto :1.8.9_9G
if /I "%c%" EQU "10" goto :1.8.9_10G
if /I "%c%" EQU "11" goto :1.8.9_11G
if /I "%c%" EQU "12" goto :1.8.9_12G
if /I "%c%" EQU "13" goto :1.8.9_13G
if /I "%c%" EQU "14" goto :1.8.9_14G
if /I "%c%" EQU "15" goto :1.8.9_15G
if /I "%c%" EQU "16" goto :1.8.9_16G
goto :1.8.9ramnull

:1.8.9_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.8.9_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.8.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.9
:1.9yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.9y
if /I "%c%" EQU "N" goto :version
goto :1.9yn

:1.9y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.9
:1.9ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.9_1G
if /I "%c%" EQU "2" goto :1.9_2G
if /I "%c%" EQU "3" goto :1.9_3G
if /I "%c%" EQU "4" goto :1.9_4G
if /I "%c%" EQU "5" goto :1.9_5G
if /I "%c%" EQU "6" goto :1.9_6G
if /I "%c%" EQU "7" goto :1.9_7G
if /I "%c%" EQU "8" goto :1.9_8G
if /I "%c%" EQU "9" goto :1.9_9G
if /I "%c%" EQU "10" goto :1.9_10G
if /I "%c%" EQU "11" goto :1.9_11G
if /I "%c%" EQU "12" goto :1.9_12G
if /I "%c%" EQU "13" goto :1.9_13G
if /I "%c%" EQU "14" goto :1.9_14G
if /I "%c%" EQU "15" goto :1.9_15G
if /I "%c%" EQU "16" goto :1.9_16G
goto :1.9ramnull

:1.9ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.9_1G
if /I "%c%" EQU "2" goto :1.9_2G
if /I "%c%" EQU "3" goto :1.9_3G
if /I "%c%" EQU "4" goto :1.9_4G
if /I "%c%" EQU "5" goto :1.9_5G
if /I "%c%" EQU "6" goto :1.9_6G
if /I "%c%" EQU "7" goto :1.9_7G
if /I "%c%" EQU "8" goto :1.9_8G
if /I "%c%" EQU "9" goto :1.9_9G
if /I "%c%" EQU "10" goto :1.9_10G
if /I "%c%" EQU "11" goto :1.9_11G
if /I "%c%" EQU "12" goto :1.9_12G
if /I "%c%" EQU "13" goto :1.9_13G
if /I "%c%" EQU "14" goto :1.9_14G
if /I "%c%" EQU "15" goto :1.9_15G
if /I "%c%" EQU "16" goto :1.9_16G
goto :1.9ramnull

:1.9_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.9.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.9.1
:1.9.1yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.9.1y
if /I "%c%" EQU "N" goto :version
goto :1.9.1yn

:1.9.1y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.9.1
:1.9.1ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.9.1_1G
if /I "%c%" EQU "2" goto :1.9.1_2G
if /I "%c%" EQU "3" goto :1.9.1_3G
if /I "%c%" EQU "4" goto :1.9.1_4G
if /I "%c%" EQU "5" goto :1.9.1_5G
if /I "%c%" EQU "6" goto :1.9.1_6G
if /I "%c%" EQU "7" goto :1.9.1_7G
if /I "%c%" EQU "8" goto :1.9.1_8G
if /I "%c%" EQU "9" goto :1.9.1_9G
if /I "%c%" EQU "10" goto :1.9.1_10G
if /I "%c%" EQU "11" goto :1.9.1_11G
if /I "%c%" EQU "12" goto :1.9.1_12G
if /I "%c%" EQU "13" goto :1.9.1_13G
if /I "%c%" EQU "14" goto :1.9.1_14G
if /I "%c%" EQU "15" goto :1.9.1_15G
if /I "%c%" EQU "16" goto :1.9.1_16G
goto :1.9.1ramnull

:1.9.1ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.9.1_1G
if /I "%c%" EQU "2" goto :1.9.1_2G
if /I "%c%" EQU "3" goto :1.9.1_3G
if /I "%c%" EQU "4" goto :1.9.1_4G
if /I "%c%" EQU "5" goto :1.9.1_5G
if /I "%c%" EQU "6" goto :1.9.1_6G
if /I "%c%" EQU "7" goto :1.9.1_7G
if /I "%c%" EQU "8" goto :1.9.1_8G
if /I "%c%" EQU "9" goto :1.9.1_9G
if /I "%c%" EQU "10" goto :1.9.1_10G
if /I "%c%" EQU "11" goto :1.9.1_11G
if /I "%c%" EQU "12" goto :1.9.1_12G
if /I "%c%" EQU "13" goto :1.9.1_13G
if /I "%c%" EQU "14" goto :1.9.1_14G
if /I "%c%" EQU "15" goto :1.9.1_15G
if /I "%c%" EQU "16" goto :1.9.1_16G
goto :1.9.1ramnull

:1.9.1_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.1_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.9.1.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.9.2
:1.9.2yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.9.2y
if /I "%c%" EQU "N" goto :version
goto :1.9.2yn

:1.9.2y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.9.2
:1.9.2ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.9.2_1G
if /I "%c%" EQU "2" goto :1.9.2_2G
if /I "%c%" EQU "3" goto :1.9.2_3G
if /I "%c%" EQU "4" goto :1.9.2_4G
if /I "%c%" EQU "5" goto :1.9.2_5G
if /I "%c%" EQU "6" goto :1.9.2_6G
if /I "%c%" EQU "7" goto :1.9.2_7G
if /I "%c%" EQU "8" goto :1.9.2_8G
if /I "%c%" EQU "9" goto :1.9.2_9G
if /I "%c%" EQU "10" goto :1.9.2_10G
if /I "%c%" EQU "11" goto :1.9.2_11G
if /I "%c%" EQU "12" goto :1.9.2_12G
if /I "%c%" EQU "13" goto :1.9.2_13G
if /I "%c%" EQU "14" goto :1.9.2_14G
if /I "%c%" EQU "15" goto :1.9.2_15G
if /I "%c%" EQU "16" goto :1.9.2_16G
goto :1.9.2ramnull

:1.9.2ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.9.2_1G
if /I "%c%" EQU "2" goto :1.9.2_2G
if /I "%c%" EQU "3" goto :1.9.2_3G
if /I "%c%" EQU "4" goto :1.9.2_4G
if /I "%c%" EQU "5" goto :1.9.2_5G
if /I "%c%" EQU "6" goto :1.9.2_6G
if /I "%c%" EQU "7" goto :1.9.2_7G
if /I "%c%" EQU "8" goto :1.9.2_8G
if /I "%c%" EQU "9" goto :1.9.2_9G
if /I "%c%" EQU "10" goto :1.9.2_10G
if /I "%c%" EQU "11" goto :1.9.2_11G
if /I "%c%" EQU "12" goto :1.9.2_12G
if /I "%c%" EQU "13" goto :1.9.2_13G
if /I "%c%" EQU "14" goto :1.9.2_14G
if /I "%c%" EQU "15" goto :1.9.2_15G
if /I "%c%" EQU "16" goto :1.9.2_16G
goto :1.9.2ramnull

:1.9.2_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.2_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.9.2.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.9.3
:1.9.3yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.9.3y
if /I "%c%" EQU "N" goto :version
goto :1.9.3yn

:1.9.3y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.9.3
:1.9.3ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.9.3_1G
if /I "%c%" EQU "2" goto :1.9.3_2G
if /I "%c%" EQU "3" goto :1.9.3_3G
if /I "%c%" EQU "4" goto :1.9.3_4G
if /I "%c%" EQU "5" goto :1.9.3_5G
if /I "%c%" EQU "6" goto :1.9.3_6G
if /I "%c%" EQU "7" goto :1.9.3_7G
if /I "%c%" EQU "8" goto :1.9.3_8G
if /I "%c%" EQU "9" goto :1.9.3_9G
if /I "%c%" EQU "10" goto :1.9.3_10G
if /I "%c%" EQU "11" goto :1.9.3_11G
if /I "%c%" EQU "12" goto :1.9.3_12G
if /I "%c%" EQU "13" goto :1.9.3_13G
if /I "%c%" EQU "14" goto :1.9.3_14G
if /I "%c%" EQU "15" goto :1.9.3_15G
if /I "%c%" EQU "16" goto :1.9.3_16G
goto :1.9.3ramnull

:1.9.3ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.9.3_1G
if /I "%c%" EQU "2" goto :1.9.3_2G
if /I "%c%" EQU "3" goto :1.9.3_3G
if /I "%c%" EQU "4" goto :1.9.3_4G
if /I "%c%" EQU "5" goto :1.9.3_5G
if /I "%c%" EQU "6" goto :1.9.3_6G
if /I "%c%" EQU "7" goto :1.9.3_7G
if /I "%c%" EQU "8" goto :1.9.3_8G
if /I "%c%" EQU "9" goto :1.9.3_9G
if /I "%c%" EQU "10" goto :1.9.3_10G
if /I "%c%" EQU "11" goto :1.9.3_11G
if /I "%c%" EQU "12" goto :1.9.3_12G
if /I "%c%" EQU "13" goto :1.9.3_13G
if /I "%c%" EQU "14" goto :1.9.3_14G
if /I "%c%" EQU "15" goto :1.9.3_15G
if /I "%c%" EQU "16" goto :1.9.3_16G
goto :1.9.3ramnull

:1.9.3_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.3_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.9.3.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4
echo ---------------------------------------------
echo(
echo Has seleccionado la Version 1.9.4
:1.9.4yn
echo(
set /P c=Es esa la Version de tu Servidor? [S/N]= 
if /I "%c%" EQU "S" goto :1.9.4y
if /I "%c%" EQU "N" goto :version
goto :1.9.4yn

:1.9.4y
echo ---------------------------------------------
echo(
echo Perfecto, es la Version 1.9.4
:1.9.4ram
echo(
set /P c=Escribe los GB's de Ram que asignaras para tu Servidor (Min.=1; Max.=16)= 
if /I "%c%" EQU "1" goto :1.9.4_1G
if /I "%c%" EQU "2" goto :1.9.4_2G
if /I "%c%" EQU "3" goto :1.9.4_3G
if /I "%c%" EQU "4" goto :1.9.4_4G
if /I "%c%" EQU "5" goto :1.9.4_5G
if /I "%c%" EQU "6" goto :1.9.4_6G
if /I "%c%" EQU "7" goto :1.9.4_7G
if /I "%c%" EQU "8" goto :1.9.4_8G
if /I "%c%" EQU "9" goto :1.9.4_9G
if /I "%c%" EQU "10" goto :1.9.4_10G
if /I "%c%" EQU "11" goto :1.9.4_11G
if /I "%c%" EQU "12" goto :1.9.4_12G
if /I "%c%" EQU "13" goto :1.9.4_13G
if /I "%c%" EQU "14" goto :1.9.4_14G
if /I "%c%" EQU "15" goto :1.9.4_15G
if /I "%c%" EQU "16" goto :1.9.4_16G
goto :1.9.4ramnull

:1.9.4ramnull
echo(
echo No puedes asignar esa cantidad de GB's de Ram a tu Servidor (Lo minimo es 1, lo maximo es 16)
set /P c=Vuelve a escribir los GB's de Ram que asignaras para tu Servidor= 
if /I "%c%" EQU "1" goto :1.9.4_1G
if /I "%c%" EQU "2" goto :1.9.4_2G
if /I "%c%" EQU "3" goto :1.9.4_3G
if /I "%c%" EQU "4" goto :1.9.4_4G
if /I "%c%" EQU "5" goto :1.9.4_5G
if /I "%c%" EQU "6" goto :1.9.4_6G
if /I "%c%" EQU "7" goto :1.9.4_7G
if /I "%c%" EQU "8" goto :1.9.4_8G
if /I "%c%" EQU "9" goto :1.9.4_9G
if /I "%c%" EQU "10" goto :1.9.4_10G
if /I "%c%" EQU "11" goto :1.9.4_11G
if /I "%c%" EQU "12" goto :1.9.4_12G
if /I "%c%" EQU "13" goto :1.9.4_13G
if /I "%c%" EQU "14" goto :1.9.4_14G
if /I "%c%" EQU "15" goto :1.9.4_15G
if /I "%c%" EQU "16" goto :1.9.4_16G
goto :1.9.4ramnull

:1.9.4_1G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 1GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_2G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 2GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx2G -Xms2G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_3G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 3GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx3G -Xms3G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_4G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 4GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx4G -Xms4G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_5G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 5GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx5G -Xms5G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_6G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 6GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx6G -Xms6G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_7G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 7GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx7G -Xms7G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_8G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 8GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx8G -Xms8G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_9G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 9GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx9G -Xms9G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_10G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 10GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx10G -Xms10G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_11G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 11GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx11G -Xms11G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_12G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 12GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx12G -Xms12G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_13G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 13GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx13G -Xms13G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_14G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 14GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx14G -Xms14G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_15G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 15GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx15G -Xms15G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit

:1.9.4_16G
echo ---------------------------------------------
echo(
echo Perfecto, se esta iniciando tu Servidor con 16GB de Ram
echo(
echo Espera un momento...
echo(
java -Xmx16G -Xms16G -jar Server_1.9.4.jar nogui
echo -------------------------------------------
echo(
echo Muchas Gracias por usar esta Herramienta
echo Parte del Conjunto MCSSTools v0.0.0.3 alpha by NGDPL Nk
echo -------------------------------------------
pause
exit