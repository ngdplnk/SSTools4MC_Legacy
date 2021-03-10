::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcAqLN2C1OpEZ++Pv4Pq7p1gRVawrYJu7
::fBE1pAF6MU+EWHreyHcjLQlHcAqLN2C1OpEZ++Pv4Pq7sUgPQuctNp/J1aSLMvQa71aE
::fBE1pAF6MU+EWHreyHcjLQlHcAqLN2C1OpEZ++Pv4Pq7r04OR/YzNorD39Q=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBVdRw+NAE+/Fb4I5/jH4umUsVkSW+4DcYzU1PqHI+9z
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaHErQcWq2Fr0dpbup7eOTwg==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMbCXoS7QQ+OD6ornVoEQJNA==
::ZQ05rAF9IAHYFVzEqQIdIRVRTxaDOn/6NbAO/u3pr9mTo18JQfJ/TIDU1tQ=
::eg0/rx1wNQPfEVWB+kM9LVsJDCmLMm65FLQa/KjI6viRp19dZ/Y+apvOyvS6L+8fig==
::fBEirQZwNQPfEVWB+kM9LVsJDCmLMm65FLQa/KjI6viRp19dZ/Y+apvOyvS6L+8fig==
::cRolqwZ3JBvQF1fEqQIdIRVRTxaDOn/6NbAO/u3pr9mTo18JQfJ/TIDU1tQ=
::dhA7uBVwLU+EWHej0HIcaDVfLA==
::YQ03rBFzNR3SWATE2mUUGDcUYg/i
::dhAmsQZ3MwfNWATE2mUUGDcUYg/i
::ZQ0/vhVqMQ3MEVWAtB9wBjxwfCjCEmDa
::Zg8zqx1/OA3MEVWAtB9wBjxwfCjCEmDa
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBVdRw+NAE+/Fb4I5/jH4umUsVkSW+4Abt+VivrebrJe60n0fZdg02kXzp8OBQ8WewquDg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

echo Herramienta de Inicio de Servidores de Minecraft
echo Version 0.0.0.2 alpha by NGDPL Nk
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