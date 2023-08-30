#LIMPIEZA DE PANTALLA
import os
def limpiar_consola():
    if os.name == 'nt':  #WINDOWS
        os.system('cls')
    else:  #LINUX O MACOS
        os.system('clear')

#CAMBIO DE NOMBRE DE VENTANA
import sys
if sys.platform.startswith('win32'):  #WINDOWS
    import ctypes
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft")
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):  #LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

#BLOQUE DE SELECCIÓN DE RAM
def ram():
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft")
    print("-------------------------------------")
    print("")
    print("Puedes volver al Menú Principal con 'N', o")
    while True:
        try:
            gbs = int(input("Ingresa los GB de RAM para asignar al Servidor= "))
            break
        except ValueError:
            ram()

    print(f"El valor de gbs es: {gbs}")
    print("Presiona Enter para continuar...")
    

def about():
    limpiar_consola()
    #CÓDIGO AQUÍ

def exiit():
    limpiar_consola()
    #CÓDIGO AQUÍ

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
