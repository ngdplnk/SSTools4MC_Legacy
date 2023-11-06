#!/usr/bin/env python3

# MÓDULOS IMPORTADOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser
import datetime
import requests
from termcolor import colored

# CLS
def limpiar_consola():
    if os.name == 'nt': # En Windows
        os.system('cls')
    else: # En Linux y MacOS
        os.system('clear')

# TÍTULO DE VENTANA
if sys.platform.startswith('win32'): # En Windows
    ctypes.windll.kernel32.SetConsoleTitleW("Instalador de Servidores para Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): # En Linux y MacOS
    sys.stdout.write(f"\x1b]2;Instalador de Servidores para Minecraft\x07")

# VERIFICACIÓN DE CONEXIÓN A INTERNET
def verificar_conexion():
    try:
        response = requests.get("https://github.com/NGDPLNk/SSTools4MC")
        if response.status_code == 200:
            return True
    except requests.ConnectionError:
        pass
    return False

# INSTALACIÓN
def install():
    limpiar_consola()
    response = requests.get("URL DEL ARCHIVO RAW")
    if response.status_code == 200:
        codigo = response.text
        exec(codigo)
    else:
        def conerr():
            limpiar_consola()
            retry = input("Instalador de Servidores para Minecraft\n-------------------------------------\n\nNo fue posible establecer conexión con GitHub para obtener la lista de versiones más actualizada. Asegúrate de no haber perdido tu conexión a internet.\n\n(1) Reintentar\n(2) Volver al menú principal\n\nSelecciona una de las opciones= ")
            try:
                if any(char in "0123456789+-*/" for char in retry):
                    if not retry[0].isalpha():
                        sel = eval(retry)
                    else:
                        sel = retry
                else:
                    sel = retry
                sel = int(sel)
                if sel == 1:
                    install()
                elif sel == 2:
                    return
                else:
                    conerr()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                conerr()
        conerr()

# SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nMuchas gracias por usar esta herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1.2)
    sys.exit()

# MENÚ PRINCIPAL
def menu():
    limpiar_consola()
    seleccion = input("Instalador de Servidores para Minecraft\n-------------------------------------\n\n¡Hola! Estás en el menú principal.\n\n(1) Instalar un servidor\n(2) Ver lista de versiones disponibles \n(3) Ver licencia y extras\n(4) Salir\n\nSelecciona una de las opciones= ")
    try:
        if any(char in "0123456789+-*/" for char in seleccion):
            if not seleccion[0].isalpha():
                sel = eval(seleccion)
            else:
                sel = seleccion
        else:
            sel = seleccion
        sel = int(sel)
        if sel == 1:
            install()
        elif sel == 2:
            versions()
        elif sel == 3:
            about()
        elif sel == 4:
            exiit()
        menu()
    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
        menu()

menu()