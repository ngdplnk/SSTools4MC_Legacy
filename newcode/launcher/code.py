#!/usr/bin/env python3

# MÓDULOS IMPORTADOS - IMPORTED MODULES
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
runn = True

# CLS
def limpiar_consola():
    if os.name == 'nt': # En Windows - On Windows
        os.system('cls')
    else: # En Linux y MacOS - On Linux and MacOS
        os.system('clear')

# ENGLISH
def eng():
    # WINDOW TITLE
    if sys.platform.startswith('win32'): # On Windows
        ctypes.windll.kernel32.SetConsoleTitleW("Server Launcher for Minecraft") # type: ignore
    elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): # On Linux or MacOS
        sys.stdout.write(f"\x1b]2;Server Launcher for Minecraft\x07")

    # SERVER STARTUP
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
        rammount = input(f"Server Launcher for Minecraft\n-------------------------------------\n\n(C) Use RAM in {gbormb}\n(N) Return to main menu\n\nSelect one of the options or enter the {valor1} of RAM to assing to the server= ").replace(" ", "")
        try:    
            if rammount.lower() == "c":
                if valor == "GB":
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nNow the RAM is on {gbormb}.")
                    time.sleep(1.5)
                    valor = "MB"
                    ram()
                elif valor == "MB":
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nNow the RAM is on {gbormb}.")
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
                if valor == "GB" and (gbs <= 0 or gbs > 75):
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid amount between 1 and 75 Gigabytes.")
                    time.sleep(1.5)
                    ram()
                elif valor == "MB" and (gbs <= 511 or gbs > 76800):
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid amount between 512 and 76,800 Megabytes.")
                    time.sleep(1.5)
                    ram()
                else:
                    eula = "eula.txt"
                    with open(eula, "w") as reemplazo:
                        reemplazo.write("eula=true")
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nStarting the server with {gbs}{valor} of RAM.\n")
                    comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                    subprocess.run(comando_java, shell=True)
                    input("\nPress ENTER to continue.")
                    fyh_sistema = datetime.datetime.now()
                    fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                    hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                    limpiar_consola()
                    input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server has closed on {fecha_cerrado} at {hora_cerrado}.\n\nYou can check the console log in the 'logs' folder.\n\nPress ENTER to continue.")
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
                online = colored("ENABLE","green")
            elif properties["online-mode"] == "true":
                online = colored("DISABLE","red")
            if properties["hardcore"] == "false":
                hard = colored("ENABLE","green")
            elif properties["hardcore"] == "true":
                hard = colored("DISABLE","red")
            if properties["pvp"] == "false":
                pvp = colored("ENABLE","green")
            elif properties["pvp"] == "true":
                pvp = colored("DISABLE","red")
            limpiar_consola()
            confsel = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nServer configuration\n\n(1) {online} online mode\n(2) {hard} hardcore mode\n(3) {pvp} PvP\n(4) Change gamemode\n(5) Change difficulty\n(6) Change max players limit\n(7) Edit MOTD\n(8) Return to main menu\n\nSelect one of the options= ")
            if properties["online-mode"] == "false":
                online = "ENABLE"
            elif properties["online-mode"] == "true":
                online = "DISABLE"
            if properties["hardcore"] == "false":
                hard = "ENABLE"
            elif properties["hardcore"] == "true":
                hard = "DISABLE"
            if properties["pvp"] == "false":
                pvp = "ENABLE"
            elif properties["pvp"] == "true":
                pvp = "DISABLE"
            try:
                if any(char in "0123456789+-*/" for char in confsel):
                    if not confsel[0].isalpha():
                        confug = eval(confsel)
                    else:
                        confug = confsel
                else:
                    confug = confsel
                confug = int(confug) 
                if confug == 1:
                    if online == "ENABLE":
                        properties["online-mode"] = "true"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        online = colored("ENABLED","green")
                    elif online == "DISABLE":
                        properties["online-mode"] = "false"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        online = colored("DISABLED","red")
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nOnline mode has been {online}.")
                    time.sleep(1.5)
                    config()
                elif confug == 2:
                    if hard == "ENABLE":
                        properties["hardcore"] = "true"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        hard = colored("ENABLED","green")
                    elif hard == "DISABLE":
                        properties["hardcore"] = "false"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        hard = colored("DISABLED","red")
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nHardcore mode has been {hard}.")
                    time.sleep(1.5)
                    config()
                elif confug == 3:
                    if pvp == "ENABLE":
                        properties["pvp"] = "true"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        pvp = colored("ENABLED","green")
                    elif pvp == "DISABLE":
                        properties["pvp"] = "false"
                        with open('server.properties', 'w') as file:
                            for key, value in properties.items():
                                file.write(f'{key}={value}\n')
                        pvp = colored("DISABLED","red")
                    limpiar_consola()
                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nPvP has been {pvp}.")
                    time.sleep(1.5)
                    config()
                elif confug == 4:
                    def juego():
                        global properties
                        modo = properties["gamemode"]
                        forzar = properties["force-gamemode"]
                        if modo == "survival" or modo == "0":
                            modo = colored("SURVIVAL","cyan")
                        elif modo == "creative" or modo == "1":
                            modo = colored("CREATIVE","cyan")
                        elif modo == "adventure" or modo == "2":
                            modo = colored("ADVENTURE","cyan")
                        elif modo == "spectator" or modo == "3":
                            modo = colored("SPECTATOR","cyan")
                        if forzar == "false":
                            forzar = colored("ENABLE","green")
                        elif forzar == "true":
                            forzar = colored("DISABLE","red")
                        superv = colored("SURVIVAL","yellow")
                        creat = colored("CREATIVE","yellow")
                        avent = colored("ADVENTURE","yellow")
                        espect = colored("SPECTATOR","yellow")
                        limpiar_consola()
                        modosel = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe current game mode is {modo}.\n\n(1) Change to {superv} gamemode\n(2) Change to {creat} gamemode\n(3) Change to {avent} gamemode\n(4) Change to {espect} gamemode\n(5) {forzar} force gamemode\n(6) Go back\n(7) Return to main menu\n\nSelect one of the options= ")
                        try:
                            if any(char in "0123456789+-*/" for char in modosel):
                                if not modosel[0].isalpha():
                                    coonf = eval(modosel)
                                else:
                                    coonf = modosel
                            else:
                                coonf = modosel
                            coonf = int(coonf)
                            if coonf == 1:
                                properties["gamemode"] = "0"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {superv}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 2:
                                properties["gamemode"] = "1"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {creat}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 3:
                                properties["gamemode"] = "2"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {avent}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 4:
                                properties["gamemode"] = "3"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {espect}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 5:
                                if forzar == "ENABLE":
                                    properties["force-gamemode"] = "true"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    forzar = "ENABLED"
                                elif forzar == "DISABLE":
                                    properties["force-gamemode"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    forzar = "DISABLED"
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nForce gamemode has been {forzar}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 6:
                                config()
                            elif coonf == 7:
                                return
                            else:
                                juego()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            juego()
                    juego()
                elif confug == 5:
                    def difconf():
                        global properties
                        dificultad = properties["difficulty"]
                        if dificultad == "peaceful" or dificultad == "0":
                            dificultad = colored("PEACEFUL","cyan")
                        elif dificultad == "easy" or dificultad == "1":
                            dificultad = colored("EASY","cyan")
                        elif dificultad == "normal" or dificultad == "2":
                            dificultad = colored("NORMAL","cyan")
                        elif dificultad == "hard" or dificultad == "3":
                            dificultad = colored("HARD","cyan")
                        pacif = colored("PEACEFUL","yellow")
                        facil = colored("EASY","yellow")
                        normal = colored("NORMAL","yellow")
                        dificil = colored("HARD","yellow")
                        limpiar_consola()
                        difsel = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe current difficulty is {dificultad}.\n\n(1) Change difficulty to {pacif}\n(2) Change difficulty to {facil}\n(3) Change difficulty to {normal}\n(4) Change difficulty to {dificil}\n(5) Go back\n(6) Return to main menu\n\nSelect one of the options= ")
                        try:
                            if any(char in "0123456789+-*/" for char in difsel):
                                if not difsel[0].isalpha():
                                    difcc = eval(difsel)
                                else:
                                    difcc = difsel
                            else:
                                difcc = difsel
                            difcc = int(difcc)
                            if difcc == 1:
                                properties["difficulty"] = "0"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {pacif}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 2:
                                properties["difficulty"] = "1"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {facil}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 3:
                                properties["difficulty"] = "2"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {normal}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 4:
                                properties["difficulty"] = "3"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {dificil}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 5:
                                config()
                            elif difcc == 6:
                                return
                            else:
                                difconf()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            difconf()
                    difconf()
                elif confug == 6:
                    def playct():
                        global properties
                        players = colored(properties["max-players"],"cyan")
                        limpiar_consola()
                        newpl = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe current player limit is a maximum of {players}.\n\n(N) Go back\n(M) Return to main menu\n\nSelect one of the options or enter the new player limit= ").replace(" ", "")
                        try:
                            if newpl.lower() == "n":
                                config()
                            elif newpl.lower() == "m":
                                return
                            else:
                                if any(char in "0123456789+-*/" for char in newpl):
                                    if not newpl[0].isalpha():
                                        entero = eval(newpl)
                                    else:
                                        entero = newpl
                                else:
                                    entero = newpl
                                entero = int(entero)
                                if entero <= 0 or entero > 100000:
                                    limpiar_consola()
                                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid number between 1 and 100,000.")
                                    time.sleep(1.5)
                                    playct()
                                else:
                                    properties["max-players"] = entero
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    entero = colored(str(entero),"yellow")
                                    limpiar_consola()
                                    print(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe maximum player limit is now {entero}.")
                                    time.sleep(1.5)
                                    playct()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            playct()
                    playct()
                elif confug == 7:
                    def motdnuevo():
                        global properties
                        global motd
                        motd = colored(properties["motd"],"cyan")
                        limpiar_consola()
                        motdcm = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe current MOTD of the server is:\n\n"{motd}"\n\n(1) Edit MOTD\n(2) Go back\n(3) Return to main menu\n\nSelect one of the options= ')
                        try:
                            if any(char in "0123456789+-*/" for char in motdcm):
                                if not motdcm[0].isalpha():
                                    camb = eval(motdcm)
                                else:
                                    camb = motdcm
                            else:
                                camb = motdcm
                            camb = int(camb)
                            if camb == 1:
                                def newmotd():
                                    global properties
                                    global motd
                                    global motdn
                                    motd = colored(properties["motd"],"cyan")
                                    limpiar_consola()
                                    motdn = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe current MOTD of the server is:\n\n"{motd}"\n\nIt is recommended that the new MOTD has a maximum of 20 characters (excluding format codes).\n\nYou can copy and paste some of these codes to the left of the text you write if you want to change its format. If you want to see more formatting options for MOTD, visit the link in the "(3) View license and extras" section in the main menu of the tool.\nIn that same section, you can also find an MOTD generator, which you can then paste here for your server.\n\n§k = Rotating text    |   §l = Bold\n§o = Italic           |   §m = Strikethrough\n§4 = Red text         |   §2 = Green text\n§e = Yellow text      |   §1 = Blue text\n§5 = Purple text      |   §f = White text\n\nEnter the new MOTD here= ')
                                    def motdconfir():
                                        global properties
                                        global motd
                                        global motdn
                                        motdnu = colored(motdn,"yellow")
                                        limpiar_consola()
                                        confir = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe current MOTD of the server is:\n\n"{motd}"\n\nThe new MOTD for the server is:\n\n"{motdnu}"\n\nIf you added formatting codes to your new MOTD and want to see them applied, you should start your server and view the MOTD directly from Minecraft.\n\n(1) Save the new MOTD\n(2) Edit MOTD again\n(3) Cancel\n\nSelect one of the options= ')
                                        try:
                                            if any(char in "0123456789+-*/" for char in confir):
                                                if not confir[0].isalpha():
                                                    cambi = eval(confir)
                                                else:
                                                    cambi = confir
                                            else:
                                                cambi = confir
                                            cambi = int(cambi)
                                            if cambi == 1:
                                                properties["motd"] = motdn
                                                with open('server.properties', 'w') as file:
                                                    for key, value in properties.items():
                                                        file.write(f'{key}={value}\n')
                                                limpiar_consola()
                                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nMOTD has been updated.")
                                                time.sleep(1.5)
                                                motdnuevo()
                                            elif cambi == 2:
                                                newmotd()
                                            elif cambi == 3:
                                                motdnuevo()
                                            else:
                                                motdconfir()
                                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                            motdconfir()
                                    if motdn == "":
                                        newmotd()
                                    elif motdn != "":
                                        motdconfir()
                                newmotd()
                            elif camb == 2:
                                config()
                            elif camb == 3:
                                return
                            else:
                                motdnuevo()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            motdnuevo()
                    motdnuevo()
                elif confug == 8:
                    return
                else:
                    config()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                config()
        else:
            limpiar_consola()
            input("Server Launcher for Minecraft\n-------------------------------------\n\nThe server configuration files do not exist yet or are not available.\nYou must start the server properly at least once before you can configure it.\n\nPress ENTER to continue.")

    # LICENSE AND EXTRAS
    def about():
        limpiar_consola()
        copyr = input("Server Launcher for Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2023 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) View the repository in the browser\n(2) View the license in the browser\n(3) View text formatting for MOTD in the browser\n(4) Return to main menu\n\nSelect one of the options= ")
        try:
            if any(char in "0123456789+-*/" for char in copyr):
                if not copyr[0].isalpha():
                    selec = eval(copyr)
                else:
                    selec = copyr
            else:
                selec = copyr
            selec = int(selec)
            if selec == 1:
                url = colored("https://github.com/NGDPLNk/SSTools4MC","cyan")
                limpiar_consola()
                input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe repository will open in your browser.\n\n{url}\n\nPress ENTER to continue.")
                url = "https://github.com/NGDPLNk/SSTools4MC"
                webbrowser.open(url)
            elif selec == 2:
                url = colored("https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE","cyan")
                limpiar_consola()
                input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe tool's license will open in your browser.\n\n{url}\n\nPress ENTER to continue.")
                url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
                webbrowser.open(url)
            elif selec == 3:
                url = colored("https://minecraft.tools/en/motd.php","cyan")
                url2 = colored("https://www.digminecraft.com/lists/color_list_pc.php","cyan")
                limpiar_consola()
                input(f"Server Launcher for Minecraft\n-------------------------------------\n\nTwo pages will open in your browser to view text formatting for MOTD.\n\n{url}\n\n{url2}\n\nPress ENTER to continue.")
                url = "https://minecraft.tools/en/motd.php"
                webbrowser.open(url)
                url2 = "https://www.digminecraft.com/lists/color_list_pc.php"
                webbrowser.open(url2)
            elif selec == 4:
                return
            else:
                about()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            about()

    # EXIT
    def exiit():
        limpiar_consola()
        print("--------------------------------------------\nThank you for using this tool\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
        time.sleep(1.2)
        sys.exit()

    # MAIN MENU
    def menu():
        limpiar_consola()
        seleccion = input("Server Launcher for Minecraft\n-------------------------------------\n\nHi! You are in the main menu.\n\n(1) Start the server\n(2) Manage the server\n(3) View license and extras\n(4) Change Language\n(5) Exit\n\nSelect one of the options= ")
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
                return
            elif sel == 5:
                exiit()
            menu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            menu()

    menu()

# ESPAÑOL
def esp():
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
                if valor == "GB" and (gbs <= 0 or gbs > 75):
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIngresa una cantidad válida entre 1 y 75 Gigabytes.")
                    time.sleep(1.5)
                    ram()
                elif valor == "MB" and (gbs <= 511 or gbs > 76800):
                    limpiar_consola()
                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIngresa una cantidad válida entre 512 y 76,800 Megabytes.")
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
            confsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del servidor\n\n(1) {online} el modo online\n(2) {hard} el modo hardcore\n(3) {pvp} el PvP\n(4) Cambiar el modo de juego\n(5) Cambiar la dificultad\n(6) Cambiar el límite de jugadores\n(7) Editar el MOTD\n(8) Volver al menú principal\n\nSelecciona una de las opciones= ")
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
            try:
                if any(char in "0123456789+-*/" for char in confsel):
                    if not confsel[0].isalpha():
                        confug = eval(confsel)
                    else:
                        confug = confsel
                else:
                    confug = confsel
                confug = int(confug)
                if confug == 1:
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
                elif confug == 2:
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
                elif confug == 3:
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
                elif confug == 4:
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
                        try:
                            if any(char in "0123456789+-*/" for char in modosel):
                                if not modosel[0].isalpha():
                                    coonf = eval(modosel)
                                else:
                                    coonf = modosel
                            else:
                                coonf = modosel
                            coonf = int(coonf)
                            if coonf == 1:
                                properties["gamemode"] = "0"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {superv}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 2:
                                properties["gamemode"] = "1"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {creat}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 3:
                                properties["gamemode"] = "2"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {avent}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 4:
                                properties["gamemode"] = "3"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego ahora es {espect}.")
                                time.sleep(1.5)
                                juego()
                            elif coonf == 5:
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
                            elif coonf == 6:
                                config()
                            elif coonf == 7:
                                return
                            else:
                                juego()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            juego()
                    juego()
                elif confug == 5:
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
                        try:
                            if any(char in "0123456789+-*/" for char in difsel):
                                if not difsel[0].isalpha():
                                    difcc = eval(difsel)
                                else:
                                    difcc = difsel
                            else:
                                difcc = difsel
                            difcc = int(difcc)
                            if difcc == 1:
                                properties["difficulty"] = "0"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {pacif}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 2:
                                properties["difficulty"] = "1"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {facil}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 3:
                                properties["difficulty"] = "2"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {normal}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 4:
                                properties["difficulty"] = "3"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                limpiar_consola()
                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad ahora es {dificil}.")
                                time.sleep(1.5)
                                difconf()
                            elif difcc == 5:
                                config()
                            elif difcc == 6:
                                return
                            else:
                                difconf()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            difconf()
                    difconf()
                elif confug == 6:
                    def playct():
                        global properties
                        players = colored(properties["max-players"],"cyan")
                        limpiar_consola()
                        newpl = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite actual de jugadores es de máximo {players}.\n\n(N) Volver atrás\n(M) Volver al menú principal\n\nSelecciona una de las opciones o escribe el nuevo límite de jugadores= ").replace(" ", "")
                        try:
                            if newpl.lower() == "n":
                                config()
                            elif newpl.lower() == "m":
                                return
                            else:
                                if any(char in "0123456789+-*/" for char in newpl):
                                    if not newpl[0].isalpha():
                                        entero = eval(newpl)
                                    else:
                                        entero = newpl
                                else:
                                    entero = newpl
                                entero = int(entero)
                                if entero <= 0 or entero > 100000:
                                    limpiar_consola()
                                    print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIngresa un número válido entre 1 y 100,000.")
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
                elif confug == 7:
                    def motdnuevo():
                        global properties
                        global motd
                        motd = colored(properties["motd"],"cyan")
                        limpiar_consola()
                        motdcm = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\n(1) Editar el MOTD\n(2) Volver atrás\n(3) Volver al menú principal\n\nSelecciona una de las opciones= ')
                        try:
                            if any(char in "0123456789+-*/" for char in motdcm):
                                if not motdcm[0].isalpha():
                                    camb = eval(motdcm)
                                else:
                                    camb = motdcm
                            else:
                                camb = motdcm
                            camb = int(camb)
                            if camb == 1:
                                def newmotd():
                                    global properties
                                    global motd
                                    global motdn
                                    motd = colored(properties["motd"],"cyan")
                                    limpiar_consola()
                                    motdn = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\nSe recomienda que el nuevo MOTD tenga un máximo de 20 caracteres (sin contar códigos de formato).\n\nPuedes copiar y pegar algunos de estos códigos a la izquierda del texto que escribas si quieres cambiar su formato. Si quieres ver más opciones de formato para los MOTD, visita el enlace que está en la sección "(3) Ver licencia y extras" en el menú principal de la herramienta.\nEn esa misma sección, también podrás encontrar un generador de MOTD, los que luego puedes pegar aquí para tu servidor.\n\n§k = Texto en movimiento  |   §l = Negrita\n§o = Cursiva              |   §m = Tachado\n§4 = Texto rojo           |   §2 = Texto verde\n§e = Texto amarillo       |   §1 = Texto azul\n§5 = Texto morado         |   §f = Texto blanco\n\nEscribe aquí el nuevo MOTD= ')
                                    def motdconfir():
                                        global properties
                                        global motd
                                        global motdn
                                        motdnu = colored(motdn,"yellow")
                                        limpiar_consola()
                                        confir = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD actual del servidor es:\n\n"{motd}"\n\nEl nuevo MOTD para el servidor es:\n\n"{motdnu}"\n\nSi agregaste códigos de formato a tu nuevo MOTD y quieres verlos aplicados, debes iniciar tu servidor y ver el MOTD directamente desde Minecraft.\n\n(1) Guardar el nuevo MOTD\n(2) Editar nuevamente el MOTD\n(3) Cancelar\n\nSelecciona una de las opciones= ')
                                        try:
                                            if any(char in "0123456789+-*/" for char in confir):
                                                if not confir[0].isalpha():
                                                    cambi = eval(confir)
                                                else:
                                                    cambi = confir
                                            else:
                                                cambi = confir
                                            cambi = int(cambi)
                                            if cambi == 1:
                                                properties["motd"] = motdn
                                                with open('server.properties', 'w') as file:
                                                    for key, value in properties.items():
                                                        file.write(f'{key}={value}\n')
                                                limpiar_consola()
                                                print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl MOTD se ha actualizado.")
                                                time.sleep(1.5)
                                                motdnuevo()
                                            elif cambi == 2:
                                                newmotd()
                                            elif cambi == 3:
                                                motdnuevo()
                                            else:
                                                motdconfir()
                                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                            motdconfir()
                                    if motdn == "":
                                        newmotd()
                                    elif motdn != "":
                                        motdconfir()
                                newmotd()
                            elif camb == 2:
                                config()
                            elif camb == 3:
                                return
                            else:
                                motdnuevo()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            motdnuevo()
                    motdnuevo()
                elif confug == 8:
                    return
                else:
                    config()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                config()
        else:
            limpiar_consola()
            input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLos archivos de configuración del servidor aún no existen o no están disponibles.\nDebes iniciar correctamente el servidor al menos 1 vez antes de poder configurar.\n\nPresiona ENTER para continuar.")

    # LICENCIA Y EXTRAS
    def about():
        limpiar_consola()
        copyr = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2023 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) Ver el repositorio en el navegador\n(2) Ver la licencia en el navegador\n(3) Ver formato de texto para los MOTD en el navegador\n(4) Volver al menú principal\n\nSelecciona una de las opciones= ")
        try:
            if any(char in "0123456789+-*/" for char in copyr):
                if not copyr[0].isalpha():
                    selec = eval(copyr)
                else:
                    selec = copyr
            else:
                selec = copyr
            selec = int(selec)
            if selec == 1:
                url = colored("https://github.com/NGDPLNk/SSTools4MC","cyan")
                limpiar_consola()
                input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirá el repositorio en tu navegador.\n\n{url}\n\nPress ENTER to continue.")
                url = "https://github.com/NGDPLNk/SSTools4MC"
                webbrowser.open(url)
            elif selec == 2:
                url = colored("https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE","cyan")
                limpiar_consola()
                input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirá la licencia de la herramienta en tu navegador.\n\n{url}\n\nPress ENTER to continue.")
                url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
                webbrowser.open(url)
            elif selec == 3:
                url = colored("https://minecraft.tools/es/motd.php","cyan")
                url2 = colored("https://www.digminecraft.com/lists/color_list_pc.php","cyan")
                limpiar_consola()
                input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrirán 2 páginas para ver el formato de texto en los MOTD, en tu navegador.\n\n{url}\n\n{url2}\n\nPress ENTER to continue.")
                url = "https://minecraft.tools/es/motd.php"
                webbrowser.open(url)
                url2 = "https://www.digminecraft.com/lists/color_list_pc.php"
                webbrowser.open(url2)
            elif selec == 4:
                return
            else:
                about()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            about()

    # SALIDA
    def exiit():
        limpiar_consola()
        print("--------------------------------------------\nMuchas gracias por usar esta herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
        time.sleep(1.2)
        sys.exit()

    # MENÚ PRINCIPAL
    def menu():
        limpiar_consola()
        seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\n¡Hola! Estás en el menú principal.\n\n(1) Iniciar el servidor\n(2) Administrar el servidor\n(3) Ver licencia y extras\n(4) Cambiar idioma\n(5) Salir\n\nSelecciona una de las opciones= ")
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
                return
            elif sel == 5:
                exiit()
            menu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            menu()

    menu()

# SELECCIÓN DE IDIOMA - LANGUAGE SELECTION
def lang():
    global runn
    limpiar_consola()
    lng = input(f"\n(1) English\n(2) Español\n(3) Exit/Salir\n\nSelect your language/Selecciona tu idioma= ")
    try:
        if any(char in "0123456789+-*/" for char in lng):
            if not lng[0].isalpha():
                langg = eval(lng)
            else:
                langg = lng
        else:
            langg = lng
        langg = int(langg)
        if langg == 1:
            eng()
        elif langg == 2:
            esp()
        elif langg == 3:
            runn = False
            return
        else:
            lang()
    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
        lang()

# INICIAR HERRAMIENTA - RUN TOOL
while runn == True:
    lang()