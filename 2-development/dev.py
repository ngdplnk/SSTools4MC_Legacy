#!/usr/bin/env python3

# MÓDULOS IMPORTADOS - IMPORTED MODULES
import os
import time
import sys
import ctypes
import subprocess
import webbrowser
import datetime
import locale
import requests
from tkinter import filedialog
from termcolor import colored

# VARIABLES
valor = None
runn = True

# PATHS
APPDATA = os.getenv('APPDATA')
SSTOOLS_FOLDER = os.path.join(APPDATA, "SSTools4MC") # type: ignore
CONFIG_PATH = os.path.join(SSTOOLS_FOLDER, "config") # type: ignore
SAVED_SERVERS = os.path.join(CONFIG_PATH, "saved-servers.cfg") # type: ignore

# MINECRAFT VERSIONS
## 81 VERSIONS ADDED (1.2.1 - 1.20.4)
# LAST UPDATE: 23-03-2024
MCVERSIONS = {
    "1.2.1": "https://assets.minecraft.net/1_2/minecraft_server.jar",
    "1.2.2": "https://assets.minecraft.net/1_2/minecraft_server.jar",
    "1.2.3": "https://assets.minecraft.net/1_2/minecraft_server.jar",
    "1.2.4": "https://assets.minecraft.net/1_2_5/minecraft_server.jar",
    "1.2.5": "https://launcher.mojang.com/v1/objects/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar",
    "1.3.1": "https://launcher.mojang.com/v1/objects/82563ce498bfc1fc8a2cb5bf236f7da86a390646/server.jar",
    "1.3.2": "https://launcher.mojang.com/v1/objects/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar",
    "1.4.2": "https://launcher.mojang.com/v1/objects/5be700523a729bb78ef99206fb480a63dcd09825/server.jar",
    "1.4.4": "https://launcher.mojang.com/v1/objects/4215dcadb706508bf9d6d64209a0080b9cee9e71/server.jar",
    "1.4.5": "https://launcher.mojang.com/v1/objects/c12fd88a8233d2c517dbc8196ba2ae855f4d36ea/server.jar",
    "1.4.6": "https://launcher.mojang.com/v1/objects/a0aeb5709af5f2c3058c1cf0dc6b110a7a61278c/server.jar",
    "1.4.7": "https://launcher.mojang.com/v1/objects/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar",
    "1.5.1": "https://launcher.mojang.com/v1/objects/d07c71ee2767dabb79fb32dad8162e1b854d5324/server.jar",
    "1.5.2": "https://launcher.mojang.com/v1/objects/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar",
    "1.6.1": "https://launcher.mojang.com/v1/objects/0252918a5f9d47e3c6eb1dfec02134d1374a89b4/server.jar",
    "1.6.2": "https://launcher.mojang.com/v1/objects/01b6ea555c6978e6713e2a2dfd7fe19b1449ca54/server.jar",
    "1.6.4": "https://launcher.mojang.com/v1/objects/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar",
    "1.7.2": "https://launcher.mojang.com/v1/objects/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar",
    "1.7.3": "https://launcher.mojang.com/v1/objects/707857a7bc7bf54fe60d557cca71004c34aa07bb/server.jar",
    "1.7.4": "https://launcher.mojang.com/v1/objects/61220311cef80aecc4cd8afecd5f18ca6b9461ff/server.jar",
    "1.7.5": "https://launcher.mojang.com/v1/objects/e1d557b2e31ea881404e41b05ec15c810415e060/server.jar",
    "1.7.6": "https://launcher.mojang.com/v1/objects/41ea7757d4d7f74b95fc1ac20f919a8e521e910c/server.jar",
    "1.7.7": "https://launcher.mojang.com/v1/objects/a6ffc1624da980986c6cc12a1ddc79ab1b025c62/server.jar",
    "1.7.8": "https://launcher.mojang.com/v1/objects/c69ebfb84c2577661770371c4accdd5f87b8b21d/server.jar",
    "1.7.9": "https://launcher.mojang.com/v1/objects/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar",
    "1.7.10": "https://launcher.mojang.com/v1/objects/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar",
    "1.8": "https://launcher.mojang.com/v1/objects/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar",
    "1.8.1": "https://launcher.mojang.com/v1/objects/68bfb524888f7c0ab939025e07e5de08843dac0f/server.jar",
    "1.8.2": "https://launcher.mojang.com/v1/objects/a37bdd5210137354ed1bfe3dac0a5b77fe08fe2e/server.jar",
    "1.8.3": "https://launcher.mojang.com/v1/objects/163ba351cb86f6390450bb2a67fafeb92b6c0f2f/server.jar",
    "1.8.4": "https://launcher.mojang.com/v1/objects/dd4b5eba1c79500390e0b0f45162fa70d38f8a3d/server.jar",
    "1.8.5": "https://launcher.mojang.com/v1/objects/ea6dd23658b167dbc0877015d1072cac21ab6eee/server.jar",
    "1.8.6": "https://launcher.mojang.com/v1/objects/2bd44b53198f143fb278f8bec3a505dad0beacd2/server.jar",
    "1.8.7": "https://launcher.mojang.com/v1/objects/35c59e16d1f3b751cd20b76b9b8a19045de363a9/server.jar",
    "1.8.8": "https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar",
    "1.8.9": "https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar",
    "1.9": "https://launcher.mojang.com/v1/objects/b4d449cf2918e0f3bd8aa18954b916a4d1880f0d/server.jar",
    "1.9.1": "https://launcher.mojang.com/v1/objects/bf95d9118d9b4b827f524c878efd275125b56181/server.jar",
    "1.9.2": "https://launcher.mojang.com/v1/objects/2b95cc7b136017e064c46d04a5825fe4cfa1be30/server.jar",
    "1.9.3": "https://launcher.mojang.com/v1/objects/8e897b6b6d784f745332644f4d104f7a6e737ccf/server.jar",
    "1.9.4": "https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar",
    "1.10": "https://launcher.mojang.com/v1/objects/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar",
    "1.10.1": "https://launcher.mojang.com/v1/objects/cb4c6f9f51a845b09a8861cdbe0eea3ff6996dee/server.jar",
    "1.10.2": "https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar",
    "1.11": "https://launcher.mojang.com/v1/objects/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar",
    "1.11.1": "https://launcher.mojang.com/v1/objects/1f97bd101e508d7b52b3d6a7879223b000b5eba0/server.jar",
    "1.11.2": "https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar",
    "1.12": "https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar",
    "1.12.1": "https://launcher.mojang.com/v1/objects/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar",
    "1.12.2": "https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar",
    "1.13": "https://launcher.mojang.com/v1/objects/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar",
    "1.13.1": "https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar",
    "1.13.2": "https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar",
    "1.14": "https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar",
    "1.14.1": "https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar",
    "1.14.2": "https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar",
    "1.14.3": "https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar",
    "1.14.4": "https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar",
    "1.15": "https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar",
    "1.15.1": "https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar",
    "1.15.2": "https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar",
    "1.16": "https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar",
    "1.16.1": "https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar",
    "1.16.2": "https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar",
    "1.16.3": "https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar",
    "1.16.4": "https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar",
    "1.16.5": "https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar",
    "1.17": "https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar",
    "1.17.1": "https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar",
    "1.18": "https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar",
    "1.18.1": "https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar",
    "1.18.2": "https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar",
    "1.19": "https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar",
    "1.19.1": "https://piston-data.mojang.com/v1/objects/8399e1211e95faa421c1507b322dbeae86d604df/server.jar",
    "1.19.2": "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar",
    "1.19.3": "https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar",
    "1.19.4": "https://piston-data.mojang.com/v1/objects/8f3112a1049751cc472ec13e397eade5336ca7ae/server.jar",
    "1.20": "https://piston-data.mojang.com/v1/objects/15c777e2cfe0556eef19aab534b186c0c6f277e1/server.jar",
    "1.20.1": "https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar",
    "1.20.2": "https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar",
    "1.20.3": "https://piston-data.mojang.com/v1/objects/4fb536bfd4a83d61cdbaf684b8d311e66e7d4c49/server.jar",
    "1.20.4": "https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar"
}

