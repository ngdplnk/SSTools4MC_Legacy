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
::cxY6rQJ7JhzQF1fEqQJgZksaHErQcUq2Fr0diA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMbCXoS5QQ+OD6jw==
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
::Zh4grVQjdCyDJGyX8VAjFBVdRw+NAE+/Fb4I5/jH4umUsVkSW+4Abt+VivrebrJe60n0fZdg03QXzp8OBQ8WewquDg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

echo Minecraft Server Startup Tool
echo Version 0.0.0.2 alpha by NGDPL Nk
echo Designed for 1.16.5 Vanilla Servers
echo ------------------------------------

:choice
set /P c=Is it the first time you open Server? [Y/N]
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :choice2.2
goto :choice

:yes
echo ---------------------------------------------
echo The necessary files will be downloaded from the Internet
echo A folder will also be created on the Desktop with the files from your Server
pause
echo Wait a moment...
cd C:\
mkdir MCSSTool
cd C:\MCSSTool
mkdir NeededFiles
curl https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar >C:\MCSSTool\NeededFiles\Server_1.16.5.jar
cd %USERPROFILE%\Desktop
mkdir Server
copy C:\MCSSTool\NeededFiles\* %USERPROFILE%\Desktop\Server\
copy %~dp0\eula.txt %USERPROFILE%\Desktop\Server\
copy %~dp0\mcsstl.exe %USERPROFILE%\Desktop\Server\
copy %~dp0\server.properties %USERPROFILE%\Desktop\Server\
cd %USERPROFILE%\Desktop\Server\
ren mcsstl.exe "Start Server.exe"

:choice2
echo ---------------------------------------------------------------
set /P c=Would you like to configure the Server before starting it? [Y/N]
if /I "%c%" EQU "Y" goto :yes2
if /I "%c%" EQU "N" goto :no2
goto :choice2

:yes2
echo -------------------------------------------
echo Notepad will open to configure
echo When you close it and continue, the Server will start with the new configuration
cd %USERPROFILE%\Desktop\Server\
pause
server.properties
pause
echo Starting Server...
goto :start

:no2
echo --------------------------
echo OK. Starting Server...
goto :start

:choice2.2
echo ---------------------------------------------------------------
set /P c=Would you like to configure the Server before starting it? [Y/N]
if /I "%c%" EQU "Y" goto :yes2.2
if /I "%c%" EQU "N" goto :no2
goto :choice2.2

:yes2.2
echo -------------------------------------------
echo Notepad will open to configure
echo When you close it and continue, the Server will start with the new configuration
pause
server.properties
pause
echo Starting Server...
goto :start

:start
java -Xmx1024M -Xms1024M -jar Server_1.16.5.jar nogui
pause
exit