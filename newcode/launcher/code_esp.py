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

# VARIABLES
valor = None

# CLS
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
    global valor
    valor1 = None
    gbormb = None
    vjava = None
    if valor == None:
        valor = "GB"
        valor1 = colored("GIGABYTES","cyan")
        vjava = "G"
        gbormb = colored("MEGABYTES","yellow")
    if valor == "GB":
        valor1 = colored("GIGABYTES","cyan")
        vjava = "G"
        gbormb = colored("MEGABYTES","yellow")
    elif valor == "MB":
        valor1 = colored("MEGABYTES","cyan")
        vjava = "M"
        gbormb = colored("GIGABYTES","yellow")
    limpiar_consola()
    gbs = 0
    rammount = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\n(C) Usar RAM en {gbormb}\n(N) Volver al menú principal\n\nSelecciona una de las opciones o ingresa los {valor1} de RAM para asignar al servidor= ").replace(" ", "")
    try:    
        if rammount.lower() == "c":
            if valor == "GB":
                limpiar_consola()
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nAhora la RAM está en {gbormb}.")
                time.sleep(1.5)
                valor = "MB"
                ram()
            elif valor == "MB":
                limpiar_consola()
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nAhora la RAM está en {gbormb}.")
                time.sleep(1.5)
                valor = "GB"
                ram()
        elif rammount.lower() == "n":
            return
        else:
            if any(char in "0123456789+-*/" for char in rammount):
                if not rammount[0].isalpha():
                    gbs = eval(rammount)
                else:
                    gbs = rammount
            else:
                gbs = rammount
            gbs = int(gbs)
            if valor == "GB" and (gbs <= 0 or gbs > 1024):
                limpiar_consola()
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nElige una cantidad válida entre 1 y 1024 Gigabytes.")
                time.sleep(1.5)
                ram()
            elif valor == "MB" and (gbs <= 0 or gbs > 1048576):
                limpiar_consola()
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nElige una cantidad válida entre 1 y 1048576 Megabytes.")
                time.sleep(1.5)
                ram()
            else:
                eula = "eula.txt"
                with open(eula, "w") as reemplazo:
                    reemplazo.write("eula=true")
                limpiar_consola()
                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIniciando el servidor con {gbs}{valor} de RAM.\n")
                comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                subprocess.run(comando_java, shell=True)
                input("\nPresiona ENTER para continuar.")
                fyh_sistema = datetime.datetime.now()
                fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                limpiar_consola()
                input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl servidor se ha cerrado el {fecha_cerrado} a las {hora_cerrado}.\n\nPuedes revisar el registro de la consola en la carpeta 'logs'\n\nPresiona ENTER para continuar.")
    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
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
            online = colored("ACTIVAR","green")
        elif properties["online-mode"] == "true":
            online = colored("DESACTIVAR","red")
        if properties["hardcore"] == "false":
            hard = colored("ACTIVAR","green")
        elif properties["hardcore"] == "true":
            hard = colored("DESACTIVAR","red")
        if properties["pvp"] == "false":
            pvp = colored("ACTIVAR","green")
        elif properties["pvp"] == "true":
            pvp = colored("DESACTIVAR","red")
        limpiar_consola()
        confsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del servidor\n\n(1) {online} el modo online\n(2) {hard} el modo hardcore\n(3) {pvp} el PvP\n(4) Cambiar el modo de juego\n(5) Cambiar la dificultad\n(6) Cambiar el límite de jugadores\n(7) Cambiar el MOTD (Beta)\n(8) Volver al menú principal\n\nSelecciona una de las opciones= ")
        if properties["online-mode"] == "false":
            online = "ACTIVAR"
        elif properties["online-mode"] == "true":
            online = "DESACTIVAR"
        if properties["hardcore"] == "false":
            hard = "ACTIVAR"
        elif properties["hardcore"] == "true":
            hard = "DESACTIVAR"
        if properties["pvp"] == "false":
            pvp = "ACTIVAR"
        elif properties["pvp"] == "true":
            pvp = "DESACTIVAR"
        if confsel == "1":
            if online == "ACTIVAR":
                properties["online-mode"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                online = colored("ACTIVADO","green")
            elif online == "DESACTIVAR":
                properties["online-mode"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                online = colored("DESACTIVADO","red")
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo online se ha {online}.")
            time.sleep(1.5)
            config()
        elif confsel == "2":
            if hard == "ACTIVAR":
                properties["hardcore"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                hard = colored("ACTIVADO","green")
            elif hard == "DESACTIVAR":
                properties["hardcore"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                hard = colored("DESACTIVADO","red")
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo hardcore se ha {hard}.")
            time.sleep(1.5)
            config()
        elif confsel == "3":
            if pvp == "ACTIVAR":
                properties["pvp"] = "true"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                pvp = colored("ACTIVADO","green")
            elif pvp == "DESACTIVAR":
                properties["pvp"] = "false"
                with open('server.properties', 'w') as file:
                    for key, value in properties.items():
                        file.write(f'{key}={value}\n')
                pvp = colored("DESACTIVADO","red")
            limpiar_consola()
            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl PvP se ha {pvp}.")
            time.sleep(1.5)
            config()
        elif confsel == "4":
            def juego():
                global properties
                modo = properties["gamemode"]
                forzar = properties["force-gamemode"]
                if modo == "survival" or modo == "0":
                    modo = colored("SUPERVIVENCIA","cyan")
                elif modo == "creative" or modo == "1":
                    modo = colored("CREATIVO","cyan")
                elif modo == "adventure" or modo == "2":
                    modo = colored("AVENTURA","cyan")
                elif modo == "spectator" or modo == "3":
                    modo = colored("ESPECTADOR","cyan")
                if forzar == "false":
                    forzar = colored("ACTIVAR","green")
                elif forzar == "true":
                    forzar = colored("DESACTIVAR","red")
                superv = colored("SUPERVIVENCIA","yellow")
                creat = colored("CREATIVO","yellow")
                avent = colored("AVENTURA","yellow")
                espect = colored("ESPECTADOR","yellow")
                limpiar_consola()
                modosel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego actual es {modo}.\n\n(1) Cambiar a modo {superv}\n(2) Cambiar a modo {creat}\n(3) Cambiar a modo {avent}\n(4) Cambiar a modo {espect}\n(5) {forzar} forzar el modo de juego\n(6) Volver atrás\n(7) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if modosel == "1":
                    properties["gamemode"] = "0"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {superv}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "2":
                    properties["gamemode"] = "1"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {creat}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "3":
                    properties["gamemode"] = "2"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {avent}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "4":
                    properties["gamemode"] = "3"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {espect}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "5":
                    if forzar == "ACTIVAR":
                        properties["force-gamemode"] = "true"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        forzar = "ACTIVADO"
                    elif forzar == "DESACTIVAR":
                        properties["force-gamemode"] = "false"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        forzar = "DESACTIVADO"
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nForzar el modo de juego se ha {forzar}.")
                    time.sleep(1.5)
                    juego()
                elif modosel == "6":
                    config()
                elif modosel == "7":
                    return
                else:
                    juego()
            juego()
        elif confsel == "5":
            def difconf():
                global properties
                dificultad = properties["difficulty"]
                if dificultad == "peaceful" or dificultad == "0":
                    dificultad = colored("PACÍFICO","cyan")
                elif dificultad == "easy" or dificultad == "1":
                    dificultad = colored("FÁCIL","cyan")
                elif dificultad == "normal" or dificultad == "2":
                    dificultad = colored("NORMAL","cyan")
                elif dificultad == "hard" or dificultad == "3":
                    dificultad = colored("DIFÍCIL","cyan")
                pacif = colored("PACÍFICO","yellow")
                facil = colored("FÁCIL","yellow")
                normal = colored("NORMAL","yellow")
                dificil = colored("DIFÍCIL","yellow")
                limpiar_consola()
                difsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad actual es {dificultad}.\n\n(1) Cambiar a dificultad {pacif}\n(2) Cambiar a dificultad {facil}\n(3) Cambiar a dificultad {normal}\n(4) Cambiar a dificultad {dificil}\n(5) Volver atrás\n(6) Volver al menú principal\n\nSelecciona una de las opciones= ")
                if difsel == "1":
                    properties["difficulty"] = "0"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {pacif}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "2":
                    properties["difficulty"] = "1"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {facil}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "3":
                    properties["difficulty"] = "2"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {normal}.")
                    time.sleep(1.5)
                    difconf()
                elif difsel == "4":
                    properties["difficulty"] = "3"
                    with open('server.properties', 'w') as file:
                        for key, value in properties.items():
                            file.write(f'{key}={value}\n')
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {dificil}.")
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
                players = colored(properties["max-players"],"cyan")
                limpiar_consola()
                newpl = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite actual de jugadores es de máximo {players}\n\n(N) Volver atrás\n(M) Volver al menú principal\n\nSelecciona una de las opciones o escribe el nuevo límite de jugadores= ").replace(" ", "")
                try:
                    if newpl.lower() == "n":
                        config()
                    elif newpl.lower() == "m":
                        return
                    else:
                        if any(char in "0123456789+-*/" for char in newpl):
                            entero = eval(newpl)
                        else:
                            entero = newpl
                        entero = int(entero)
                        if entero <= 0 or entero > 100000:
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nElige un número válido entre 1 y 100000.")
                            time.sleep(1.5)
                            playct()
                        else:
                            properties["max-players"] = entero
                            with open('server.properties', 'w') as file:
                                for key, value in properties.items():
                                    file.write(f'{key}={value}\n')
                            entero = colored(str(entero),"yellow")
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite máximo de jugadores ahora es {entero}.")
                            time.sleep(1.5)
                            playct()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    playct()
            playct()
        elif confsel == "7":
            def motdnuevo():
                global properties
                global motd
                motd = colored(properties["motd"],"cyan")
                limpiar_consola()
                motdcm = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\nRecuerda que esta función aún está en BETA y podría no funcionar como esperas.\n\n(1) Cambiar el MOTD\n(2) Volver atrás\n(3) Volver al menú principal\n\nSelecciona una de las opciones= ')
                if motdcm == "1":
                    def newmotd():
                        global properties
                        global motd
                        global motdn
                        motd = colored(properties["motd"],"cyan")
                        limpiar_consola()
                        motdn = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\nSe recomienda que el nuevo MOTD tenga un máximo de 20 caracteres (sin contar códigos de formato).\n\nPuedes copiar y pegar algunos de estos códigos a la izquierda del texto que escribas si quieres cambiar su formato. Si quieres ver más opciones de formato para los MOTD, visita el enlace que está en la sección "(3) Ver licencia y extras" en el menú principal de la herramienta.\nEn esa misma sección, también podrás encontrar un generador de MOTD, los que luego puedes pegar aquí para tu servidor.\n\n§k = Texto en movimiento  |   §l = Negrita\n§o = Cursiva              |   §m = Tachado\n§4 = Color rojo           |   §2 = Color verde\n§e = Color amarillo       |   §1 = Color azul\n§5 = Color morado         |   §f = Color blanco\n\nEscribe aquí el nuevo MOTD= ')
                        def motdconfir():
                            global properties
                            global motd
                            global motdn
                            motdnu = colored(motdn,"yellow")
                            limpiar_consola()
                            confir = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\nEl nuevo MOTD para el servidor es:\n\n"{motdnu}"\n\nSi agregaste códigos de formato a tu nuevo MOTD y quieres verlos aplicados, debes iniciar tu servidor y ver el MOTD directamente desde Minecraft.\n\n(1) Guardar el nuevo MOTD\n(2) Editar nuevamente el MOTD\n(3) Cancelar\n\nSelecciona una de las opciones= ')
                            if confir == "1":
                                properties["motd"] = motdn
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
                        if motdn == "":
                            newmotd()
                        elif motdn != "":
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

# LICENCIA Y EXTRAS
def about():
    limpiar_consola()
    copyr = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2023 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) Ver el repositorio en el navegador\n(2) Ver la licencia en el navegador\n(3) Ver formato de texto de MOTD's en el navegador\n(4) Volver al menú principal\n\nSelecciona una de las opciones= ")
    if copyr == "1":
        url = colored("https://github.com/NGDPLNk/SSTools4MC","cyan")
        limpiar_consola()
        input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirá el repositorio en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
        url = "https://github.com/NGDPLNk/SSTools4MC"
        webbrowser.open(url)
    elif copyr == "2":
        url = colored("https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE","cyan")
        limpiar_consola()
        input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirá la licencia de la herramienta en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
        url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
        webbrowser.open(url)
    elif copyr == "3":
        url = colored("https://www.digminecraft.com/lists/color_list_pc.php","cyan")
        url2 = colored("https://minecraft.tools/es/motd.php","cyan")
        limpiar_consola()
        input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirán 2 páginas para ver el formato de texto en los MOTD, en tu navegador.\n\n{url}\n\n{url2}\n\nPresiona ENTER para continuar.")
        url = "https://www.digminecraft.com/lists/color_list_pc.php"
        webbrowser.open(url)
        url2 = "https://minecraft.tools/es/motd.php"
        webbrowser.open(url2)
    elif copyr == "4":
        return
    else:
        about()

# SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nMuchas gracias por usar esta herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1.3)
    sys.exit()

# MENÚ PRINCIPAL
while True:
    limpiar_consola()
    seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\n¡Hola! Estás en el menú principal.\n\n(1) Iniciar el servidor\n(2) Administrar el servidor\n(3) Ver extras y licencia\n(4) Salir\n\nSelecciona una de las opciones= ")
    if seleccion == "1":
        ram()
    elif seleccion == "2":
        config()
    elif seleccion == "3":
        about()
    elif seleccion == "4":
        exiit()
