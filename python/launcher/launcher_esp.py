#IMPORTACIÓN DE MÓDULOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser

#LIMPIEZA DE PANTALLA
def limpiar_consola():
    if os.name == 'nt':  #WINDOWS
        os.system('cls')
    else:  #LINUX O MACOS
        os.system('clear')

#CAMBIO DE NOMBRE DE VENTANA
if sys.platform.startswith('win32'):  #WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft")
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):  #LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

#BLOQUE DE SELECCIÓN DE RAM E INICIO
def ram():
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPuedes volver al Menú Principal con 'N', o")
    while True:
        try:
            gbs = int(input("Ingresa los GB de RAM para asignar al Servidor= "))
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n")
            print("Iniciando el Server con",gbs,"GB de RAM")
            comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
            comando_final = str(comando_java)
            subprocess.run(comando_final, shell=True)
            input("\nPresiona una tecla para continuar")
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nServidor Cerrado\n\nPuedes revisar el registro en la carpeta 'logs'\n")
            input()
            break
        except ValueError:
            ram()

def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n")
    print(url)
    print("")
    input("Presiona cualquier tecla para continuar")
    webbrowser.open(url)

def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")

def dbmode():
    limpiar_consola()
    #CÓDIGO AQUÍ

while True:
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Licencia\n(3) Salir\n")
    seleccion = input("Selecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()
    elif seleccion == "4":
        dbmode()
