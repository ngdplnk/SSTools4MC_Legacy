::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBVdRw+NAE+1BaAR7ebv/Nagq1k1QeADdYzIyaCBL+wA1lHrepo+6nZbjcUPBB5KQh6qewE3oWtQiW2GOMnSugzuKg==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaHUrSXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMbSXqZg==
::ZQ05rAF9IAHYFVzEqQIdCyhnYAWXMmiyA6co5+f3r+yIsA1MGrNpNtqb6bGcNuUB+SU=
::eg0/rx1wNQPfEVWB+kM9LVsJDCmhD1iWB6AS6+D+/d6IrUFdUu0tON6Vi+LAdaAg71fycIQ+tg==
::fBEirQZwNQPfEVWB+kM9LVsJDCmhD1iWB6AS6+D+/d6IrUFdUu0tON6Vi+LAdaAg71fycIQ+tg==
::cRolqwZ3JBvQF1fEqQIdCyhnYAWXMmiyA6co5+f3r+yIsA1MGrNpNtqb6bGcNuUB+SU=
::dhA7uBVwLU+EWHej0HIcaDVfLA==
::YQ03rBFzNR3SWATE2mUUGDcUYg/i
::dhAmsQZ3MwfNWATEVotieEkFDCqlGFuWRpsXiA==
::ZQ0/vhVqMQ3MEVWAtB9wBjxwfCjCEmDa
::Zg8zqx1/OA3MEVWAtB9wBjxwfCjCEmDa
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBVdRw+NAE+/Fb4I5/jHw+uSrE4VUfADYNmP5piPLvoS7kr2NZIolklfit0FCBRKewHrP0Fl/yAX9nzTY4mZqwqB
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

:init
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Iniciar el Servidor
echo (D) Modo Debug (Para desarrolladores)
echo (A) Acerca de
echo (S) Salir
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "I" goto :1.16.5ram
if /I "%c%" EQU "D" goto :dbmode
if /I "%c%" EQU "A" goto :about
if /I "%c%" EQU "S" goto :exit
goto :init

:1.16.5ram
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Puedes volver al Menu Principal con "N", o
set /P c=Escribe los GB de Ram para Iniciar el Servidor = 
if /I "%c%" EQU "N" goto :init
if /I "%c%" EQU "1" goto :1.16.5_1G
if /I "%c%" EQU "2" goto :1.16.5_2G
if /I "%c%" EQU "3" goto :1.16.5_3G
if /I "%c%" EQU "4" goto :1.16.5_4G
if /I "%c%" EQU "5" goto :1.16.5_5G
if /I "%c%" EQU "6" goto :1.16.5_6G
if /I "%c%" EQU "7" goto :1.16.5_7G
if /I "%c%" EQU "8" goto :1.16.5_8G
if /I "%c%" EQU "9" goto :1.16.5_9G
if /I "%c%" EQU "10" goto :1.16.5_10G
if /I "%c%" EQU "11" goto :1.16.5_11G
if /I "%c%" EQU "12" goto :1.16.5_12G
if /I "%c%" EQU "13" goto :1.16.5_13G
if /I "%c%" EQU "14" goto :1.16.5_14G
if /I "%c%" EQU "15" goto :1.16.5_15G
if /I "%c%" EQU "16" goto :1.16.5_16G
goto :1.16.5ram

