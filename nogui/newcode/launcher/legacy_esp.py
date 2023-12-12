#!/usr/bin/env python3
# MÓDULOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser

# LIMPIAR CONSOLA
def limpiar_consola():
    if os.name == 'nt':# WINDOWS
        os.system('cls')
    else:# LINUX O MACOS
        os.system('clear')

# NOMBRE VENTANA
if sys.platform.startswith('win32'):# WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Legacy - Lanzador de Servidores para Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):# LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Legacy - Lanzador de Servidores para Minecraft\x07")

# INICIO
def ram():
    limpiar_consola()
    print("Legacy - Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPuedes volver al Menú Principal con 'N', o")
    rammount = input("Ingresa los GB de RAM para asignar al Servidor= ")
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
                print("Legacy - Lanzador de Servidores para Minecraft\n-------------------------------------\n")
                print("Iniciando el Server con",gbs,"GB de RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                comando_final = str(comando_java)
                subprocess.run(comando_final, shell=True)
                input("\nPresiona ENTER para continuar.")
                limpiar_consola()
                print("Legacy - Lanzador de Servidores para Minecraft\n-------------------------------------\n\nServidor Cerrado\n\nPuedes revisar el registro en la carpeta 'logs'\n")
                input("Presiona ENTER para continuar.")
    except ValueError:
        ram()

# LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Legacy - Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n")
    print(url)
    print("")
    input("Presiona ENTER para continuar.")
    webbrowser.open(url)

# SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

# MENÚ PRINCIPAL
while True:
    limpiar_consola()
    seleccion = input("Legacy - Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Licencia\n(3) Salir\n\nSelecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()