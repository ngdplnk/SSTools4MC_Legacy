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
    rammount = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPuedes volver al menú principal con 'N', o\nIngresa los GB de RAM para asignar al servidor= ")
    try:    
        if rammount.lower() == 'n':
            return
        else:
            gbs = int(rammount)
            if gbs <= 0 or gbs > 1024:
                ram()
            else:
                eula = "eula=true"
                with open("eula.txt", "w") as reemplazo:
                    reemplazo.write(eula)
                limpiar_consola()
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIniciando el servidor con {gbs}GB de RAM.\n")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                subprocess.run(comando_java, shell=True)
                input("\nPresiona ENTER para continuar.")
                limpiar_consola()
                input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl servidor se ha cerrado\n\nPuedes revisar el registro en la carpeta 'logs'\n\nPresiona ENTER para continuar.")
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
            online = "ONLINE"
        elif properties["online-mode"] == "true":
            online = "OFFLINE"
        if properties["hardcore"] == "false":
            hard = "ACTIVAR"
        elif properties["hardcore"] == "true":
            hard = "DESACTIVAR"
        if properties["pvp"] == "false":
            pvp = "ACTIVAR"
        elif properties["pvp"] == "true":
            pvp = "DESACTIVAR"
        limpiar_consola()
        confsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del servidor\n\n(1) Cambiar a modo {online}\n(2) {hard} modo hardcore\n(3) {pvp} PvP\n(4) Cambiar modo de juego\n(5) Cambiar dificultad\n(6) Cambiar límite de jugadores\n(7) Cambiar MOTD\n(8) Volver al menú principal\n\nSelecciona una de las opciones= ")
        if confsel == "1":
            if online == "ONLINE":
                properties["online-mode"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
            elif online == "OFFLINE":
                properties["online-mode"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {online}.")
            time.sleep(1.5)
            config()
        elif confsel == "2":
            if hard == "ACTIVAR":
                properties["hardcore"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                hard = "ACTIVADO"
            elif hard == "DESACTIVAR":
                properties["hardcore"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                hard = "DESACTIVADO"
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nModo hardcore {hard}.")
            time.sleep(1.5)
            config()
        elif confsel == "3":
            if pvp == "ACTIVAR":
                properties["pvp"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                pvp = "ACTIVADO"
            elif pvp == "DESACTIVAR":
                properties["pvp"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                pvp = "DESACTIVADO"
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPvP {pvp}.")
            time.sleep(1.5)
            config()
        elif confsel == "4":
            def juego():
                global properties
                modo = properties["gamemode"]
                if modo == "survival" or modo == "0":
                    modo = "SUPERVIVENCIA"
                elif modo == "creative" or modo == "1":
                    modo = "CREATIVO"
                elif modo == "adventure" or modo == "2":
                    modo = "AVENTURA"
                elif modo == "spectator" or modo == "3":
                    modo = "ESPECTADOR"
                limpiar_consola()
                #AGREGAR FORZAR MODO DE JUEGO AQUÍ ABAJO
                modosel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego actual es {modo}.\n\n(1) Cambiar a SUPERVIVENCIA\n(2) Cambiar a CREATIVO\n(3) Cambiar a AVENTURA\n(4) Cambiar a ESPECTADOR\n(5) Volver atrás\n(6) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if modosel == "1":
                    properties["gamemode"] = "0"
                    modo = "SUPERVIVENCIA"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "2":
                    properties["gamemode"] = "1"
                    modo = "CREATIVO"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "3":
                    properties["gamemode"] = "2"
                    modo = "AVENTURA"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a modo {modo}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "4":
                    properties["gamemode"] = "3"
                    modo = "ESPECTADOR"
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
                    dificultad = "PACÍFICO"
                elif dificultad == "easy" or dificultad == "1":
                    dificultad = "FÁCIL"
                elif dificultad == "normal" or dificultad == "2":
                    dificultad = "NORMAL"
                elif dificultad == "hard" or dificultad == "3":
                    dificultad = "DIFÍCIL"
                limpiar_consola()
                difsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad actual es {dificultad}.\n\n(1) Cambiar a PACÍFICO\n(2) Cambiar a FÁCIL\n(3) Cambiar a NORMAL\n(4) Cambiar a DIFÍCIL\n(5) Volver atrás\n(6) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if difsel == "1":
                    properties["difficulty"] = "0"
                    dificultad = "PACÍFICO"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "2":
                    properties["difficulty"] = "1"
                    dificultad = "FÁCIL"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "3":
                    properties["difficulty"] = "2"
                    dificultad = "NORMAL"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a dificultad {dificultad}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "4":
                    properties["difficulty"] = "3"
                    dificultad = "DIFÍCIL"
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
                newpl = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite de jugadores es {players}\n\n(N) Volver atrás\n(M) Volver al menú principal\n\nSelecciona una de las opciones o escribe el nuevo límite de jugadores= ")
                if newpl.lower() == "n":
                    config()
                elif newpl.lower() == "m":
                    return
                elif newpl.isnumeric():
                    try:
                        entero = int(newpl)
                        if entero <= 0 or entero > 100000:
                            playct()
                        else:
                            properties["max-players"] = newpl
                            with open('server.properties', 'w') as file:
                                for key, value in properties.items():
                                    file.write(f'{key}={value}\n')
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite de jugadores se ha cambiado a {entero}.")
                            time.sleep(1.5)
                            playct()
                    except ValueError:
                        playct()
                else:
                    playct()
            playct()
        elif confsel == "7":
            def motdnuevo():
                global properties
                global motd
                motd = properties["motd"]
                limpiar_consola()
                motdcm = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\n(1) Cambiar el MOTD\n(2) Volver atrás\n(3) Volver al menú principal\n\nSelecciona una de las opciones= ')
                if motdcm == "1":
                    def newmotd():
                        global properties
                        global motd
                        motd = properties["motd"]
                        limpiar_consola()
                        motd = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\nSe recomienda que el nuevo MOTD tenga un máximo de 20 caracteres\n\nEscribe aquí el nuevo MOTD= ')
                        def motdconfir():
                            global properties
                            global motd
                            limpiar_consola()
                            confir = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl nuevo MOTD para el servidor es:\n\n"{motd}"\n\n(1) Guardar el nuevo MOTD\n(2) Editar el nuevo MOTD\n(3) Cancelar\n\nSelecciona una de las opciones= ')
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
                            elif confir == "3":
                                motdnuevo()
                            else:
                                motdconfir()
                        motdconfir()
                    newmotd()
                elif motdcm == "2":
                    config()
                elif motdcm == "3":
                    return
                else:
                    motdnuevo()
            motdnuevo()
        elif confsel == "8":
            return
        else:
            config()
    else:
        limpiar_consola()
        input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl archivo de configuración del servidor aún no existe.\nDebes iniciar correctamente el servidor al menos 1 vez antes de poder configurar.\n\nPresiona ENTER para continuar.")

# LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    copyr = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2023 NGDPL Nk\n\n(1) Abrir licencia en el navegador\n(2) Volver al menú principal\n\nSelecciona una de las opciones= ")
    if copyr == "1":
        limpiar_consola()
        input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirá la licencia de la herramienta en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
        webbrowser.open(url)
    elif copyr == "2":
        return
    else:
        about()

# SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nMuchas gracias por usar esta herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

# MENÚ PRINCIPAL
while True:
    limpiar_consola()
    seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\n¡Hola! Estás en el menú principal\n\n(1) Iniciar servidor\n(2) Configurar servidor\n(3) Licencia\n(4) Salir\n\nSelecciona una de las opciones= ")
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        config()
    elif seleccion == "3":
        about()
    elif seleccion == "4":
        exiit()
