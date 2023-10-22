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
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): #EN LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")
#INICIO DEL SERVIDOR
def ram():
    limpiar_consola()
    rammount = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPuedes volver al Menú Principal con 'N', o\nIngresa los GB de RAM para asignar al Servidor= ")
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
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIniciando el Server con {gbs}GB de RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                subprocess.run(comando_java, shell=True)
                input("\nPresiona ENTER para continuar.")
                limpiar_consola()
                input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nServidor Cerrado\n\nPuedes revisar el registro en la carpeta 'logs'\n\nPresiona ENTER para continuar.")
    except ValueError:
        ram()

# CONFIGURACIÓN
def config():
    limpiar_consola()
    props = "server.properties"
    if os.path.exists(props):
        with open(props,"r") as file:
           lineas = file.readlines()
        for i, linea in enumerate(lineas):
            if linea.startswith("online="):
                lineas[i] = "online-mode=true"
            
    else:
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl archivo de configuración aún no existe.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de configurar.\n")
        input("Presiona ENTER para continuar.")

#INFORMACIÓN DE LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n\n{url}\n\nPresiona ENTER para continuar.")
    webbrowser.open(url)
#SALIDA DE LA HERRAMIENTA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()
#MENÚ PRINCIPAL
while True:
    limpiar_consola()
    seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Licencia\n(3) Salir\n\nSelecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()