:1.16.5_1G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 1GB de Ram...
echo(
java -Xmx1024M -Xms1024M -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_2G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 2GB de Ram...
echo(
java -Xmx2G -Xms2G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_3G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 3GB de Ram...
echo(
java -Xmx3G -Xms3G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_4G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 4GB de Ram...
echo(
java -Xmx4G -Xms4G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_5G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 5GB de Ram...
echo(
java -Xmx5G -Xms5G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_6G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 6GB de Ram...
echo(
java -Xmx6G -Xms6G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_7G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 7GB de Ram...
echo(
java -Xmx7G -Xms7G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_8G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 8GB de Ram...
echo(
java -Xmx8G -Xms8G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_9G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 9GB de Ram...
echo(
java -Xmx9G -Xms9G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_10G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 10GB de Ram...
echo(
java -Xmx10G -Xms10G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_11G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 11GB de Ram...
echo(
java -Xmx11G -Xms11G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_12G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 12GB de Ram...
echo(
java -Xmx12G -Xms12G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_13G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 13GB de Ram...
echo(
java -Xmx13G -Xms13G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_14G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 14GB de Ram...
echo(
java -Xmx14G -Xms14G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_15G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 15GB de Ram...
echo(
java -Xmx15G -Xms15G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:1.16.5_16G
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Inciando el Server con 16GB de Ram...
echo(
java -Xmx16G -Xms16G -jar Server_1.16.5.jar nogui
pause
goto :afterclose

:afterclose
cls
echo(
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Se ha cerrado el Servidor
echo(
echo Puedes revisar el registro de la consola en la carpeta "Logs"
echo(
echo --------------------------------------------
echo Muchas Gracias por usar esta Herramienta
echo MIT License - Copyright (c) 2021 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit

REM Desde esta anotación se encuentra el bloque de código que activa y desactiva el modo debug
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:dbmode
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo El Modo Debug muestra todos los comandos que son ejecutados por la consola durante cada proceso.
echo Este modo le es util a los desarrolladores para detectar problemas con el codigo de manera mas facil.
echo No se recomienda activar este modo si realmente no sabes como sobrellevarlo.
echo(
echo (N) Activar Modo Debug
echo (M) Desactivar Modo Debug
echo (F) Visualizar todo el codigo fuente
echo (V) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "N" goto :dbinit
if /I "%c%" EQU "M" goto :undbinit
if /I "%c%" EQU "F" goto :viewsrc
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
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Iniciar el Servidor
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
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Informacion acerca de la Herramienta y del Conjunto
echo(
echo (R) Readme
echo (P) Politica de Seguridad
echo (C) Copyright y Disclaimer
echo (M) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "R" goto :readme
if /I "%c%" EQU "P" goto :security
if /I "%c%" EQU "C" goto :canddis
if /I "%c%" EQU "M" goto :init
goto :about

:readme
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo (O) Ver Readme Online (Recomendado)
echo (L) Ver Readme Aqui
echo (B) Volver al Menu Anterior
echo (G) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "O" goto :readmeol
if /I "%c%" EQU "L" goto :readmeof
if /I "%c%" EQU "B" goto :about
if /I "%c%" EQU "G" goto :init
goto :readme

:readmeol
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Si continuas, se abrira el Readme mas reciente en el navegador.
echo(
pause
start https://github.com/NGDPLNk/mcsstools/blob/main/README.md
goto :init

:readmeof
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo README MCSSTools
echo(
echo(
echo(
echo # **MCSSTools**
echo Minecraft Server Startup Tools es un conjunto de herramientas que te ayudará con distintos procesos para tu servidor dedicado de Minecraft.
echo(
echo # **¿Cómo obtengo las herramientas de este conjunto?**
echo - Debes descargar la última versión de este conjunto desde [Este Link](https://github.com/NGDPLNk/mcsstools/releases/latest)
echo(
echo - Extrae el archivo ya descargado en donde lo desees, allí encontrarás cada ejecutable disponible correspondiente.
echo(
echo # **Instalador de servidores**
echo ## **Requisitos mínimos de esta herramienta:**
echo(
echo - SO: Windows 10 v.1803 (build 17134) o superior.
echo(
echo - Procesador: Arquitectura de x64 para la versión x64 de esta herramienta.
echo(
echo - RAM: 150MiB
echo(
echo - Espacio en disco: 150MiB para instalar 1 servidor.
echo(
echo Este software requiere de una conexión a internet disponible en el momento de la instalación de servidores.
echo(
echo También requiere permisos de administrador para poder acceder y crear los archivos y carpetas que correspondan al servidor en tu equipo.
echo(
echo ## **Para usar esta herramienta debes:**
echo - [Descargar la versión más reciente del conjunto](https://github.com/NGDPLNk/mcsstools/releases/latest)
echo - Luego, debes identificar la versión de la herramienta que corresponda a tu sistema operativo (x32 para 32 bits; x64 para 64 bits).
echo - Abre la herramienta antes seleccionada y sigue las instrucciones en pantalla (Elegir versión para el servidor, leer y aceptar el CLUF de Minecraft, configurar parámetros iniciales, etc...).
echo - Cuando ya hayas creado tu servidor correctamente, **CAMBIA EL NOMBRE DE LA CARPETA DEL SERVIDOR O PONLA EN OTRA UBICACIÓN**. Este paso es muy importante, ya que si no lo haces y vuelves a ejecutar la herramienta, esta sobreescribirá los archivos de la carpeta y causará un conflicto con tu servidor original.
echo(
echo # **Lanzador de servidores (Solo disponible con la Herramienta Instalador)**
echo ## **Requisitos mínimos de esta herramienta:**
echo(
echo - SO: Windows 7 SP1 o superior.
echo(
echo - Procesador: Arquitectura de x64 para la versión x64 de esta herramienta.
echo(
echo - RAM: Varía entre 1GiB y 16GiB dependiendo de la cantidad memoria RAM seleccionada para el servidor dedicado.
echo(
echo - Espacio en disco: Varía dependiendo de cada servidor.
echo(
echo Este software puede requerir de una conexión a internet si quieres que tu servidor esté accesible para cualquier jugador.
echo(
echo Necesitas tener a lo menos [Java 8](https://www.java.com/es/download/ie_manual.jsp) para poder iniciar un servidor hasta la Versión 1.16.5. A partir de la Versión 1.16.5, es necesrio contar con [JDK 16](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html).
echo(
echo También requiere permisos de administrador para acceder a las carpetas y archivos de tu servidor.
echo(
echo ## **Para usar esta herramienta debes:**
echo - [Descargar la versión más reciente del conjunto](https://github.com/NGDPLNk/mcsstools/releases/latest)
echo - Luego, debes identificar la versión de la herramienta que corresponda a tu sistema operativo (x32 para 32 bits; x64 para 64 bits).
echo - Abre la herramienta antes seleccionada y sigue las instrucciones en pantalla (Elegir versión para el servidor, leer y aceptar el CLUF de Minecraft, configurar parámetros iniciales, etc...; o directamente instalar la Herramienta Lanzador).
echo - Si creaste un nuevo Servidor, puedes encontrar esta herramienta en la carpeta principal. Si solo instalaste la Herramienta, debes guardarla en la carpeta principal del Servidor que desees inciar.
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

:security
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo (O) Ver Politica de Seguridad Online (Recomendado)
echo (L) Ver Politica de Seguridad Aqui
echo (B) Volver al Menu Anterior
echo (G) Volver al Menu Principal
echo(
set /P c=Elige una de las opciones = 
if /I "%c%" EQU "O" goto :securityol
if /I "%c%" EQU "L" goto :securityof
if /I "%c%" EQU "B" goto :about
if /I "%c%" EQU "G" goto :init
goto :security

:securityol
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Si continuas, se abrira la Politica de Seguridad mas reciente en el navegador.
echo(
pause
start https://github.com/NGDPLNk/mcsstools/blob/main/SECURITY.md
goto :init

:securityof
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo POLITICA DE SEGURIDAD MCSSTools
echo(
echo(
echo(
echo # Política de Seguridad
echo(
echo ## Versiones con Soporte
echo(
echo En caso de encontrarse problemas de seguridad, estas son las versiones con un soporte activo:
echo(
echo |     Versión      |    Tiene Soporte   |
echo | ---------------- | ------------------ |
echo |  v0.0.0.1-Alpha  |        :x:         |
echo |  v0.0.0.2-Alpha  |        :x:         |
echo |  v0.0.0.3-Alpha  |        :x:         |
echo |  v0.0.0.4-Beta   |        :x:         |
echo |  v0.0.0.5-Beta   |        :x:         |
echo |  v0.0.0.6-Beta   | :heavy_check_mark: |
echo | v0.0.1.0-Stable  | :heavy_check_mark: |
echo(
echo ## Reportar una Vulnerabilidad
echo(
echo Para reportar alguna vulnerabilidad, puedes hacerlo directamente en este repositorio, o puedes comunicarte directamente conmigo:
echo(
echo E-Mail: nikkotilionbackup@gmail.com
echo(
echo ©2021 - NGDPL Nk
echo(
echo(
echo(
pause
goto :init

:canddis
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
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
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Si continuas, se abrira el Copyright y Disclaimer mas reciente en el navegador.
echo(
pause
start https://github.com/NGDPLNk/mcsstools#informaci%C3%B3n-sobre-copyright-y-disclaimer
goto :init

:canddisof
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
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

REM Desde esta anotación se encuentra el bloque de código que redirecciona al código fuente completo de esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:viewsrc
cls
echo Lanzador de Servidores de Minecraft
echo MCSSTools Release v0.0.1.0 por NGDPL Nk
echo --------------------------------------
echo(
echo Si continuas, se abrira el codigo fuente mas reciente de este conjunto en el navegador.
echo(
pause
start https://github.com/NGDPLNk/mcsstools
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
