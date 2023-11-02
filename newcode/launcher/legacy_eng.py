#!/usr/bin/env python3
# MODULES
import os
import time
import sys
import ctypes
import subprocess
import webbrowser

# CLEAR CONSOLE
def limpiar_consola():
    if os.name == 'nt':# WINDOWS
        os.system('cls')
    else:# LINUX OR MACOS
        os.system('clear')

# TITLE CHANGE
if sys.platform.startswith('win32'):# WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Server Launcher for Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):# LINUX OR MACOS
    sys.stdout.write(f"\x1b]2;Server Launcher for Minecraft\x07")

# START
def ram():
    limpiar_consola()
    print("Server Launcher for Minecraft\n-------------------------------------\n\nYou can return to Main Menu with 'N', or")
    rammount = input("Type the amount of RAM to assign to your server= ")
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
                print("Server Launcher for Minecraft\n-------------------------------------\n")
                print("Server starting with",gbs,"GB of RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                comando_final = str(comando_java)
                subprocess.run(comando_final, shell=True)
                input("\nPress ENTER to continue.")
                limpiar_consola()
                print("Server Launcher for Minecraft\n-------------------------------------\n\nServer Closed\n\nYou can see the log in 'logs' folder\n")
                input("Press ENTER to continue.")
    except ValueError:
        ram()

# LICENSE
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Server Launcher for Minecraft\n-------------------------------------\n\nMost recent License information will be opened in the browser\n")
    print(url)
    print("")
    input("Press ENTER to continue.")
    webbrowser.open(url)

# EXIT
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nThank you for using this tool\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

# MAIN MENU
while True:
    limpiar_consola()
    seleccion = input("Server Launcher for Minecraft\n-------------------------------------\n\nMain Menu\n\n(1) Start Server\n(2) License\n(3) Exit\n\nSelect an option= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()