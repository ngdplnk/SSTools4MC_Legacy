#MÓDULOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser

#LIMPIAR CONSOLA
def limpiar_consola():
    if os.name == 'nt':#WINDOWS
        os.system('cls')
    else:#LINUX O MACOS
        os.system('clear')

#NOMBRE VENTANA
if sys.platform.startswith('win32'):#WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft")
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):#LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

#CONFIGURACIÓN
def config():
    print("")

#RAM INICIO
def ram():
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPuedes volver al Menú Principal con 'N', o")
    entrada = input("Ingresa los GB de RAM para asignar al Servidor= ")
    try:    
        if entrada.lower() == 'n':
            return
        else:
            gbs = int(entrada)
            if gbs <= 0 or gbs > 1024:
                ram()
            else:
                eula_archivo = "eula.txt"
                eula = "eula=true"
                with open(eula_archivo, "w") as reemplazo:
                    reemplazo.write(eula)
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n")
                print("Iniciando el Server con",gbs,"GB de RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                comando_final = str(comando_java)
                subprocess.run(comando_final, shell=True)
                input("\nPresiona ENTER para continuar.")
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nServidor Cerrado\n\nPuedes revisar el registro en la carpeta 'logs'\n")
                input("Presiona ENTER para continuar.")
    except ValueError:
        ram()

#LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n")
    print(url)
    print("")
    input("Presiona ENTER para continuar.")
    webbrowser.open(url)

#SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

#MENÚ PRINCIPAL
while True:
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Configurar Servidor\n(3) Licencia\n(4) Salir\n")
    seleccion = input("Selecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        config()
    elif seleccion == "3":
        about()
    elif seleccion == "4":
        exiit()
