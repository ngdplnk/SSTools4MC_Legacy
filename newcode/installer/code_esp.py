#!/usr/bin/env python3

# MÓDULOS IMPORTADOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser
import datetime
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

###CODE
###

# MENÚ PRINCIPAL
def menu():
    limpiar_consola()
    seleccion = input("Instalador de Servidores para Minecraft\n-------------------------------------\n\n¡Hola! Estás en el menú principal.\n\n(1) Iniciar el servidor\n(2) Administrar el servidor\n(3) Ver licencia y extras\n(4) Salir\n\nSelecciona una de las opciones= ")
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
            ram()
        elif sel == 2:
            config()
        elif sel == 3:
            about()
        elif sel == 4:
            exiit()
        menu()
    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
        menu()

menu()