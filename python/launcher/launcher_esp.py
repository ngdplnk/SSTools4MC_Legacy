#LIMPIEZA DE PANTALLA
import os
def limpiar_consola():
    if os.name == 'nt':  #EN WINDOWS
        os.system('cls')
    else:  #LINUX O MACOS
        os.system('clear')

#CAMBIO DE NOMBRE DE VENTANA
import sys
if sys.platform.startswith('win32'):
    import ctypes
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft")
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

#BLOQUES DE CÓDIGO
def ram():
    print("Seleccionaste ")
    #CÓDIGO AQUÍ

def about():
    print("Opción 2 seleccionada")
    #CÓDIGO AQUÍ

def exiit():
    print("Opción 3 seleccionada")
    #CÓDIGO AQUÍ

def dbmode():
    print("asdasd")
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
