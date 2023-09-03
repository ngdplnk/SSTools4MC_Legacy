#MODULES
import os
import time
import sys
import ctypes
import subprocess
import webbrowser

#CONSOLE CLEAR
def limpiar_consola():
    if os.name == 'nt':#WINDOWS
        os.system('cls')
    else:#LINUX OR MACOS
        os.system('clear')

#CONSOLE TITLE CHANGE
if sys.platform.startswith('win32'):#WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("BETA Server Launcher for Minecraft")
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):#LINUX OR MACOS
    sys.stdout.write(f"\x1b]2;BETA Server Launcher for Minecraft\x07")

#RAM START
def ram():
    limpiar_consola()
    print("Server Launcher for Minecraft\n-------------------------------------\n\nYou can return to main menu with 'N' or")
    entrada = input("Type the GB of RAM to assign to the Server= ")
    try:    
        if entrada.lower() == 'n':
            return
        else:
            gbs = int(entrada)
            if gbs <= 0 or gbs > 1024:
                ram()
            else:
                limpiar_consola()
                print("Server Launcher for Minecraft\n-------------------------------------\n")
                print("Starting the Server with",gbs,"GB of RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                comando_final = str(comando_java)
                subprocess.run(comando_final, shell=True)
                input("\nPress ENTER to continue.")
                limpiar_consola()
                print("Server Launcher for Minecraft\n-------------------------------------\n\nServer Closed\n\nYou can check the console log in 'logs' folder\n")
                input("Press ENTER to continue.")
    except ValueError:
        ram()

#LICENSE
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Server Launcher for Minecraft\n-------------------------------------\n\nThe latest license information will open in the browser\n")
    print(url)
    print("")
    input("Press ENTER to continue.")
    webbrowser.open(url)

#EXIT
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nThank you for using this tool\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

#MAIN MENU
while True:
    limpiar_consola()
    print("Server Launcher for Minecraft\n-------------------------------------\n\nMain Menu\n\n(1) Start Server\n(2) License\n(3) Exit\n")
    seleccion = input("Select one of the options= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()
