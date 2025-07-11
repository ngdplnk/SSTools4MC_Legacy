#### SSTools4MC Legacy Launcher  ####
####    DEVELOPED BY NGDPLNK     ####
#####################################

# Needed Libraries
import os
import sys
import locale
import logging
import subprocess
from datetime import datetime
from tkinter import messagebox

# Paths
APPDATA = os.environ.get("APPDATA")
PROGRAM_PATH = os.path.join(APPDATA, "SSTools4MC_Legacy") # type: ignore
LOG_PATH = os.path.join(PROGRAM_PATH, "logs")
ASSETS_PATH = os.path.join(PROGRAM_PATH, "assets")
CODE_PATH = os.path.join(PROGRAM_PATH, "main.py")
LAUNCHER_PATH = os.path.join(PROGRAM_PATH, "launcher.pyw")
ICON_PATH = os.path.join(ASSETS_PATH, "icon.ico")

# SET-UP LOGGER
logger = logging.getLogger('SSTools4MC Legacy Launcher') # logger name
logger.setLevel(logging.DEBUG) # log level
current_date = datetime.now()
formatted_date = current_date.strftime('%Y-%m-%d')
log_file = os.path.join(LOG_PATH, f'{formatted_date}.log') # log file
if not os.path.exists(log_file):
    os.makedirs(LOG_PATH) # create log folder if it doesn't exist
    with open(log_file, 'w+'):
        pass # create log file if it doesn't exist
file_handler = logging.FileHandler(log_file)
file_handler.setLevel(logging.DEBUG)
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s', datefmt='%H:%M:%S') # log format
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)
logger.propagate = False # disable console logging
logger.info('LAUNCHER LOGGING STARTED...')

# Create Folders
os.makedirs(PROGRAM_PATH, exist_ok=True)
os.makedirs(ASSETS_PATH, exist_ok=True)

# Get System Language
system_lang = locale.getlocale()[0]
system_lang = str(system_lang)
logger.info(f'System Language: {system_lang}')

# Import/install 'requests' module
try:
    import requests # Try to import the 'requests' module
    logger.info("'requests' module loaded successfully")
except ImportError: # If the 'requests' module is not installed
    try: # Try to install the 'requests' module and import it
        logger.warning("'requests' module not found. Performing autoinstall...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", "requests"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        import requests
        logger.info("'requests' module loaded successfully")
    except Exception: # If the 'requests' module can't be installed
        logger.critical("Couldn't install or import the 'requests' module. Please reopen the launcher or install it manually.")
        if system_lang.startswith('es') or system_lang.startswith('Spanish'): # Error message if the system language is Spanish
            messagebox.showerror("Error", "No se pudo instalar el módulo 'requests'. Por favor, instálalo manualmente.")
        else: # Error message if the system language is not Spanish
            messagebox.showerror("Error", "Couldn't install the 'requests' module. Please install it manually.")
        logger.critical("QUITTING LAUNCHER...")
        sys.exit(1)

# Try to get the updated code
try:
    link = "https://raw.githubusercontent.com/ngdplnk/SSTools4MC_Legacy/main/1-stable/main.py"
    logger.info(f'Getting updated program from "{link}"...')
    code = requests.get(link) # Program permalink
    with open(CODE_PATH, 'wb') as writecode:
        writecode.write(code.content) # Write the downloaded code
        logger.info("Program updated successfully")
    link = "https://raw.githubusercontent.com/ngdplnk/SSTools4MC_Legacy/main/2-launcher/launcher.pyw"
    logger.info(f'Getting updated launcher from "{link}"...')
    code = requests.get(link) # Launcher permalink
    with open(LAUNCHER_PATH, 'wb') as writecode:
        writecode.write(code.content) # Write the downloaded code
        logger.info("Launcher updated successfully")
    if os.path.exists(ICON_PATH):
        pass # If the icon exists, do nothing
        logger.info("Icon already exists. Skipping download...")
    else:
        link = "https://raw.githubusercontent.com/ngdplnk/SSTools4MC_Legacy/main/2-launcher/icon.ico"
        logger.info(f'Icon not found. Getting icon from "{link}"...')
        icon = requests.get(link) # Icon permalink
        with open(ICON_PATH, 'wb') as writeicon:
            writeicon.write(icon.content) # Write the downloaded icon
            logger.info("Icon downloaded successfully")
    os.system(f"start cmd /c python {CODE_PATH}") # Run the program
    logger.info("DONE! STARTING MAIN PROGRAM...")
except Exception: # If the program can't get the code, the icon or can't run the program
    logger.error("Couldn't get the updated program or icon. Trying to run the current program")
    if os.path.isfile(CODE_PATH):
        os.system(f"start cmd /c python {CODE_PATH}") # Run the program
        logger.info("DONE! STARTING MAIN PROGRAM...")
    else:
        logger.critical("LAUNCHER IS UNABLE TO LOAD MAIN PROGRAM!!!")
        logger.critical("Couldn't get the updated program or icon. Please check your internet connection.")
        if system_lang.startswith('es') or system_lang.startswith('Spanish'): # Error message if the system language is Spanish
            messagebox.showerror("Error", "Conéctate a internet para obtener la última versión de SSTools4MC Legacy.")
        else: # Error message if the system language is not Spanish
            messagebox.showerror("Error", "Connect to the internet to get the latest version of SSTools4MC Legacy.")
        logger.critical("QUITTING LAUNCHER...")
        sys.exit(1)