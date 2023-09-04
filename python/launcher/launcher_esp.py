#MÓDULOS
import os
import re
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
    limpiar_consola()
    props = "server.properties"
    if os.path.exists(props):
        limpiar_consola()
        online = None
        onlinetxt = None
        hc = None
        hci = None
        hcf = None
        modo = None
        dificultad = None
        cantprops = None
        linea_29 = "."
        with open(props, "r") as lectura:
            lineas = lectura.readlines()
        if len(lineas) >= 7:
            linea_7_1 = lineas[6]
            if "debug=false" in linea_7_1:
                lineas[6] = ""
            elif "debug=true" in linea_7_1:
                lineas[6] = ""
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
        if len(lineas) >= 21:
            linea_21_1 = lineas[20]
            if "hellworld=false" in linea_21_1:
                lineas[20] = ""
            elif "hellworld=true" in linea_21_1:
                lineas[20] = ""
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
        if len(lineas) >= 38:
            linea_38 = lineas[37]
            if "previews-chat=false" in linea_38:
                lineas[37] = ""
            elif "previews-chat=true" in linea_38:
                lineas[37] = ""
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
        if len(lineas) >= 51:
            linea_51 = lineas[50]
            if "snooper-enabled=false" in linea_51:
                lineas[50] = ""
            elif "snooper-enabled=true" in linea_51:
                lineas[50] = ""
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
        if len(lineas) >= 56:
            linea_56 = lineas[55]
            if "texture-pack=" in linea_56:
                lineas[55] = ""
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
        if len(lineas) >= 34:
            linea_34 = lineas[33]
            if "online-mode=true" in linea_34:
                online = False
            elif "online-mode=false" in linea_34:
                online = True
        if online == True:
            onlinetxt = "ONLINE"
        elif online == False:
            onlinetxt = "OFFLINE"
        if len(lineas) >= 21:
            linea_21 = lineas[20]
            if "hardcore=false" in linea_21:
                hc = True
            elif "hardcore=true" in linea_21:
                hc = False
        if hc == True:
            hci = "ACTIVAR"
            hcf = "Modo Extremo ACTIVADO"
        elif hc == False:
            hci = "DESACTIVAR"
            hcf = "Modo Extremo DESACTIVADO"
        if len(lineas) >= 18:
            linea_18 = lineas[17]
            if "gamemode=survival" in linea_18:
                modo = "SUPERVIVENCIA"
            elif "gamemode=0" in linea_18:
                modo = "SUPERVIVENCIA"
            elif "gamemode=creative" in linea_18:
                modo = "CREATIVO"
            elif "gamemode=1" in linea_18:
                modo = "CREATIVO"
            elif "gamemode=adventure" in linea_18:
                modo = "AVENTURA"
            elif "gamemode=2" in linea_18:
                modo = "AVENTURA"
            elif "gamemode=spectator" in linea_18:
                modo = "ESPECTADOR"
            elif "gamemode=3" in linea_18:
                modo = "ESPECTADOR"
        if len(lineas) >= 7:
            linea_7 = lineas[6]
            if "difficulty=peaceful" in linea_7:
                dificultad = "PACÍFICO"
            elif "difficulty=0" in linea_7:
                dificultad = "PACÍFICO"
            elif "difficulty=easy" in linea_7:
                dificultad = "FÁCIL"
            elif "difficulty=1" in linea_7:
                dificultad = "FÁCIL"
            elif "difficulty=normal" in linea_7:
                dificultad = "NORMAL"
            elif "difficulty=2" in linea_7:
                dificultad = "NORMAL"
            elif "difficulty=hard" in linea_7:
                dificultad = "DIFÍCIL"
            elif "difficulty=3" in linea_7:
                dificultad = "DIFÍCIL"
        if len(lineas) >= 29:
            linea_29 = lineas[28]
            cantprops = re.findall(r'\d+', linea_29)
        with open(props, "w") as propsupd:
            propsupd.writelines(lineas)
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del Servidor\n")
        print("(1) Cambiar a Modo",onlinetxt)
        print("(2)",hci,"Modo Extremo\n(3) Cambiar Modo de Juego\n(4) Cambiar Dificultad\n(5) Cambiar máximo de Jugadores\n(6) Volver al Menú Principal\n")
        confsel = input("Selecciona una opción= ")
        if confsel == "1":
            limpiar_consola()
            if online == True:
                lineas[33] = "online-mode=true\n"
            elif online == False:
                lineas[33] = "online-mode=false\n"
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nModo Cambiado a",onlinetxt)
            time.sleep(1.5)
            config()
        elif confsel == "2":
            limpiar_consola()
            if hc == True:
                lineas[20] = "hardcore=true\n"
            elif hc == False:
                lineas[20] = "hardcore=false\n"
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n")
            print(hcf)
            time.sleep(1.5)
            config()
        elif confsel == "3":
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego actual es",modo)
            print("")
            modosel = input("(1) Supervivencia\n(2) Creativo\n(3) Aventura\n(4) Espectador\n(5) Volver Atrás\n(6) Volver al menú principal\n\nElige un el nuevo Modo de Juego= ")
            if modosel == "1":
                lineas[17] = "gamemode=0\n"
                modo = "SUPERVIVENCIA"
            elif modosel == "2":
                lineas[17] = "gamemode=1\n"
                modo = "CREATIVO"
            elif modosel == "3":
                lineas[17] = "gamemode=2\n"
                modo = "AVENTURA"
            elif modosel == "4":
                lineas[17] = "gamemode=3\n"
                modo = "ESPECTADOR"
            elif modosel == "6":
                return
            else:
                config()
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a Modo",modo)
            time.sleep(1.5)
            config()
        elif confsel == "4":
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad actual es",dificultad)
            print("")
            difsel = input("(1) Pacífico\n(2) Fácil\n(3) Normal\n(4) Difícil\n(5) Volver Atrás\n(6) Volver al menú principal\n\nElige la nueva Dificultad= ")
            if difsel == "1":
                lineas[6] = "difficulty=0\n"
                dificultad = "PACÍFICO"
            elif difsel == "2":
                lineas[6] = "difficulty=1\n"
                dificultad = "FÁCIL"
            elif difsel == "3":
                lineas[6] = "difficulty=2\n"
                dificultad = "NORMAL"
            elif difsel == "4":
                lineas[6] = "difficulty=3\n"
                dificultad = "DIFÍCIL"
            elif difsel == "6":
                return
            else:
                config()
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a Dificultad",dificultad)
            time.sleep(1.5)
            config()
        elif confsel == "5":
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite actual de Jugadores es",cantprops)
            print("")
            cantnueva = input("Escribe el nuevo límite de Jugadores para el Servidor= ")
            try:
                entero = int(cantnueva)
                cantmod = re.sub(r'\d+',str(entero),linea_29)
                lineas[28] = cantmod
                with open(props, "w") as propsupd:
                    propsupd.writelines(lineas)
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLímite de Jugadores Cambiado a",entero)
                time.sleep(1.5)
                config()
            except ValueError:
                config()
        elif confsel == "6":
            return
        else:
            config()
    else:
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl archivo de configuración aún no existe.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de configurar.\n")
        input("Presiona ENTER para continuar.")

#INICIO
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
