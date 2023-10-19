#!/usr/bin/env python3
# MÓDULOS
import os
import re
import time
import sys
import ctypes
import subprocess
import webbrowser
import requests
import random

# LIMPIAR CONSOLA
def limpiar_consola():
    if os.name == 'nt':#WINDOWS
        os.system('cls')
    else:#LINUX O MACOS
        os.system('clear')

# NOMBRE VENTANA
if sys.platform.startswith('win32'):#WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):#LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

# VERSIÓN
def version():
    global versioon
    limpiar_consola()
    def verslist():
        url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/python/launcher/verslist.py"
        response = requests.get(url)
        if response.status_code == 200:
            codigo = response.text
            try:
                exec(codigo)
            except Exception as e:
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nError al ejecutar el código:", str(e))
                input("\nPresiona ENTER para continuar.")
                version()
        else:
            input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo se pudo obtener el archivo desde GitHub.\n\nPresiona ENTER para continuar.")
            version()
    verss = "versions"
    if os.path.exists(verss):
        directorio = "versions"
        directorio = os.path.abspath(directorio)
        contenido = os.listdir(directorio)
        carpetas = [item for item in contenido if os.path.isdir(os.path.join(directorio, item))]
        if carpetas:
            actualvers = max(carpetas, key=lambda x: tuple(map(int, x.split("."))))
        else:
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo podemos saber cuál es la versión de tu Servidor.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de poder acceder a este menú.\n")
            input("Presiona ENTER para continuar.")
            return
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Servidor está en la versión",actualvers)
        print("")
        versinput = input("Puedes cambiar a la versión que desees de la lista, pero recuerda que\nsi vuelves a una versión antigua puedes corromper tu Servidor para siempre.\n\n(L) Ver Lista de Versiones Disponibles\n(N) Volver al Menú Principal\n\nSelecciona una opción o escribe la versión nueva para el Servidor= ")
        versioon = versinput
        try:    
            if versinput.lower() == 'l':
                verslist()
            elif versinput.lower() == 'n':
                return
            else:
                url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/python/launcher/links.py"
                response = requests.get(url)
                if response.status_code == 200:
                    codigo = response.text
                    try:
                        exec(codigo)
                    except Exception as e:
                        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nError al ejecutar el código:", str(e))
                        input("\nPresiona ENTER para continuar.")
                        version()
                else:
                    input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo se pudo obtener el archivo desde GitHub.\n\nPresiona ENTER para continuar.")
                    version()
        except ValueError:
            version()
    else:
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa carpeta de versiones aún no existe.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de poder acceder a este menú.\n")
        input("Presiona ENTER para continuar.")

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

# INICIO
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

# LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n")
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
# REAGREGAR OPCIONES CUANDO SEAN AÑADIDAS COMPLETAMENTE Y ERRORES SOLUCIONADOS
while True:
    limpiar_consola()
    seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Licencia\n(3) Salir\n\nSelecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()
    elif seleccion == "4":
        config()
    elif seleccion == "5":
        version()
