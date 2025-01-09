#### SSTOOLS4MC MAIN PROGRAM ####
####  DEVELOPED BY: NGDPLNK  ####
#################################

### TO-DO LIST  ###
# - [WIP] Add support for detailed logs.
# - [Pending] Add Forge and Fabric servers support.
###################

#### PROGRAM ####

# SET-UP LOGGER
import logging
import os
from datetime import datetime
APPDATA = os.getenv('APPDATA')
SSTOOLS_FOLDER = os.path.join(APPDATA, "SSTools4MC") # type: ignore
LOG_PATH = os.path.join(SSTOOLS_FOLDER, "logs")
LOGGER = logging.getLogger('SSTools4MC') # logger name
LOGGER.setLevel(logging.DEBUG) # log level
current_date = datetime.now()
formatted_date = current_date.strftime('%Y-%m-%d')
log_file = os.path.join(LOG_PATH, f'{formatted_date}.log') # log file
if not os.path.exists(log_file):
    os.makedirs(LOG_PATH, exist_ok=True) # create log folder if it doesn't exist
    with open(log_file, 'w+'):
        pass # create log file if it doesn't exist
file_handler = logging.FileHandler(log_file)
file_handler.setLevel(logging.DEBUG)
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s', datefmt='%H:%M:%S') # log format
file_handler.setFormatter(formatter)
LOGGER.addHandler(file_handler)
LOGGER.propagate = False # disable console logging
LOGGER.info('LOGGING STARTED...')

try:
    # IMPORT MINECRAFT VERSIONS AND PROPS

    import requests
    import json

    VERSION_MANIFEST_URL = "https://launchermeta.mojang.com/mc/game/version_manifest.json"

    # Fetch the Minecraft version manifest
    response = requests.get(VERSION_MANIFEST_URL)
    response.raise_for_status()
    version_manifest = response.json()

    # Extract latest versions
    latest_snapshot = version_manifest["latest"]["snapshot"]
    latest_stable = version_manifest["latest"]["release"]

    # Separate versions into categories
    snapshots = {}
    stable_releases = {}

    for version in version_manifest["versions"]:
        version_id = version["id"]
        version_url = version["url"]

    # Fetch the version-specific JSON file
    version_response = requests.get(version_url)
    version_response.raise_for_status()
    version_data = version_response.json()

    # Extract server.jar URL
    try:
        server_url = version_data["downloads"]["server"]["url"]
    except KeyError:
        # Skip versions without a server.jar
        continue

    # Classify as snapshot or stable release
    if version["type"] == "snapshot":
        snapshots[version_id] = server_url
    elif version["type"] == "release":
        stable_releases[version_id] = server_url


    MC_SNAPSHOT = {}
    MC_STABLE = {}

    # Update snapshots and stable releases
    new_snapshots = {k: v for k, v in snapshots.items() if k not in MC_SNAPSHOT}
    new_stable_releases = {k: v for k, v in stable_releases.items() if k not in MC_STABLE}

    MC_SNAPSHOT.update(new_snapshots)
    MC_STABLE.update(new_stable_releases)
    version_count = len(MC_STABLE) + len(MC_SNAPSHOT)
    LOGGER.info(f"Loaded {version_count} versions")

    props_file = os.path.join(SSTOOLS_FOLDER, 'props.json') # app properties file  
        with open(props_file, 'r') as file:
            data = json.load(file)
            program_info = data.get("PROGRAM_INFO", {})
            SSVERSION = program_info.get("SSVERSION", "")
            YEAR = program_info.get("YEAR", "")
            changelog = program_info.get("CHANGELOG", {})
            CHANGELOG_ENG = changelog.get("ENG", "")
            CHANGELOG_SPA = changelog.get("SPA", "")
            NEEDED_MODULES = program_info.get("NEEDED_MODULES", {})
        LOGGER.info('Properties loaded')