# CLS
def limpiar_consola():
    if os.name == 'nt': # En Windows - On Windows
        os.system('cls')
    else: # En sistemas Unix-like - On Unix-like systems
        os.system('clear')

# WINDOW TITLE
def window_title(title):
    if sys.platform.startswith('win32'): # En Windows - On Windows
        ctypes.windll.kernel32.SetConsoleTitleW(title)
    elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): # En sistemas Unix-like - On Unix-like systems
        sys.stdout.write(f"\x1b]2;{title}\x07")

# ENGLISH
def eng():
    # CHANGE WINDOW TITLE
    window_title("Server Launcher for Minecraft")

    # SERVER STARTUP
    def ram():
        global servername
        limpiar_consola()
        sservers = {}
        if os.path.exists(SAVED_SERVERS):
            with open(SAVED_SERVERS, 'r') as file:
                for line in file:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        key, value = line.split('<[=]>')
                        sservers[key.strip()] = value.strip()
            if sservers:
                limpiar_consola()
                print('Server Launcher for Minecraft\n-------------------------------------\n\n"Your Servers" List\nSelect the server you want to start.\n')
                server_keys = list(sservers.keys())
                for i, key in enumerate(server_keys, start=1):
                    print(f"({i}) {key}")

                print("\n(N) New server\n(D) Delete a Server from the list\n(C) Clear list\n(R) Return to main menu")
                servsel = input("\nSelect one of the options or enter the number of the server to start= ").replace(" ", "")
                try:
                    if servsel.lower() == "n":
                        newserv = filedialog.askdirectory()
                        servname = os.path.basename(newserv)
                        if newserv == "" or servname == "":
                            limpiar_consola()
                            print('Server Launcher for Minecraft\n-------------------------------------\n\nYou must select a folder to save it in "Your Servers" List.')
                            time.sleep(2.5)
                            ram()
                        if newserv and servname:
                            servstring = f"{servname}<[=]>{newserv}\n"
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                lines = file.readlines()
                                if servstring not in lines:
                                    file.write(servstring)
                        limpiar_consola()
                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server {servname} has been saved.")
                        time.sleep(1.5)
                        ram()
                    elif servsel.lower() == "d":
                        limpiar_consola()
                        print("Server Launcher for Minecraft\n-------------------------------------\n\nSelect the server to delete from the list.\n")
                        for i, key in enumerate(server_keys, start=1):
                            print(f"({i}) {key}")
                        print("\n(N) Cancel\n(R) Return to main menu")
                        servsel = input("\nSelect one of the options or enter the number of the server to delete= ").replace(" ", "")
                        try:
                            if servsel.lower() == "r":
                                eng()
                            elif servsel.lower() == "n":
                                ram()
                            else:
                                if any(char in "0123456789+-*/" for char in servsel):
                                    if not servsel[0].isalpha():
                                        servv = eval(servsel)
                                    else:
                                        servv = servsel
                                else:
                                    servv = servsel
                                servsel = int(servv)
                                if 1 <= servsel <= len(server_keys):
                                    servsel = server_keys[servsel - 1]
                                    servpath = sservers[servsel]
                                    servestring = f"{servsel}<[=]>{servpath}\n"
                                os.makedirs(CONFIG_PATH, exist_ok=True)
                                with open(SAVED_SERVERS, 'r') as file:
                                    lines = file.readlines()
                                    os.makedirs(CONFIG_PATH, exist_ok=True)
                                    with open(SAVED_SERVERS, 'w') as file:
                                        for line in lines:
                                            if line != servestring:
                                                file.write(line)
                                limpiar_consola()
                                print(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server {servsel} has been deleted from the list.")
                                time.sleep(1.5)
                                ram()             
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            ram()
                    elif servsel.lower() == "c":
                        limpiar_consola()
                        clearconfirm = input("Server Launcher for Minecraft\n-------------------------------------\n\nAre you sure you want to clear the list of saved servers?\n\n(1) Yes\n(2) No\n\nSelect one of the options= ")
                        try:
                            if any(char in "0123456789+-*/" for char in clearconfirm):
                                if not clearconfirm[0].isalpha():
                                    clearconf = eval(clearconfirm)
                                else:
                                    clearconf = clearconfirm
                            else:
                                clearconf = clearconfirm
                            clearconf = int(clearconf)
                            if clearconf == 1:
                                os.makedirs(CONFIG_PATH, exist_ok=True)
                                with open(SAVED_SERVERS, 'w') as file:
                                    file.write("# Server Launcher for Minecraft\n# Saved servers\n")
                                limpiar_consola()
                                print("Server Launcher for Minecraft\n-------------------------------------\n\nThe list of saved servers has been cleared.")
                                time.sleep(1.5)
                                ram()
                            elif clearconf == 2:
                                ram()
                            else:
                                ram()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            ram()
                    elif servsel.lower() == "r":
                        eng()
                    else:
                        if any(char in "0123456789+-*/" for char in servsel):
                            if not servsel[0].isalpha():
                                servv = eval(servsel)
                            else:
                                servv = servsel
                        else:
                            servv = servsel
                        servsel = int(servv)
                        if 1 <= servsel <= len(server_keys):
                            servsel = server_keys[servsel - 1]
                            servpath = sservers[servsel]
                            os.makedirs(servpath, exist_ok=True)
                            os.chdir(servpath)
                            servername = servsel
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    ram()
            else:
                os.makedirs(CONFIG_PATH, exist_ok=True)
                with open(SAVED_SERVERS, 'w') as file:
                    file.write("# Server Launcher for Minecraft\n# Saved servers\n")
                limpiar_consola()
                saveconfirm = input("Server Launcher for Minecraft\n-------------------------------------\n\nThere are no saved servers.\n\n(1) Add a Server\n(2) Return to the main menu\n\nSelect one of the options= ")
                try:
                    if any(char in "0123456789+-*/" for char in saveconfirm):
                        if not saveconfirm[0].isalpha():
                            saveconf = eval(saveconfirm)
                        else:
                            saveconf = saveconfirm
                    else:
                        saveconf = saveconfirm
                    saveconf = int(saveconf)
                    if saveconf == 1:
                        newserv = filedialog.askdirectory()
                        servname = os.path.basename(newserv)
                        if newserv == "" or servname == "":
                            limpiar_consola()
                            print('Server Launcher for Minecraft\n-------------------------------------\n\nYou must select a folder to save it in "Your Servers" List.')
                            time.sleep(2.5)
                            ram()
                        if newserv and servname:
                            servstring = f"{servname}<[=]>{newserv}\n"
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                lines = file.readlines()
                                if servstring not in lines:
                                    file.write(servstring)
                        limpiar_consola()
                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server {servname} has been saved.")
                        time.sleep(1.5)
                        ram()
                    elif saveconf == 2:
                        eng()
                    else:
                        ram()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    ram()
        else:
            os.makedirs(CONFIG_PATH, exist_ok=True)
            with open(SAVED_SERVERS, 'w') as file:
                file.write("# Server Launcher for Minecraft\n# Saved servers\n")
            limpiar_consola()
            input('Server Launcher for Minecraft\n-------------------------------------\n\nThere are no saved servers.\n\nPress ENTER to select a folder with a Server and add it to "Your Servers" list.')
            newserv = filedialog.askdirectory()
            servname = os.path.basename(newserv)
            if newserv and servname:
                servstring = f"{servname}<[=]>{newserv}\n"
                with open(SAVED_SERVERS, 'r+') as file:
                    lines = file.readlines()
                    if servstring not in lines:
                        file.write(servstring)
            limpiar_consola()
            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server {servname} has been saved.")
            time.sleep(1.5)
            ram()
        if os.path.exists("server.jar"):
            def run_server():
                global servername
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
                nameserver = colored(servername,"green")
                limpiar_consola()
                gbs = 0
                rammount = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nYou are about to start the Server "{nameserver}"\n\n(C) Use RAM in {gbormb}\n(B) Back\n(N) Return to main menu\n\nSelect one of the options or enter the {valor1} of RAM to assing to the server= ').replace(" ", "")
                try:    
                    if rammount.lower() == "c":
                        if valor == "GB":
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nNow the RAM is on {gbormb}.")
                            time.sleep(1.5)
                            valor = "MB"
                            run_server()
                        elif valor == "MB":
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nNow the RAM is on {gbormb}.")
                            time.sleep(1.5)
                            valor = "GB"
                            run_server()
                    elif rammount.lower() == "b":
                        ram()
                    elif rammount.lower() == "n":
                        eng()
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
                            run_server()
                        elif valor == "MB" and (gbs <= 511 or gbs > 76800):
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid amount between 512 and 76,800 Megabytes.")
                            time.sleep(1.5)
                            run_server()
                        else:
                            eula = "eula.txt"
                            with open(eula, "w") as reemplazo:
                                reemplazo.write("eula=true")
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nStarting the server with {gbs}{valor} of RAM.\n")
                            comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                            subprocess.run(comando_java, shell=True)
                            fyh_sistema = datetime.datetime.now()
                            fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                            hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                            input("\nPress ENTER to continue.")
                            limpiar_consola()
                            input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server has closed on {fecha_cerrado} at {hora_cerrado}.\n\nYou can check the console log in the 'logs' folder.\n\nPress ENTER to continue.")
                            ram()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    run_server()
            run_server()
        else:
            limpiar_consola()
            print("Server Launcher for Minecraft\n-------------------------------------\n\nServer.jar not found in this folder.\n\nAre you sure this is a Server?")
            time.sleep(2.5)
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
            confsel = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nServer configuration\n\n(1) {online} online mode\n(2) {hard} hardcore mode\n(3) {pvp} PvP\n(4) Change gamemode\n(5) Change difficulty\n(6) Change max players limit\n(7) Return to main menu\n\nSelect one of the options= ")
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
                                eng()
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
                                eng()
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
                                eng()
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
                    eng()
                else:
                    config()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                config()
        else:
            limpiar_consola()
            input("Server Launcher for Minecraft\n-------------------------------------\n\nThe server configuration files do not exist yet or are not available.\nYou must start the server properly at least once before you can configure it.\n\nPress ENTER to continue.")

    # INSTALL NEW SERVER
    def installmenu():
        global newserver
        global foldname
        limpiar_consola()
        inconfirm = input("Server Launcher for Minecraft\n-------------------------------------\n\nFirst, lets select a folder to save your new server.\n\n(1) Select folder for the new Server\n(2) Cancel\n\nSelect one of the options= ")
        try:
            if any(char in "0123456789+-*/" for char in inconfirm):
                if not inconfirm[0].isalpha():
                    inconf = eval(inconfirm)
                else:
                    inconf = inconfirm
            else:
                inconf = inconfirm
            inconf = int(inconf)
            if inconf == 1:
                def reselect():
                    global newserver
                    global foldname
                    newserver = filedialog.askdirectory()
                    foldname = colored(os.path.basename(newserver), "green")
                    os.makedirs(newserver, exist_ok=True)
                    os.chdir(newserver)
                    if newserver and foldname:
                        def vers_select():
                            global newserver
                            global foldname
                            limpiar_consola()
                            verss = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nYour new server will be saved in "{foldname}"\n\n(L) List of available versions\n(R) Re-select server folder\n(N) Return to the main menu\n\nSelect one of the options or type the Server version to install= ').replace(" ", "")
                            try:
                                if verss.lower() == "n":
                                    eng()
                                elif verss.lower() == "r":
                                    reselect()
                                elif verss.lower() == "l":
                                    def versionl():
                                        limpiar_consola()
                                        print("Server Launcher for Minecraft\n-------------------------------------\n\nAvailable versions:\n")
                                        for i, version in enumerate(MCVERSIONS, start=1):
                                            print(f"({i}) {version}")
                                        listselection = input("\n(B) Back\n(R) Return to main menu")
                                        try:
                                            if listselection.lower() == "b":
                                                vers_select()
                                            elif listselection.lower() == "r":
                                                eng()
                                            else:
                                                versionl()
                                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                            versionl()
                                    versionl()
                                elif verss.lower() in MCVERSIONS.keys():
                                    def servdownload():
                                        global newserver
                                        global foldname
                                        version = verss.lower()
                                        url = MCVERSIONS[version]
                                        limpiar_consola()
                                        print(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe server is being downloaded.\n\nVersion: {version}\nTarget Folder: "{foldname}"\n\nPlease wait...\n')
                                        time.sleep(0.5)
                                        os.makedirs(newserver, exist_ok=True)
                                        os.chdir(newserver)
                                        try:
                                            response = requests.get(url, stream=True)
                                            total_size_in_bytes = int(response.headers.get('content-length', 0))
                                            block_size = 1024  # 1 Kibibyte
                                            total_data = 0
                                            with open("server.jar", "wb") as file:
                                                for data in response.iter_content(block_size):
                                                    total_data += len(data)
                                                    file.write(data)
                                                    completed = int(50 * total_data / total_size_in_bytes)
                                                    print("\r[%s%s]" % ('#' * completed, '.' * (50 - completed)), end='')
                                            print()
                                            limpiar_consola()
                                            input('Server Launcher for Minecraft\n-------------------------------------\n\nThe server has been installed successfully and added to "Your Servers" list.\n\nPress ENTER to continue.')
                                            servname = os.path.basename(newserver)
                                            servstring = f"{servname}<[=]>{newserver}\n"
                                            os.makedirs(CONFIG_PATH, exist_ok=True)
                                            with open(SAVED_SERVERS, 'r+') as file:
                                                lines = file.readlines()
                                                if servstring not in lines:
                                                    file.write(servstring)
                                            eng()
                                        except Exception:
                                            def erragain():
                                                limpiar_consola()
                                                errtry = input("Server Launcher for Minecraft\n-------------------------------------\n\nAn error occurred while downloading the server.\nTry again?\n\n(1) Yes\n(2) No\n\nSelect one of the options= ")
                                                try:
                                                    if any(char in "0123456789+-*/" for char in errtry):
                                                        if not errtry[0].isalpha():
                                                            errtr = eval(errtry)
                                                        else:
                                                            errtr = errtry
                                                    else:
                                                        errtr = errtry
                                                    errtr = int(errtr)
                                                    if errtr == 1:
                                                        servdownload()
                                                    elif errtr == 2:
                                                        eng()
                                                    else:
                                                        erragain()
                                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                    erragain()
                                            erragain()
                                    servdownload()
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                installmenu()
                        vers_select()
                    else:
                        installmenu()
                reselect()
            elif inconf == 2:
                eng()
            else:
                installmenu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            installmenu()  

    # LICENSE AND EXTRAS
    def about():
        limpiar_consola()
        copyr = input("Server Launcher for Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2024 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) View the repository in the browser\n(2) View the license in the browser\n(3) View text formatting for MOTD in the browser\n(4) Return to main menu\n\nSelect one of the options= ")
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
                eng()
            else:
                about()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            about()

    # EXIT
    def exiit():
        limpiar_consola()
        print("--------------------------------------------\nThank you for using this tool\nMIT License - Copyright (c) 2024 NGDPL Nk\n--------------------------------------------\n")
        time.sleep(1.2)
        sys.exit()

    # MAIN MENU
    def menu():
        limpiar_consola()
        seleccion = input("Server Launcher for Minecraft\n-------------------------------------\n\nHi! You are in the main menu.\n\n(1) Start server\n(2) Manage server\n(3) Install New Server\n(4) Extras\n(5) Change Language\n(6) Exit\n\nSelect one of the options= ")
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
                installmenu()
            elif sel == 4:
                about()
            elif sel == 5:
                esp()
            elif sel == 6:
                exiit()
            menu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            menu()

    menu()

# ESPAÑOL
def esp():
    # CAMBIAR TÍTULO DE VENTANA
    window_title("Lanzador de Servidores para Minecraft")

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
                    fyh_sistema = datetime.datetime.now()
                    fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                    hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                    input("\nPresiona ENTER para continuar.")
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
            confsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del servidor\n\n(1) {online} el modo online\n(2) {hard} el modo hardcore\n(3) {pvp} el PvP\n(4) Cambiar el modo de juego\n(5) Cambiar la dificultad\n(6) Cambiar el límite de jugadores\n(7) Volver al menú principal\n\nSelecciona una de las opciones= ")
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
        copyr = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2024 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) Ver el repositorio en el navegador\n(2) Ver la licencia en el navegador\n(3) Ver formato de texto para los MOTD en el navegador\n(4) Volver al menú principal\n\nSelecciona una de las opciones= ")
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
        print("--------------------------------------------\nMuchas gracias por usar esta herramienta\nMIT License - Copyright (c) 2024 NGDPL Nk\n--------------------------------------------\n")
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
                eng()
            elif sel == 5:
                exiit()
            menu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            menu()

    menu()

# SELECCIÓN DE IDIOMA - LANGUAGE SELECTION
def lang():
    system_lang = locale.getlocale()[0]
    system_lang = str(system_lang)
    if system_lang.startswith("es") or system_lang.startswith("Spanish"):
        esp()
    else:
        eng()

# INICIAR HERRAMIENTA - RUN TOOL
lang()