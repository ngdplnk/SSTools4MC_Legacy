#!/usr/bin/env python3

# MÓDULOS IMPORTADOS
import os
import time
import sys
import ctypes
import subprocess
import webbrowser

# FUNCIÓN CLS
def limpiar_consola():
    if os.name == 'nt': # En Windows
        os.system('cls')
    else: # En Linux y MacOS
        os.system('clear')

# TÍTULO DE VENTANA
if sys.platform.startswith('win32'): # En Windows
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft") # type: ignore
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): # En Linux y MacOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

# INICIO DEL SERVIDOR
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

# CONFIG
def config():
    limpiar_consola()
    props = "server.properties"
    if os.path.exists(props):
        global properties
        properties = {}
        online = "Error"
        hard = "Error"
        pvp = "Error"
        with open('server.properties', 'r') as file:
            for line in file:
                line = line.strip()
                if line and not line.startswith('#'):
                    key, value = line.split('=')
                    properties[key.strip()] = value.strip()
        if properties["online-mode"] == "false":
            online = "Online"
        elif properties["online-mode"] == "true":
            online = "Offline"
        if properties["hardcore"] == "false":
            hard = "Activar"
        elif properties["hardcore"] == "true":
            hard = "Desactivar"
        if properties["pvp"] == "false":
            pvp = "Activar"
        elif properties["pvp"] == "true":
            pvp = "Desactivar"
        limpiar_consola()
        confsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del Servidor\n\n(1) Cambiar a modo {online}\n(2) {hard} modo extremo\n(3) {pvp} PvP\n(4) Cambiar modo de juego\n(5) Cambiar dificultad\n(6) Cambiar máximo de jugadores\n(7) Cambiar MOTD\n(8) Volver al menú principal\n\nSelecciona una opción= ")
        if confsel == "1":
            if online == "Online":
                properties["online-mode"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
            elif online == "Offline":
                properties["online-mode"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {online}.")
            time.sleep(1.5)
            config()
        elif confsel == "2":
            if hard == "Activar":
                properties["hardcore"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                hard = "activado"
            elif hard == "Desactivar":
                properties["hardcore"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                hard = "desactivado"
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nModo extremo {hard}.")
            time.sleep(1.5)
            config()
        elif confsel == "3":
            if pvp == "Activar":
                properties["pvp"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                pvp = "activado"
            elif pvp == "Desactivar":
                properties["pvp"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                pvp = "desactivado"
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPvP {pvp}.")
            time.sleep(1.5)
            config()
        elif confsel == "4":
            def juego():
                global properties
                modo = properties["gamemode"]
                if modo == "survival" or modo == "0":
                    modo = "Supervivencia"
                elif modo == "creative" or modo == "1":
                    modo = "Creativo"
                elif modo == "adventure" or modo == "2":
                    modo = "Aventura"
                elif modo == "spectator" or modo == "3":
                    modo = "Espectador"
                limpiar_consola()
                modosel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego actual es {modo}.\n\n(1) Cambiar a Supervivencia\n(2) Cambiar a Creativo\n(3) Cambiar a Aventura\n(4) Cambiar a Espectador\n(5) Volver atrás\n(6) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if modosel == "1":
                    properties["gamemode"] = "0"
                    modo = "Supervivencia"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "2":
                    properties["gamemode"] = "1"
                    modo = "Creativo"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "3":
                    properties["gamemode"] = "2"
                    modo = "Aventura"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "4":
                    properties["gamemode"] = "3"
                    modo = "Espectador"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "5":
                    config()
                elif modosel == "6":
                    return
                else:
                    juego()
            juego()
        elif confsel == "5":
            def difconf():
                global properties
                dificultad = properties["difficulty"]
                if dificultad == "peaceful" or dificultad == "0":
                    dificultad = "Pacífico"
                elif dificultad == "easy" or dificultad == "1":
                    dificultad = "Fácil"
                elif dificultad == "normal" or dificultad == "2":
                    dificultad = "Normal"
                elif dificultad == "hard" or dificultad == "3":
                    dificultad = "Difícil"
                limpiar_consola()
                difsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad actual es {dificultad}.\n\n(1) Cambiar a Pacífico\n(2) Cambiar a Fácil\n(3) Cambiar a Normal\n(4) Cambiar a Difícil\n(5) Volver atrás\n(6) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if difsel == "1":
                    properties["difficulty"] = "0"
                    dificultad = "Pacífico"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "2":
                    properties["difficulty"] = "1"
                    dificultad = "Fácil"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "3":
                    properties["difficulty"] = "2"
                    dificultad = "Normal"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "4":
                    properties["difficulty"] = "3"
                    dificultad = "Difícil"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "5":
                    config()
                elif difsel == "6":
                    return
                else:
                    difconf()
            difconf()
        elif confsel == "6":
            def playct():
                global properties
                players = properties["max-players"]
                limpiar_consola()
                newpl = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite actual de Jugadores es {players}\n\n(N) Volver atrás\n(M) Volver al menú principal\n\nSelecciona una de las opciones o\nEscribe el límite de jugadores= ")
                if newpl.lower() == "n":
                    config()
                elif newpl.lower() == "m":
                    return
                else:
                    try:
                        entero = int(newpl)
                        if entero <= 0 or entero > 1024:
                            playct()
                        else:
                            properties["max-players"] = newpl
                            with open('server.properties', 'w') as file:
                                for key, value in properties.items():
                                    file.write(f'{key}={value}\n')
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLímite de jugadores cambiado a {entero}")
                            time.sleep(1.5)
                            config()
                    except ValueError:
                        playct()
            playct()
        elif confsel == "7":
            def motdnuevo():
                global properties
                global motd
                motd = properties["motd"]
                limpiar_consola()
                motdcm = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual es:\n'{motd}'\n\nEl MOTD se muestra como texto plano, por lo que puede\nque se vean cosas extrañas.\n\nDeseas cambiar el MOTD?\n(1) Sí, quiero cambiarlo\n(2) No, quiero volver atrás\n(3) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if motdcm == "1":
                    def newmotd():
                        global properties
                        global motd
                        motd = properties["motd"]
                        limpiar_consola()
                        motd = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual es:\n'{motd}'\n\nEscribe aquí el nuevo MOTD= ")
                        def motdconfir():
                            global properties
                            global motd
                            limpiar_consola()
                            confir = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl nuevo MOTD es:\n'{motd}'\n\n(1) Guardar MOTD\n(2) Editar MOTD\n\nElige una de las opciones= ")
                            if confir == "1":
                                properties["motd"] = motd
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe ha guardado el nuevo MOTD.")
                                time.sleep(1.5)
                                motdnuevo()
                            elif confir == "2":
                                newmotd()
                            else:
                                motdconfir()
                        motdconfir()
                    newmotd()
                elif motdcm == "2":
                    config()
                elif motdcm == "3":
                    return
            motdnuevo()
        elif confsel == "8":
            return
        else:
            config()
    else:
        limpiar_consola()
        input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl archivo de configuración aún no existe.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de configurar.\n\nPresiona ENTER para continuar.")

# LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n\n{url}\n\nPresiona ENTER para continuar.")
    webbrowser.open(url)

# SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

# MENÚ PRINCIPAL
while True:
    limpiar_consola()
    seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Configurar Servidor\n(3) Licencia\n(4) Salir\n\nSelecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        config()
    elif seleccion == "3":
        about()
    elif seleccion == "4":
        exiit()
