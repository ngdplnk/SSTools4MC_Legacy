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
    print("Lanzador de Servidores para Minecraft")
    print("-------------------------------------")
    print("")
    print("Puedes volver al Menú Principal con 'N', o")
    while True:
        try:
            gbs = int(input("Ingresa los GB de RAM para asignar al Servidor= "))
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft")
            print("-------------------------------------")
            print("")
            print("Iniciando el Server con ",str(gbs),"GB de RAM")
            comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
            comando_final = str(comando_java)
            subprocess.run(comando_final, shell=True)
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft")
            print("-------------------------------------")
            print("")
            print("Servidor Cerrado")
            print("")
            print("Puedes revisar el registro en la carpeta 'logs'")
            print("")
            input()
            break
        except ValueError:
            ram()

def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Lanzador de Servidores para Minecraft")
    print("-------------------------------------")
    print("")
    print("Se abrira la informacion sobre Licencia mas reciente en el navegador.")
    print("")
    print(url)
    input()
    webbrowser.open(url)

def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    break
def dbmode():
    limpiar_consola()
    #CÓDIGO AQUÍ

while True:
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft")
    print("-------------------------------------")
    print("")
    print("Menú Principal")
    print("")
    print("(1) Iniciar Servidor")
    print("(2) Licencia")
    print("(3) Salir")
    print("")
    
    seleccion = input("Selecciona una opción= ")
    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()
    elif seleccion == "4":
        dbmode()

input()