except 

    # SYSTEM LANGUAGE
    import locale
    SYSTEM_LANG = str(locale.getlocale()[0]) # get system language
    if SYSTEM_LANG.startswith('es') or SYSTEM_LANG.startswith('Spanish'):
        LOGGER.info('System language: Spanish')
    else:
        LOGGER.info('System language: English')

    # IMPORTS (INTERNAL)
    import sys
    import time
    import ctypes
    import webbrowser
    import subprocess
    from tkinter import filedialog
    from tkinter import messagebox
    LOGGER.info('Internal imports completed successfully')

    # DEFAULTS
    # This variables are setted to None to handle errors
    valor = None # This value is set to 'None' by default to handle errors while reading server.properties

    # PATHS
    CONFIG_PATH = os.path.join(SSTOOLS_FOLDER, "config")
    LOGGER.info(f'Config path set to: {CONFIG_PATH}')
    SAVED_SERVERS = os.path.join(CONFIG_PATH, "saved-servers.cfg")
    LOGGER.info(f'Saved servers file path set to: {SAVED_SERVERS}')

    # SET DEV CHANNEL PARAMETERS
    ICON_PATH = os.path.join(SSTOOLS_FOLDER, "assets", "icon-dev.ico")
    SSTITLE = "SSTools4MC (DEV)"
    LOGGER.info('Release type: DEV')

    # CHANGE WINDOW TITLE
    def window_title(title):
        os.system(f'title {title}')
        LOGGER.info(f'Window title changed to: {title}')

    # PROGRAM STARTING TITLE
    LOGGER.info(f'{SSTITLE} is starting...')
    if SYSTEM_LANG.startswith('es') or SYSTEM_LANG.startswith('Spanish'):
        window_title(f'{SSTITLE} está iniciando...')
        print(f'{SSTITLE} está iniciando...')
    else:
        window_title(f'{SSTITLE} is starting...')
        print(f'{SSTITLE} is starting...')

    # IMPORTS (EXTERNAL)
    for lib, func in NEEDED_MODULES.items(): # try to import needed modules from the dictionary
        try:
            if func == '': # if the function is empty, import the whole module
                exec(f'import {lib}')
                LOGGER.info(f'Module "{lib}" imported successfully')
            else: # if the function is not empty, import it from the corresponding module
                exec(f'from {lib} import {func}')
                LOGGER.info(f'Function "{func}" from module "{lib}" imported successfully')
        except ImportError: # if the module is not found, try to install it
            LOGGER.warning(f'Module "{lib}" not found. Trying to install it...')
            if SYSTEM_LANG.startswith('es') or SYSTEM_LANG.startswith('Spanish'):
                print(f"- Instalando módulo necesario: {lib}")
            else:
                print(f"- Installing needed module: {lib}")
            try:
                subprocess.check_call([sys.executable, "-m", "pip", "install", lib], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
                if func == '': # if the function is empty, import the whole module
                    LOGGER.info(f'Module "{lib}" installed successfully. Importing...')
                    exec(f'import {lib}')
                else: # if the function is not empty, import it from the corresponding module
                    LOGGER.info(f'Module "{lib}" installed successfully. Importing "{func}" function...')
                    exec(f'from {lib} import {func}')
            except Exception: # if the module or function can't be installed or accessed, show an error message and exit the program
                LOGGER.critical(f'Error with module "{lib}". Please retry or install it manually.')
                if SYSTEM_LANG.startswith('es') or SYSTEM_LANG.startswith('Spanish'):
                    messagebox.showerror("Error", f"No se pudo acceder al módulo '{lib}'. Por favor, reintenta abrir el programa o instálalo manualmente.")
                else:
                    messagebox.showerror("Error", f"Couldn't access '{lib}' module. Please try reopening the program or install it manually.")
                sys.exit(1)

    # CLS
    def cls():
        os.system('cls') # clear console
        LOGGER.info('Console cleared for user')

    # BRING WINDOW TO FRONT
    def front():
        os.system('echo ShowConsole') # this command brings the console window to front
        LOGGER.info('Console window brought to front')

    # GET DATE
    def getdate():
        dayy = str(datetime.now().strftime("%d/%m/%Y")) # get current date to use in titles (day/month/year)
        LOGGER.info(f'Date retrieved: {dayy}')
        return dayy

    # ENGLISH
    def eng():
        # SERVER STARTUP
        def ram():
            LOGGER.info('Entering Server Startup menu...')
            global servername
            cls()
            sservers = {}
            if os.path.exists(SAVED_SERVERS):
                LOGGER.info('Saved servers file exists. Reading...')
                with open(SAVED_SERVERS, 'r') as file: # read saved servers file
                    for line in file:
                        line = line.strip()
                        if line and not line.startswith('#'):
                            key, value = line.split('<[=]>')
                            sservers[key.strip()] = value.strip()
                LOGGER.info('Saved servers file read completed.')
                LOGGER.info(f'Saved servers are: {sservers}')
                if sservers: # if there are saved servers, show the list
                    cls()
                    window_title(f'{SSTITLE} - "Your Servers" list')
                    day = getdate()
                    print(f'{SSTITLE} - {day}\n--------------------------\n\n"Your Servers" List\n')
                    server_keys = list(sservers.keys())
                    LOGGER.info(f'Showing saved servers list on console...')
                    for i, key in enumerate(server_keys, start=1): # print saved servers from loaded list
                        print(f"({i}) {key}")
                    nserv = colored("Add","cyan") # type: ignore
                    delserv = colored("Delete","red") # type: ignore
                    clearlist = colored("Clear","magenta") # type: ignore
                    print(f"\n(N) {nserv} Server\n(D) {delserv} a Server from the list\n(C) {clearlist} List\n(R) Return to main menu")
                    LOGGER.info(f"Your Servers list menu loaded completely. Waiting for user input...")
                    servsel = input("\nSelect one of the options or enter the number of the server to start= ").replace(" ", "")
                    LOGGER.info(f"User input was: '{servsel}'.")
                    try:
                        if servsel.lower() == "n":
                            LOGGER.info(f'User selected to add a new server. Loading sub-menu...')
                            LOGGER.info(f'Asking user to select a folder for the new server...')
                            newserv = filedialog.askdirectory()
                            LOGGER.info(f'User selected folder: "{newserv}"')
                            front()
                            servname = os.path.basename(newserv)
                            server_jar_path = os.path.join(newserv, "server.jar")
                            if newserv == "" or servname == "":
                                newserv = False
                                servname = False
                            if newserv and servname and os.path.isfile(server_jar_path):
                                servname = colored(servname, "yellow") # type: ignore
                                with open(SAVED_SERVERS, 'r') as file:
                                    lines = file.readlines()
                                    servstring = f"{servname}<[=]>{newserv}\n"
                                    if servstring not in lines:
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'r+') as file:
                                            file.write(servstring)
                            else:
                                cls()
                                window_title(f'{SSTITLE} - You must select a valid server folder')
                                day = getdate()
                                print(f'{SSTITLE} - {day}\n--------------------------\n\nYou must select a valid server folder to save it in "Your Servers" List.')
                                time.sleep(2.5)
                                ram()
                            cls()
                            window_title(f'{SSTITLE} - Server saved')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nThe server "{servname}" has been saved.')
                            time.sleep(1.5)
                            ram()
                        elif servsel.lower() == "d":
                            def servdel():
                                cls()
                                window_title(f'{SSTITLE} - Delete a server')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nSelect the server to delete from the list.\n")
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
                                        cls()
                                        window_title(f'{SSTITLE} - Server deleted')
                                        day = getdate()
                                        print(f'{SSTITLE} - {day}\n--------------------------\n\nThe server "{servsel}" has been deleted from the list.')
                                        time.sleep(1.5)
                                        ram()             
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    servdel()
                            servdel()
                        elif servsel.lower() == "c":
                            def lisclear():
                                cls()
                                yess = colored("Yes","green") # type: ignore
                                noo = colored("No","red") # type: ignore
                                window_title(f'{SSTITLE} - Are you sure?')
                                day = getdate()
                                clearconfirm = input(f'{SSTITLE} - {day}\n--------------------------\n\nAre you sure you want to clear the "Your Servers" List?\n\n(1) {yess}\n(2) {noo}\n\nSelect one of the options= ')
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
                                            file.write("# SSTools4MC\n# Saved servers\n")
                                        cls()
                                        window_title(f'{SSTITLE} - List cleared')
                                        day = getdate()
                                        print(f'{SSTITLE} - {day}\n--------------------------\n\nThe "Your Servers" List has been cleared.')
                                        time.sleep(1.5)
                                        ram()
                                    elif clearconf == 2:
                                        ram()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    lisclear()
                            lisclear()
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
                        file.write("# SSTools4MC\n# Saved servers\n")
                    cls()
                    adds = colored("Add a Server","cyan") # type: ignore
                    window_title(f'{SSTITLE} - There are no saved servers.')
                    day = getdate()
                    saveconfirm = input(f"{SSTITLE} - {day}\n--------------------------\n\nThere are no saved servers.\n\n(1) {adds}\n(2) Return to main menu\n\nSelect one of the options= ")
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
                            front()
                            servname = os.path.basename(newserv)
                            server_jar_path = os.path.join(newserv, "server.jar")
                            if newserv == "" or servname == "":
                                newserv = False
                                servname = False
                            if newserv and servname and os.path.isfile(server_jar_path):
                                servname = colored(servname, "yellow") # type: ignore
                                with open(SAVED_SERVERS, 'r') as file:
                                    lines = file.readlines()
                                    servstring = f"{servname}<[=]>{newserv}\n"
                                    if servstring not in lines:
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'r+') as file:
                                            file.write(servstring)
                            else:
                                cls()
                                window_title(f'{SSTITLE} - You must select a valid server folder')
                                day = getdate()
                                print(f'{SSTITLE} - {day}\n--------------------------\n\nYou must select a valid server folder to save it in "Your Servers" List.')
                                time.sleep(2.5)
                                ram()
                            cls()
                            window_title(f'{SSTITLE} - Server saved')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nThe server "{servname}" has been saved.')
                            time.sleep(1.5)
                            ram()
                            cls()
                            window_title(f'{SSTITLE} - Server saved')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nThe server "{servname}" has been saved.')
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
                    file.write("# SSTools4MC\n# Saved servers\n")
                cls()
                window_title(f'{SSTITLE} - There are no saved servers')
                day = getdate()
                input(f'{SSTITLE} - {day}\n--------------------------\n\nThere are no saved servers.\n\nPress ENTER to select a folder with a Server and add it to "Your Servers" list.')
                newserv = filedialog.askdirectory()
                front()
                servname = os.path.basename(newserv)
                server_jar_path = os.path.join(newserv, "server.jar")
                if newserv == "" or servname == "":
                    newserv = False
                    servname = False
                if newserv and servname and os.path.isfile(server_jar_path):
                    servname = colored(servname, "yellow") # type: ignore
                    with open(SAVED_SERVERS, 'r') as file:
                        lines = file.readlines()
                        servstring = f"{servname}<[=]>{newserv}\n"
                        if servstring not in lines:
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                file.write(servstring)
                else:
                    cls()
                    window_title(f'{SSTITLE} - You must select a valid server folder')
                    day = getdate()
                    print(f'{SSTITLE} - {day}\n--------------------------\n\nYou must select a valid server folder to save it in "Your Servers" List.')
                    time.sleep(2.5)
                    ram()
                cls()
                window_title(f'{SSTITLE} - Server saved')
                day = getdate()
                print(f'{SSTITLE} - {day}\n--------------------------\n\nThe server "{servname}" has been saved.')
                time.sleep(1.5)
                ram()
                cls()
                window_title(f'{SSTITLE} - Server saved')
                day = getdate()
                print(f'{SSTITLE} - {day}\n--------------------------\n\nThe server "{servname}" has been saved.')
                time.sleep(1.5)
                ram()
            if os.path.exists("server.jar"):
                # CONFIG
                def config():
                    global nameserver
                    cls()
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
                            online = colored("ENABLE","green") # type: ignore
                        elif properties["online-mode"] == "true":
                            online = colored("DISABLE","red") # type: ignore
                        if properties["hardcore"] == "false":
                            hard = colored("ENABLE","green") # type: ignore
                        elif properties["hardcore"] == "true":
                            hard = colored("DISABLE","red") # type: ignore
                        if properties["pvp"] == "false":
                            pvp = colored("ENABLE","green") # type: ignore
                        elif properties["pvp"] == "true":
                            pvp = colored("DISABLE","red") # type: ignore
                        cls()
                        window_title(f'{SSTITLE} - Server management')
                        day = getdate()
                        confsel = input(f'{SSTITLE} - {day}\n--------------------------\n\nLets manage "{nameserver}"!\n\n(1) {online} online mode\n(2) {hard} hardcore mode\n(3) {pvp} PvP\n(4) Change gamemode\n(5) Change difficulty\n(6) Change max players limit\n(7) Back\n(8) Return to main menu\n\nSelect one of the options= ')
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
                                    online = colored("ENABLED","green") # type: ignore
                                elif online == "DISABLE":
                                    properties["online-mode"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    online = colored("DISABLED","red") # type: ignore
                                cls()
                                window_title(f'{SSTITLE} - Online mode toggled')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nOnline mode has been {online}.")
                                time.sleep(1.5)
                                config()
                            elif confug == 2:
                                if hard == "ENABLE":
                                    properties["hardcore"] = "true"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    hard = colored("ENABLED","green") # type: ignore
                                elif hard == "DISABLE":
                                    properties["hardcore"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    hard = colored("DISABLED","red") # type: ignore
                                cls()
                                window_title(f'{SSTITLE} - Hardcore mode toggled')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nHardcore mode has been {hard}.")
                                time.sleep(1.5)
                                config()
                            elif confug == 3:
                                if pvp == "ENABLE":
                                    properties["pvp"] = "true"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    pvp = colored("ENABLED","green") # type: ignore
                                elif pvp == "DISABLE":
                                    properties["pvp"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    pvp = colored("DISABLED","red") # type: ignore
                                cls()
                                window_title(f'{SSTITLE} - PvP toggled')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nPvP has been {pvp}.")
                                time.sleep(1.5)
                                config()
                            elif confug == 4:
                                def juego():
                                    global properties
                                    modo = properties["gamemode"]
                                    if modo == "survival" or modo == "0":
                                        modo = colored("SURVIVAL","cyan") # type: ignore
                                    elif modo == "creative" or modo == "1":
                                        modo = colored("CREATIVE","cyan") # type: ignore
                                    elif modo == "adventure" or modo == "2":
                                        modo = colored("ADVENTURE","cyan") # type: ignore
                                    elif modo == "spectator" or modo == "3":
                                        modo = colored("SPECTATOR","cyan") # type: ignore
                                    superv = colored("SURVIVAL","yellow") # type: ignore
                                    creat = colored("CREATIVE","yellow") # type: ignore
                                    avent = colored("ADVENTURE","yellow") # type: ignore
                                    espect = colored("SPECTATOR","yellow") # type: ignore
                                    cls()
                                    window_title(f'{SSTITLE} - Gamemode configuration')
                                    day = getdate()
                                    modosel = input(f"{SSTITLE} - {day}\n--------------------------\n\nThe current game mode is {modo}.\n\n(1) Change to {superv} gamemode\n(2) Change to {creat} gamemode\n(3) Change to {avent} gamemode\n(4) Change to {espect} gamemode\n(5) Go back\n(6) Return to main menu\n\nSelect one of the options= ")
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
                                            cls()
                                            window_title(f'{SSTITLE} - Gamemode is now set to Survival')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nGamemode is now set to {superv}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 2:
                                            properties["gamemode"] = "1"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - Gamemode is now set to Creative')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nGamemode is now set to {creat}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 3:
                                            properties["gamemode"] = "2"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - Gamemode is now set to Adventure')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nGamemode is now set to {avent}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 4:
                                            properties["gamemode"] = "3"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - Gamemode is now set to Spectator')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nGamemode is now set to {espect}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 5:
                                            config()
                                        elif coonf == 6:
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
                                        dificultad = colored("PEACEFUL","cyan") # type: ignore
                                    elif dificultad == "easy" or dificultad == "1":
                                        dificultad = colored("EASY","cyan") # type: ignore
                                    elif dificultad == "normal" or dificultad == "2":
                                        dificultad = colored("NORMAL","cyan") # type: ignore
                                    elif dificultad == "hard" or dificultad == "3":
                                        dificultad = colored("HARD","cyan") # type: ignore
                                    pacif = colored("PEACEFUL","yellow") # type: ignore
                                    facil = colored("EASY","yellow") # type: ignore
                                    normal = colored("NORMAL","yellow") # type: ignore
                                    dificil = colored("HARD","yellow") # type: ignore
                                    cls()
                                    window_title(f'{SSTITLE} - Difficulty configuration')
                                    day = getdate()
                                    difsel = input(f"{SSTITLE} - {day}\n--------------------------\n\nThe current difficulty is {dificultad}.\n\n(1) Change difficulty to {pacif}\n(2) Change difficulty to {facil}\n(3) Change difficulty to {normal}\n(4) Change difficulty to {dificil}\n(5) Go back\n(6) Return to main menu\n\nSelect one of the options= ")
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
                                            cls()
                                            window_title(f'{SSTITLE} - Difficulty is now set to Peaceful')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nDifficulty is now set to {pacif}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 2:
                                            properties["difficulty"] = "1"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - Difficulty is now set to Easy')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nDifficulty is now set to {facil}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 3:
                                            properties["difficulty"] = "2"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - Difficulty is now set to Normal')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nDifficulty is now set to {normal}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 4:
                                            properties["difficulty"] = "3"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - Difficulty is now set to Hard')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nDifficulty is now set to {dificil}.")
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
                                    players = colored(properties["max-players"],"cyan") # type: ignore
                                    cls()
                                    window_title(f'{SSTITLE} - Player limit configuration')
                                    day = getdate()
                                    newpl = input(f"{SSTITLE} - {day}\n--------------------------\n\nThe current player limit is a maximum of {players}.\n\n(N) Go back\n(M) Return to main menu\n\nSelect one of the options or enter the new player limit= ").replace(" ", "")
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
                                                cls()
                                                window_title(f'{SSTITLE} - Invalid player limit')
                                                day = getdate()
                                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEnter a valid number between 1 and 100,000.")
                                                time.sleep(1.5)
                                                playct()
                                            else:
                                                properties["max-players"] = entero
                                                with open('server.properties', 'w') as file:
                                                    for key, value in properties.items():
                                                        file.write(f'{key}={value}\n')
                                                entero = colored(str(entero),"yellow") # type: ignore
                                                cls()
                                                window_title(f'{SSTITLE} - Player limit changed')
                                                day = getdate()
                                                print(f"{SSTITLE} - {day}\n--------------------------\n\nThe maximum player limit is now {entero}.")
                                                time.sleep(1.5)
                                                playct()
                                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                        playct()
                                playct()
                            elif confug == 7:
                                run_server()
                            elif confug == 8:
                                eng()
                            else:
                                config()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            config()
                    else:
                        cls()
                        window_title(f'{SSTITLE} - Server configuration files not found :(')
                        day = getdate()
                        input(f"{SSTITLE} - {day}\n--------------------------\n\nThe server configuration files do not exist yet or are not available.\nYou must start the server properly at least once before you can configure it.\n\nPress ENTER to continue.")
                        run_server()
                def run_server():
                    global servername
                    global valor
                    global nameserver
                    valor1 = None
                    gbormb = None
                    vjava = None
                    if valor == None:
                        valor = "GB"
                        valor1 = colored("GIGABYTES","cyan") # type: ignore
                        vjava = "G"
                        gbormb = colored("MEGABYTES","yellow") # type: ignore
                    if valor == "GB":
                        valor1 = colored("GIGABYTES","cyan") # type: ignore
                        vjava = "G"
                        gbormb = colored("MEGABYTES","yellow") # type: ignore
                    elif valor == "MB":
                        valor1 = colored("MEGABYTES","cyan") # type: ignore
                        vjava = "M"
                        gbormb = colored("GIGABYTES","yellow") # type: ignore
                    nameserver = servername
                    cls()
                    gbs = 0
                    window_title(f'{SSTITLE} - You are about to start the server!')
                    day = getdate()
                    rammount = input(f'{SSTITLE} - {day}\n--------------------------\n\nYou are about to start the Server "{nameserver}"\n\n(M) Manage Server\n(C) Use RAM in {gbormb}\n(B) Back\n(N) Return to main menu\n\nSelect one of the options or enter the {valor1} of RAM to assign to the server= ').replace(" ", "")
                    try:
                        if rammount.lower() == "m":
                            config()  
                        if rammount.lower() == "c":
                            if valor == "GB":
                                cls()
                                window_title(f'{SSTITLE} - RAM is now set to Megabytes')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nRAM is now set to {gbormb}.")
                                time.sleep(1.5)
                                valor = "MB"
                                run_server()
                            elif valor == "MB":
                                cls()
                                window_title(f'{SSTITLE} - RAM is now set to Gigabytes')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nRAM is now set to {gbormb}.")
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
                                cls()
                                window_title(f'{SSTITLE} - Invalid amount of RAM')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEnter a valid amount between 1 and 75 Gigabytes.")
                                time.sleep(1.5)
                                run_server()
                            elif valor == "MB" and (gbs <= 1023 or gbs > 76800):
                                cls()
                                window_title(f'{SSTITLE} - Invalid amount of RAM')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEnter a valid amount between 1,024 and 76,800 Megabytes.")
                                time.sleep(1.5)
                                run_server()
                            else:
                                with open("eula.txt", "w") as reemplazo:
                                    reemplazo.write("eula=true")
                                cls()
                                window_title(f'{SSTITLE} - Server running...')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nStarting the server with {gbs}{valor} of RAM.\n")
                                comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                                subprocess.run(comando_java, shell=True)
                                fyh_sistema = datetime.now()
                                fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                                hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                                input("\nPress ENTER to continue.")
                                cls()
                                window_title(f'{SSTITLE} - Server closed')
                                day = getdate()
                                input(f"{SSTITLE} - {day}\n--------------------------\n\nThe server has closed on {fecha_cerrado} at {hora_cerrado}.\n\nYou can check the console log in the 'logs' folder inside your Server's main folder.\n\nPress ENTER to continue.")
                                ram()
                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                        run_server()
                run_server()
            else:
                cls()
                window_title(f'{SSTITLE} - Server not found :(')
                day = getdate()
                print(f'{SSTITLE} - {day}\n--------------------------\n\n"server.jar" not found in this folder.\n\nAre you sure this is a Server?')
                time.sleep(2.5)
                ram()

        # INSTALL NEW SERVER
        def installmenu():
            LOGGER.info("Entering Server Installation menu...")
            global newserver
            global foldname
            cls()
            window_title(f'{SSTITLE} - Select a folder for the new server')
            day = getdate()
            inconfirm = input(f"{SSTITLE} - {day}\n--------------------------\n\nFirst, lets select a folder to save your New Server's files.\n\n(1) Select folder for the new Server\n(2) Cancel\n\nSelect one of the options= ").replace(" ", "")
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
                        front()
                        foldname = colored(os.path.basename(newserver), "yellow") # type: ignore
                        if newserver == "" or foldname == "":
                            cls()
                            window_title(f'{SSTITLE} - You must select a folder')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nYou must select a folder to save the New Server.')
                            time.sleep(2.5)
                            installmenu()
                        os.makedirs(newserver, exist_ok=True)
                        os.chdir(newserver)
                        if newserver and foldname:
                            def vers_select():
                                global newserver
                                global foldname
                                cls()
                                window_title(f'{SSTITLE} - Select version for your new server')
                                day = getdate()
                                verss = input(f'{SSTITLE} - {day}\n--------------------------\n\nYour New Server will be saved in "{foldname}".\n\n(L) See available versions\n(R) Re-select a folder for the New server\n(N) Return to main menu\n\nSelect one of the options or type the New Server version to install= ').replace(" ", "")
                                try:
                                    def servdownload(versionname,type):
                                        global newserver
                                        global foldname
                                        version = versionname.lower()
                                        if type == "stable":
                                            url = MC_STABLE[version]
                                        elif type == "snapshot":
                                            url = MC_SNAPSHOT[version]
                                        else:
                                            vers_select()
                                        cls()
                                        window_title(f'{SSTITLE} - Downloading server files...')
                                        day = getdate()
                                        print(f'{SSTITLE} - {day}\n--------------------------\n\nYour New Server is being downloaded.\n\nVersion: {version}\nTarget Folder: "{foldname}"\n\nPlease wait...\n')
                                        time.sleep(0.5)
                                        os.makedirs(newserver, exist_ok=True)
                                        os.chdir(newserver)
                                        try:
                                            response = requests.get(url, stream=True) # type: ignore
                                            total_size_in_bytes = int(response.headers.get('content-length', 0))
                                            block_size = 1024
                                            total_data = 0
                                            with open("server.jar", "wb") as file:
                                                for data in response.iter_content(block_size):
                                                    total_data += len(data)
                                                    file.write(data)
                                                    completed = int(50 * total_data / total_size_in_bytes)
                                                    print("\r[%s%s]" % ('#' * completed, '.' * (50 - completed)), end='')
                                            print()
                                            cls()
                                            window_title(f'{SSTITLE} - Server installed successfully')
                                            day = getdate()
                                            input(f'{SSTITLE} - {day}\n--------------------------\n\nThe server has been installed successfully and added to "Your Servers" list.\n\nPress ENTER to continue.')
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
                                                cls()
                                                yup = colored("Yes","green") # type: ignore
                                                nop = colored("No","red") # type: ignore
                                                window_title(f'{SSTITLE} - An error occurred while downloading the server :(')
                                                day = getdate()
                                                errtry = input(f"{SSTITLE} - {day}\n--------------------------\n\nAn error occurred while downloading your new server.\nTry again?\n\n(1) {yup}\n(2) {nop}\n\nSelect one of the options= ")
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
                                                        servdownload(version,type)
                                                    elif errtr == 2:
                                                        eng()
                                                    else:
                                                        erragain()
                                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                    erragain()
                                                erragain()
                                    if verss.lower() == "n":
                                        eng()
                                    elif verss.lower() == "r":
                                        reselect()
                                    elif verss.lower() == "l":
                                        def select_list():
                                            cls()
                                            window_title(f'{SSTITLE} - List of available versions')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n")
                                            print("STABLE VERSIONS:")
                                            for i, version in enumerate(MC_STABLE, start=1):
                                                print(f"(-) {version}")
                                            print('')
                                            print("SNAPSHOT VERSIONS:")
                                            for i, version in enumerate(MC_SNAPSHOT, start=1):
                                                print(f"(-) {version}")
                                            listselection = input("\n(B) Back\n(R) Return to main menu\n\nType a version to install or select one of the options=")
                                            try:
                                                if listselection.lower() == "b":
                                                    vers_select()
                                                elif listselection.lower() == "r":
                                                    eng()
                                                elif listselection.lower() in MC_STABLE.keys():
                                                    servdownload(listselection,"stable")
                                                elif listselection.lower() in MC_SNAPSHOT.keys():
                                                    servdownload(listselection,"snapshot")
                                                else:
                                                    select_list()
                                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                select_list()
                                        select_list()
                                    elif verss.lower() in MC_STABLE.keys():
                                        servdownload(verss,"stable")
                                    elif verss.lower() in MC_SNAPSHOT.keys():
                                        servdownload(verss,"snapshot")
                                    else:
                                        vers_select()
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
            LOGGER.info("Entering Extras menu...")
            cls()
            window_title(f'{SSTITLE} - About {SSTITLE}')
            day = getdate()
            copyr = input(f"{SSTITLE} - {day}\n--------------------------\n\nMIT License - Copyright (c) {YEAR} ngdplnk\n\n{SSTITLE} {SSVERSION}-dev\n\n{CHANGELOG_ENG}\n\n-------------------------------------\n\n(1) View repository in the browser\n(2) View license in the browser\n(3) Return to main menu\n\nSelect one of the options= ")
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
                    url = colored("https://github.com/ngdplnk/SSTools4MC","cyan") # type: ignore
                    cls()
                    window_title(f'{SSTITLE} - View repository')
                    day = getdate()
                    input(f"{SSTITLE} - {day}\n--------------------------\n\nThe repository will open in your browser.\n\n{url}\n\nPress ENTER to continue.")
                    url = "https://github.com/ngdplnk/SSTools4MC"
                    webbrowser.open(url)
                    about()
                elif selec == 2:
                    url = colored("https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE","cyan") # type: ignore
                    cls()
                    window_title(f'{SSTITLE} - View license')
                    day = getdate()
                    input(f"{SSTITLE} - {day}\n--------------------------\n\nThe license will open in your browser.\n\n{url}\n\nPress ENTER to continue.")
                    url = "https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE"
                    webbrowser.open(url)
                    about()
                elif selec == 3:
                    eng()
                else:
                    about()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                about()

        # EXIT
        def exiit():
            cls()
            window_title(f'{SSTITLE} - See ya later!')
            print(f"--------------------------------------------\nSee ya later!\nMIT License - Copyright (c) {YEAR} ngdplnk\n--------------------------------------------\n")
            time.sleep(1.2)
            LOGGER.info("QUITTING PROGRAM...")
            sys.exit()

        # MAIN MENU
        def menu():
            LOGGER.info("Entering Main menu...")
            os.makedirs(SSTOOLS_FOLDER, exist_ok=True)
            os.chdir(SSTOOLS_FOLDER)
            cls()
            window_title(f'{SSTITLE} - Welcome! You are in the main menu')
            day = getdate()
            seleccion = input(f"{SSTITLE} - {day}\n--------------------------\n\nHi! You are in the main menu.\n\n(1) Start a Server\n(2) Install a New Server\n(3) Extras\n(4) Change Language\n(5) Exit\n\nSelect one of the options= ")
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
                    installmenu()
                elif sel == 3:
                    about()
                elif sel == 4:
                    esp()
                elif sel == 5:
                    exiit()
                menu()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                menu()

        menu()

    # SPANISH
    def esp():
        # SERVER STARTUP
        def ram():
            LOGGER.info("Entering Server Startup menu...")
            global servername
            cls()
            sservers = {}
            if os.path.exists(SAVED_SERVERS):
                with open(SAVED_SERVERS, 'r') as file:
                    for line in file:
                        line = line.strip()
                        if line and not line.startswith('#'):
                            key, value = line.split('<[=]>')
                            sservers[key.strip()] = value.strip()
                if sservers:
                    cls()
                    window_title(f'{SSTITLE} - Lista "Tus Servidores"')
                    day = getdate()
                    print(f'{SSTITLE} - {day}\n--------------------------\n\nLista "Tus Servidores"\n')
                    server_keys = list(sservers.keys())
                    for i, key in enumerate(server_keys, start=1):
                        print(f"({i}) {key}")
                    nserv = colored("Añadir","cyan") # type: ignore
                    delserv = colored("Eliminar","red") # type: ignore
                    clearlist = colored("Limpiar","magenta") # type: ignore
                    print(f"\n(N) {nserv} Servidor\n(D) {delserv} un Servidor de la Lista\n(C) {clearlist} Lista\n(R) Volver al menú principal")
                    servsel = input("\nElige una de las opciones o escribe el número del Servidor que iniciarás= ").replace(" ", "")
                    try:
                        if servsel.lower() == "n":
                            newserv = filedialog.askdirectory()
                            front()
                            servname = os.path.basename(newserv)
                            server_jar_path = os.path.join(newserv, "server.jar")
                            if newserv == "" or servname == "":
                                newserv = False
                                servname = False
                            if newserv and servname and os.path.isfile(server_jar_path):
                                servname = colored(servname, "yellow") # type: ignore
                                with open(SAVED_SERVERS, 'r') as file:
                                    lines = file.readlines()
                                    servstring = f"{servname}<[=]>{newserv}\n"
                                    if servstring not in lines:
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'r+') as file:
                                            file.write(servstring)
                            else:
                                cls()
                                window_title(f'{SSTITLE} - Debes seleccionar una carpeta válida con un servidor')
                                day = getdate()
                                print(f'{SSTITLE} - {day}\n--------------------------\n\nDebes seleccionar una carpeta válida con un servidor para guardarla en la Lista "Tus Servidores".')
                                time.sleep(2.5)
                                ram()
                            cls()
                            window_title(f'{SSTITLE} - Servidor guardado')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nEl servidor "{servname}" ha sido guardado.')
                            time.sleep(1.5)
                            ram()
                        elif servsel.lower() == "d":
                            def servdel():
                                cls()
                                window_title(f'{SSTITLE} - Eliminar un servidor')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nSelecciona el Servidor que eliminarás de la lista.\n")
                                for i, key in enumerate(server_keys, start=1):
                                    print(f"({i}) {key}")
                                print("\n(N) Cancelar\n(R) Volver al menú principal")
                                servsel = input("\nSelecciona una de las opciones o ingresa el número del Servidor que eliminarás de la lista= ").replace(" ", "")
                                try:
                                    if servsel.lower() == "r":
                                        esp()
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
                                        cls()
                                        window_title(f'{SSTITLE} - Servidor eliminado')
                                        day = getdate()
                                        print(f'{SSTITLE} - {day}\n--------------------------\n\nEl Servidor "{servsel}" ha sido eliminado de la lista.')
                                        time.sleep(1.5)
                                        ram()             
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    servdel()
                            servdel()
                        elif servsel.lower() == "c":
                            def lisclear():
                                cls()
                                yess = colored("Sí","green") # type: ignore
                                noo = colored("No","red") # type: ignore
                                window_title(f'{SSTITLE} - Estás seguro?')
                                day = getdate()
                                clearconfirm = input(f'{SSTITLE} - {day}\n--------------------------\n\nEstás seguro de que quieres limpiar la Lista "Tus Servidores"?\n\n(1) {yess}\n(2) {noo}\n\nElige una de las opciones= ')
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
                                            file.write("# SSTools4MC\n# Servidores guardados\n")
                                        cls()
                                        window_title(f'{SSTITLE} - Lista limpiada')
                                        print(f'{SSTITLE} - {day}\n--------------------------\n\nLa Lista "Tus Servidores" ha sido limpiada.')
                                        time.sleep(1.5)
                                        ram()
                                    elif clearconf == 2:
                                        ram()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    lisclear()
                            lisclear()
                        elif servsel.lower() == "r":
                            esp()
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
                        file.write("# SSTools4MC\n# Servidores Guardados\n")
                    cls()
                    adds = colored("Añadir un Servidor","cyan") # type: ignore
                    window_title(f'{SSTITLE} - No hay servidores guardados')
                    day = getdate()
                    saveconfirm = input(f"{SSTITLE} - {day}\n--------------------------\n\nNo tienes ningún Servidor guardado.\n\n(1) {adds}\n(2) Volver al menú principal\n\nElige una de las opciones= ")
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
                            front()
                            servname = os.path.basename(newserv)
                            server_jar_path = os.path.join(newserv, "server.jar")
                            if newserv == "" or servname == "":
                                newserv = False
                                servname = False
                            if newserv and servname and os.path.isfile(server_jar_path):
                                servname = colored(servname, "yellow") # type: ignore
                                with open(SAVED_SERVERS, 'r') as file:
                                    lines = file.readlines()
                                    servstring = f"{servname}<[=]>{newserv}\n"
                                    if servstring not in lines:
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'r+') as file:
                                            file.write(servstring)
                            else:
                                cls()
                                window_title(f'{SSTITLE} - Debes seleccionar una carpeta válida con un servidor')
                                day = getdate()
                                print(f'{SSTITLE} - {day}\n--------------------------\n\nDebes seleccionar una carpeta válida con un servidor para guardarla en la Lista "Tus Servidores".')
                                time.sleep(2.5)
                                ram()
                            cls()
                            window_title(f'{SSTITLE} - Servidor guardado')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nEl Servidor "{servname}" ha sido guardado.')
                            time.sleep(1.5)
                            ram()
                        elif saveconf == 2:
                            esp()
                        else:
                            ram()
                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                        ram()
            else:
                os.makedirs(CONFIG_PATH, exist_ok=True)
                with open(SAVED_SERVERS, 'w') as file:
                    file.write("# SSTools4MC\n# Servidores Guardados\n")
                cls()
                window_title(f'{SSTITLE} - No hay servidores guardados')
                day = getdate()
                input(f'{SSTITLE} - {day}\n--------------------------\n\nNo tienes ningún Servidor guardado.\n\nPresiona ENTER para seleccionar una carpeta con un Servidor y guardarlo en la Lista "Tus Servidores".')
                newserv = filedialog.askdirectory()
                front()
                servname = os.path.basename(newserv)
                server_jar_path = os.path.join(newserv, "server.jar")
                if newserv == "" or servname == "":
                    newserv = False
                    servname = False
                if newserv and servname and os.path.isfile(server_jar_path):
                    servname = colored(servname, "yellow") # type: ignore
                    with open(SAVED_SERVERS, 'r') as file:
                        lines = file.readlines()
                        servstring = f"{servname}<[=]>{newserv}\n"
                        if servstring not in lines:
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                file.write(servstring)
                else:
                    cls()
                    window_title(f'{SSTITLE} - Debes seleccionar una carpeta válida con un servidor')
                    day = getdate()
                    print(f'{SSTITLE} - {day}\n--------------------------\n\nDebes seleccionar una carpeta válida con un servidor para guardarla en la Lista "Tus Servidores".')
                    time.sleep(2.5)
                    ram()
                cls()
                window_title(f'{SSTITLE} - Servidor guardado')
                day = getdate()
                print(f'{SSTITLE} - {day}\n--------------------------\n\nEl Servidor "{servname}" ha sido guardado.')
                time.sleep(1.5)
                ram()
            if os.path.exists("server.jar"):
                # CONFIG
                def config():
                    global nameserver
                    cls()
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
                            online = colored("ACTIVAR","green") # type: ignore
                        elif properties["online-mode"] == "true":
                            online = colored("DESACTIVAR","red") # type: ignore
                        if properties["hardcore"] == "false":
                            hard = colored("ACTIVAR","green") # type: ignore
                        elif properties["hardcore"] == "true":
                            hard = colored("DESACTIVAR","red") # type: ignore
                        if properties["pvp"] == "false":
                            pvp = colored("ACTIVAR","green") # type: ignore
                        elif properties["pvp"] == "true":
                            pvp = colored("DESACTIVAR","red") # type: ignore
                        cls()
                        window_title(f'{SSTITLE} - Gestión del servidor')
                        day = getdate()
                        confsel = input(f'{SSTITLE} - {day}\n--------------------------\n\nConfiguremos "{nameserver}"!\n\n(1) {online} modo online\n(2) {hard} modo extremo\n(3) {pvp} PvP\n(4) Cambiar modo de juego\n(5) Cambiar dificultad\n(6) Cambiar el límite de jugadores\n(7) Atrás\n(8) Volver al menú principal\n\nElige una de las opciones= ')
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
                                    online = colored("ACTIVADO","green") # type: ignore
                                elif online == "DISABLE":
                                    properties["online-mode"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    online = colored("DESACTIVADO","red") # type: ignore
                                cls()
                                window_title(f'{SSTITLE} - Modo online alternado')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo online se ha {online}.")
                                time.sleep(1.5)
                                config()
                            elif confug == 2:
                                if hard == "ENABLE":
                                    properties["hardcore"] = "true"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    hard = colored("ACTIVADO","green") # type: ignore
                                elif hard == "DISABLE":
                                    properties["hardcore"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    hard = colored("DESACTIVADO","red") # type: ignore
                                cls()
                                window_title(f'{SSTITLE} - Modo extremo alternado')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo extremo se ha {hard}.")
                                time.sleep(1.5)
                                config()
                            elif confug == 3:
                                if pvp == "ENABLE":
                                    properties["pvp"] = "true"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    pvp = colored("ACTIVADO","green") # type: ignore
                                elif pvp == "DISABLE":
                                    properties["pvp"] = "false"
                                    with open('server.properties', 'w') as file:
                                        for key, value in properties.items():
                                            file.write(f'{key}={value}\n')
                                    pvp = colored("DESACTIVADO","red") # type: ignore
                                cls()
                                window_title(f'{SSTITLE} - PvP alternado')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEl PvP se ha {pvp}.")
                                time.sleep(1.5)
                                config()
                            elif confug == 4:
                                def juego():
                                    global properties
                                    modo = properties["gamemode"]
                                    if modo == "survival" or modo == "0":
                                        modo = colored("SUPERVIVENCIA","cyan") # type: ignore
                                    elif modo == "creative" or modo == "1":
                                        modo = colored("CREATIVO","cyan") # type: ignore
                                    elif modo == "adventure" or modo == "2":
                                        modo = colored("AVENTURA","cyan") # type: ignore
                                    elif modo == "spectator" or modo == "3":
                                        modo = colored("ESPECTADOR","cyan") # type: ignore
                                    superv = colored("SUPERVIVENCIA","yellow") # type: ignore
                                    creat = colored("CREATIVO","yellow") # type: ignore
                                    avent = colored("AVENTURA","yellow") # type: ignore
                                    espect = colored("ESPECTADOR","yellow") # type: ignore
                                    cls()
                                    window_title(f'{SSTITLE} - Configuración de modo de juego')
                                    day = getdate()
                                    modosel = input(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo de juego actual es {modo}.\n\n(1) Cambiar a modo {superv}\n(2) Cambiar a modo {creat}\n(3) Cambiar a modo {avent}\n(4) Cambiar a modo {espect}\n(5) Atrás\n(6) Volver al menú principal\n\nElige una de las opciones= ")
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
                                            cls()
                                            window_title(f'{SSTITLE} - El modo de juego ahora es Supervivencia')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo de juego ahora es {superv}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 2:
                                            properties["gamemode"] = "1"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - El modo de juego ahora es Creativo')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo de juego ahora es {creat}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 3:
                                            properties["gamemode"] = "2"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - El modo de juego ahora es Aventura')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo de juego ahora es {avent}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 4:
                                            properties["gamemode"] = "3"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - El modo de juego ahora es Espectador')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nEl modo de juego ahora es {espect}.")
                                            time.sleep(1.5)
                                            juego()
                                        elif coonf == 5:
                                            config()
                                        elif coonf == 6:
                                            esp()
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
                                        dificultad = colored("PACÍFICO","cyan") # type: ignore
                                    elif dificultad == "easy" or dificultad == "1":
                                        dificultad = colored("FÁCIL","cyan") # type: ignore
                                    elif dificultad == "normal" or dificultad == "2":
                                        dificultad = colored("NORMAL","cyan") # type: ignore
                                    elif dificultad == "hard" or dificultad == "3":
                                        dificultad = colored("DIFÍCIL","cyan") # type: ignore
                                    pacif = colored("PACÍFICO","yellow") # type: ignore
                                    facil = colored("FÁCIL","yellow") # type: ignore
                                    normal = colored("NORMAL","yellow") # type: ignore
                                    dificil = colored("DIFÍCIL","yellow") # type: ignore
                                    cls()
                                    window_title(f'{SSTITLE} - Configuración de dificultad')
                                    day = getdate()
                                    difsel = input(f"{SSTITLE} - {day}\n--------------------------\n\nLa dificultad actual es {dificultad}.\n\n(1) Cambiar a dificultad {pacif}\n(2) Cambiar a dificultad {facil}\n(3) Cambiar a dificultad {normal}\n(4) Cambiar a dificultad {dificil}\n(5) Atrás\n(6) Volver al menú principal\n\nElige una de las opciones= ")
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
                                            cls()
                                            window_title(f'{SSTITLE} - La dificultad ahora es Pacífico')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nLa dificultad ahora es {pacif}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 2:
                                            properties["difficulty"] = "1"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - La dificultad ahora es Fácil')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nLa dificultad ahora es {facil}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 3:
                                            properties["difficulty"] = "2"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - La dificultad ahora es Normal')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nLa dificultad ahora es {normal}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 4:
                                            properties["difficulty"] = "3"
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            cls()
                                            window_title(f'{SSTITLE} - La dificultad ahora es Difícil')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n\nLa dificultad ahora es {dificil}.")
                                            time.sleep(1.5)
                                            difconf()
                                        elif difcc == 5:
                                            config()
                                        elif difcc == 6:
                                            esp()
                                        else:
                                            difconf()
                                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                        difconf()
                                difconf()
                            elif confug == 6:
                                def playct():
                                    global properties
                                    players = colored(properties["max-players"],"cyan") # type: ignore
                                    cls()
                                    window_title(f'{SSTITLE} - Configuración de límite de jugadores')
                                    day = getdate()
                                    newpl = input(f"{SSTITLE} - {day}\n--------------------------\n\nEl límite de jugadores actual es de {players} jugadores.\n\n(N) Atrás\n(M) Volver al menú principal\n\nElige una de las opciones o ingresa el nuevo límite de jugadores= ").replace(" ", "")
                                    try:
                                        if newpl.lower() == "n":
                                            config()
                                        elif newpl.lower() == "m":
                                            esp()
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
                                                cls()
                                                window_title(f'{SSTITLE} - Cantidad de límite de jugadores inválida')
                                                day = getdate()
                                                print(f"{SSTITLE} - {day}\n--------------------------\n\nIngresa un número válido entre 1 y 100.000.")
                                                time.sleep(1.5)
                                                playct()
                                            else:
                                                properties["max-players"] = entero
                                                with open('server.properties', 'w') as file:
                                                    for key, value in properties.items():
                                                        file.write(f'{key}={value}\n')
                                                entero = colored(str(entero),"yellow") # type: ignore
                                                cls()
                                                window_title(f'{SSTITLE} - Límite de jugadores cambiado')
                                                day = getdate()
                                                print(f"{SSTITLE} - {day}\n--------------------------\n\nEl límite de jugadores ahora es {entero}.")
                                                time.sleep(1.5)
                                                playct()
                                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                        playct()
                                playct()
                            elif confug == 7:
                                run_server()
                            elif confug == 8:
                                esp()
                            else:
                                config()
                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                            config()
                    else:
                        cls()
                        window_title(f'{SSTITLE} - Archivos de configuración del servidor no encontrados :(')
                        day = getdate()
                        input(f"{SSTITLE} - {day}\n--------------------------\n\nLos achivos de configuración del Servidor aún no existen o no están disponibles.\nDebes iniciar el Servidor correctamente al menos 1 vez antes de poder configurarlo.\n\nPresiona ENTER para continuar.")
                        run_server()
                def run_server():
                    global servername
                    global valor
                    global nameserver
                    valor1 = None
                    gbormb = None
                    vjava = None
                    if valor == None:
                        valor = "GB"
                        valor1 = colored("GIGABYTES","cyan") # type: ignore
                        vjava = "G"
                        gbormb = colored("MEGABYTES","yellow") # type: ignore
                    if valor == "GB":
                        valor1 = colored("GIGABYTES","cyan") # type: ignore
                        vjava = "G"
                        gbormb = colored("MEGABYTES","yellow") # type: ignore
                    elif valor == "MB":
                        valor1 = colored("MEGABYTES","cyan") # type: ignore
                        vjava = "M"
                        gbormb = colored("GIGABYTES","yellow") # type: ignore
                    nameserver = servername
                    cls()
                    gbs = 0
                    window_title(f'{SSTITLE} - Estás a punto de iniciar el servidor!')
                    day = getdate()
                    rammount = input(f'{SSTITLE} - {day}\n--------------------------\n\nEstás a punto de iniciar el Servidor "{nameserver}"\n\n(M) Configurar Servidor\n(C) Usar RAM en {gbormb}\n(B) Atrás\n(N) Volver al menú principal\n\nElige una de las opciones o ingresa los {valor1} de RAM para asignar a tu Servidor= ').replace(" ", "")
                    try:
                        if rammount.lower() == "m":
                            config()  
                        if rammount.lower() == "c":
                            if valor == "GB":
                                cls()
                                window_title(f'{SSTITLE} - La RAM ahora está en Megabytes')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nLa RAM ahora está en {gbormb}.")
                                time.sleep(1.5)
                                valor = "MB"
                                run_server()
                            elif valor == "MB":
                                cls()
                                window_title(f'{SSTITLE} - La RAM ahora está en Gigabytes')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nLa RAM ahora está en {gbormb}.")
                                time.sleep(1.5)
                                valor = "GB"
                                run_server()
                        elif rammount.lower() == "b":
                            ram()
                        elif rammount.lower() == "n":
                            esp()
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
                                cls()
                                window_title(f'{SSTITLE} - Cantidad de RAM inválida')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nIngresa una cantidad válida entre 1 y 75 Gigabytes.")
                                time.sleep(1.5)
                                run_server()
                            elif valor == "MB" and (gbs <= 1023 or gbs > 76800):
                                cls()
                                window_title(f'{SSTITLE} - Cantidad de RAM inválida')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nIngresa una cantidad válida entre 1.024 y 76.800 Megabytes.")
                                time.sleep(1.5)
                                run_server()
                            else:
                                with open('eula.txt', "w") as reemplazo:
                                    reemplazo.write("eula=true")
                                cls()
                                window_title(f'{SSTITLE} - Servidor corriendo...')
                                day = getdate()
                                print(f"{SSTITLE} - {day}\n--------------------------\n\nIniciando el Servidor con {gbs}{valor} de RAM.\n")
                                comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                                subprocess.run(comando_java, shell=True)
                                fyh_sistema = datetime.now()
                                fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                                hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                                input("\nPresiona ENTER para continuar.")
                                cls()
                                window_title(f'{SSTITLE} - Servidor cerrado')
                                day = getdate()
                                input(f"{SSTITLE} - {day}\n--------------------------\n\nEl Servidor se ha cerrado el {fecha_cerrado} a las {hora_cerrado}.\n\nPuedes ver el registro de la consola en la carpeta 'logs' dentro de la carpeta principal de tu Servidor.\n\nPresiona ENTER para continuar.")
                                ram()
                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                        run_server()
                run_server()
            else:
                cls()
                window_title(f'{SSTITLE} - No se encuentra el servidor :(')
                day = getdate()
                print(f'{SSTITLE} - {day}\n--------------------------\n\nNo se encuentra "server.jar" en esta carpeta.\n\nEstás seguro que esto es un Servidor?')
                time.sleep(2.5)
                ram()

        # INSTALL NEW SERVER
        def installmenu():
            LOGGER.info("Entering Server Installation menu...")
            global newserver
            global foldname
            cls()
            window_title(f'{SSTITLE} - Instalar un nuevo servidor')
            day = getdate()
            inconfirm = input(f"{SSTITLE} - {day}\n--------------------------\n\nPrimero, seleccionemos una carpeta para guardar los archivos de tu Nuevo Servidor.\n\n(1) Seleccionar una carpeta para el Nuevo Servidor\n(2) Cancelar\n\nElige una de las opciones= ").replace(" ", "")
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
                        front()
                        foldname = colored(os.path.basename(newserver), "yellow") # type: ignore
                        if newserver == "" or foldname == "":
                            cls()
                            window_title(f'{SSTITLE} - Debes seleccionar una carpeta')
                            day = getdate()
                            print(f'{SSTITLE} - {day}\n--------------------------\n\nDebes elegir una carpeta para guardar tu Nuevo Servidor.')
                            time.sleep(2.5)
                            installmenu()
                        os.makedirs(newserver, exist_ok=True)
                        os.chdir(newserver)
                        if newserver and foldname:
                            def vers_select():
                                global newserver
                                global foldname
                                cls()
                                window_title(f'{SSTITLE} - Seleccionar versión para tu nuevo servidor')
                                day = getdate()
                                verss = input(f'{SSTITLE} - {day}\n--------------------------\n\nTu Nuevo Servidor se guardará en "{foldname}".\n\n(L) Ver versiones disponibles\n(R) Reelegir una carpeta para el Nuevo Servidor\n(N) Volver al menú principal\n\nElige una de las opciones o escribe la versión para instalar tu Nuevo Servidor= ').replace(" ", "")
                                try:
                                    def servdownload(versionname,type):
                                        global newserver
                                        global foldname
                                        version = versionname.lower()
                                        if type == "stable":
                                            url = MC_STABLE[version]
                                        elif type == "snapshot":
                                            url = MC_SNAPSHOT[version]
                                        else:
                                            vers_select()
                                        cls()
                                        window_title(f'{SSTITLE} - Descargando archivos del servidor...')
                                        day = getdate()
                                        print(f'{SSTITLE} - {day}\n--------------------------\n\nTu Nuevo Servidor está siendo descargado.\n\nVersión: {version}\nCarpeta de destino: "{foldname}"\n\nEspera por favor...\n')
                                        time.sleep(0.5)
                                        os.makedirs(newserver, exist_ok=True)
                                        os.chdir(newserver)
                                        try:
                                            response = requests.get(url, stream=True) # type: ignore
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
                                            cls()
                                            window_title(f'{SSTITLE} - Tu nuevo servidor ha sido instalado correctamente')
                                            day = getdate()
                                            input(f'{SSTITLE} - {day}\n--------------------------\n\nTu Nuevo Servidor se ha instalado correctamente y ha sido añadido a la Lista "Tus Servidores".\n\nPresiona ENTER para continuar.')
                                            servname = os.path.basename(newserver)
                                            servstring = f"{servname}<[=]>{newserver}\n"
                                            os.makedirs(CONFIG_PATH, exist_ok=True)
                                            with open(SAVED_SERVERS, 'r+') as file:
                                                lines = file.readlines()
                                                if servstring not in lines:
                                                    file.write(servstring)
                                            esp()
                                        except Exception:
                                            def erragain():
                                                cls()
                                                yup = colored("Sí","green") # type: ignore
                                                nop = colored("No","red") # type: ignore
                                                window_title(f'{SSTITLE} - Ocurrió un error mientras se descargaba tu nuevo servidor :(')
                                                day = getdate()
                                                errtry = input(f"{SSTITLE} - {day}\n--------------------------\n\nOcurrió un error mientras se descargaba tu Nuevo Servidor.\nReintentar?\n\n(1) {yup}\n(2) {nop}\n\nElige una de las opciones= ")
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
                                                        servdownload(version,type)
                                                    elif errtr == 2:
                                                        esp()
                                                    else:
                                                        erragain()
                                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                    erragain()
                                            erragain()
                                    if verss.lower() == "n":
                                        esp()
                                    elif verss.lower() == "r":
                                        reselect()
                                    elif verss.lower() == "l":
                                        def select_list():
                                            cls()
                                            window_title(f'{SSTITLE} - Lista de versiones disponibles')
                                            day = getdate()
                                            print(f"{SSTITLE} - {day}\n--------------------------\n")
                                            print("VERSIONES ESTABLES:")
                                            for i, version in enumerate(MC_STABLE, start=1):
                                                print(f"(-) {version}")
                                            print('')
                                            print("VERSIONES SNAPSHOT:")
                                            for i, version in enumerate(MC_SNAPSHOT, start=1):
                                                print(f"(-) {version}")
                                            listselection = input("\n(B) Atrás\n(R) Volver al menú principal\n\nEscribe una versión para instalar o elige una de las opciones=")
                                            try:
                                                if listselection.lower() == "b":
                                                    vers_select()
                                                elif listselection.lower() == "r":
                                                    esp()
                                                elif listselection.lower() in MC_STABLE.keys():
                                                    servdownload(listselection,"stable")
                                                elif listselection.lower() in MC_SNAPSHOT.keys():
                                                    servdownload(listselection,"snapshot")
                                                else:
                                                    select_list()
                                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                select_list()
                                        select_list()
                                    elif verss.lower() in MC_STABLE.keys():
                                        servdownload(verss,"stable")
                                    elif verss.lower() in MC_SNAPSHOT.keys():
                                        servdownload(verss,"snapshot")
                                    else:
                                        vers_select()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    installmenu()
                            vers_select()
                        else:
                            installmenu()
                    reselect()
                elif inconf == 2:
                    esp()
                else:
                    installmenu()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                installmenu()  

        # LICENSE AND EXTRAS
        def about():
            LOGGER.info("Entering Extras menu...")
            cls()
            window_title(f'{SSTITLE} - Acerca de {SSTITLE}')
            day = getdate()
            copyr = input(f"{SSTITLE} - {day}\n--------------------------\n\nMIT License - Copyright (c) {YEAR} ngdplnk\n\n{SSTITLE} {SSVERSION}-dev\n\n{CHANGELOG_SPA}\n\n-------------------------------------\n\n(1) Ver repositorio en el navegador\n(2) Ver licencia en el navegador\n(3) Volver al menú principal\n\nElige una de las opciones= ")
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
                    url = colored("https://github.com/ngdplnk/SSTools4MC","cyan") # type: ignore
                    cls()
                    window_title(f'{SSTITLE} - Ver repositorio')
                    day = getdate()
                    input(f"{SSTITLE} - {day}\n--------------------------\n\nEl repositorio se abrirá en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
                    url = "https://github.com/ngdplnk/SSTools4MC"
                    webbrowser.open(url)
                    about()
                elif selec == 2:
                    url = colored("https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE","cyan") # type: ignore
                    cls()
                    window_title(f'{SSTITLE} - Ver licencia')
                    day = getdate()
                    input(f"{SSTITLE} - {day}\n--------------------------\n\nLa licencia se abrirá en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
                    url = "https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE"
                    webbrowser.open(url)
                    about()
                elif selec == 3:
                    esp()
                else:
                    about()
            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                about()

        # EXIT
        def exiit():
            cls()
            window_title(f'{SSTITLE} - Nos vemos pronto!')
            print(f"--------------------------------------------\nNos vemos pronto!\nMIT License - Copyright (c) {YEAR} ngdplnk\n--------------------------------------------\n")
            time.sleep(1.2)
            LOGGER.info("QUITTING PROGRAM...")  
            sys.exit()

        # MAIN MENU
        def menu():
            LOGGER.info("Entering Main menu...")
            os.makedirs(SSTOOLS_FOLDER, exist_ok=True)
            os.chdir(SSTOOLS_FOLDER)
            cls()
            window_title(f'{SSTITLE} - Bienvenido! Estás en el menú principal')
            day = getdate()
            seleccion = input(f"{SSTITLE} - {day}\n--------------------------\n\nHola! Estás en el menú principal.\n\n(1) Inciar un Servidor\n(2) Instalar un Nuevo Servidor\n(3) Extras\n(4) Cambiar Lenguaje\n(5) Salir\n\nElige una de las opciones= ")
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
                    installmenu()
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

    # STARTUP
    def startup():
        # ICON
        LOGGER.info("Setting up icon...")
        ico = os.path.abspath(ICON_PATH)
        if not os.path.exists(ico):
            LOGGER.error("Icon not found")
        else:
            hIcon = ctypes.windll.user32.LoadImageW(
                None, ico, 1, 0, 0, 0x00000010
            )
            hwnd = ctypes.windll.kernel32.GetConsoleWindow()
            ctypes.windll.user32.SendMessageW(hwnd, 0x0080, 0, hIcon)
        # LANGUAGE
        if SYSTEM_LANG.startswith("es") or SYSTEM_LANG.startswith("Spanish"):
            esp()
        else:
            eng()

    # RUN PROGRAM
    startup()
except (Exception, KeyboardInterrupt) as e:
    LOGGER.critical(f"AN ERROR OCCURRED AND THE PROGRAM CLOSED UNEXPECTEDLY!!!")
    LOGGER.critical(f"The problem is described below:")
    if isinstance(e, KeyboardInterrupt):
        LOGGER.critical(f"KeyboardInterrupt triggered by User!!!")
    else:
        LOGGER.critical(f"{e}")
    sys.exit(1)

#### END OF PROGRAM ####