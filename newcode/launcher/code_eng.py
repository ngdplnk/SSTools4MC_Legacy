#!/usr/bin/env python3
#IMPORTACIÓN DE MÓDULOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser
#FUNCIÓN DE LIMPIAR CONSOLA
def limpiar_consola():
    if os.name == 'nt': # EN WINDOWS
        os.system('cls')
    else: #EN LINUX O MACOS
        os.system('clear')
#CAMBIO DE NOMBRE DE VENTANA
if sys.platform.startswith('win32'): #EN WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Server Launcher for Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): #EN LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Server Launcher for Minecraft\x07")
#INICIO DEL SERVIDOR
def ram():
    limpiar_consola()
    rammount = input("Server Launcher for Minecraft\n-------------------------------------\n\nYou can return to main menu with 'N' or\nType the GB of RAM to assign to the Server= ")
    try:    
        if rammount.lower() == 'n':
            return
        else:
            gbs = int(rammount)
            if gbs <= 0 or gbs > 1024:
                ram()
            else:
                eula_archivo = "eula.txt"
                eula = "eula=true"
                with open(eula_archivo, "w") as reemplazo:
                    reemplazo.write(eula)
                limpiar_consola()
                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nStarting the Server with {gbs}GB of RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                subprocess.run(comando_java, shell=True)
                input("\nPress ENTER to continue.")
                limpiar_consola()
                input("Server Launcher for Minecraft\n-------------------------------------\n\nServer Closed\n\nYou can check the console log in 'logs' folder\n\nPress ENTER to continue.")
    except ValueError:
        ram()
#INFORMACIÓN DE LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe latest license information will open in the browser\n\n{url}\n\nPress ENTER to continue.")
    webbrowser.open(url)
#SALIDA DE LA HERRAMIENTA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nThank you for using this tool\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()
#MENÚ PRINCIPAL
while True:
    limpiar_consola()
    seleccion = input("Server Launcher for Minecraft\n-------------------------------------\n\nMain Menu\n\n(1) Start Server\n(2) License\n(3) Exit\n\nSelect one of the options= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()
