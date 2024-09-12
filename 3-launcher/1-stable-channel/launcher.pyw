#### SSTools4MC Stable Channel Launcher  ####
####        DEVELOPED BY NGDPLNK         ####
#############################################

# Needed Libraries
import os
import sys
import locale
import subprocess
from tkinter import messagebox

# Paths
APPDATA = os.environ.get("APPDATA")
PROGRAM_PATH = os.path.join(APPDATA, "SSTools4MC") # type: ignore
ASSETS_PATH = os.path.join(PROGRAM_PATH, "assets")
CODE_PATH = os.path.join(PROGRAM_PATH, "main.py")
ICON_PATH = os.path.join(ASSETS_PATH, "icon.ico")

# Create Folders
os.makedirs(PROGRAM_PATH, exist_ok=True)
os.makedirs(ASSETS_PATH, exist_ok=True)

# Get System Language
system_lang = locale.getlocale()[0]
system_lang = str(system_lang)

# Import/install 'requests' module
try:
    import requests # Try to import the 'requests' module
except ImportError: # If the 'requests' module is not installed
    try: # Try to install the 'requests' module and import it
        subprocess.check_call([sys.executable, "-m", "pip", "install", "requests"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        import requests
    except Exception: # If the 'requests' module can't be installed
        if system_lang.startswith('es') or system_lang.startswith('Spanish'): # Error message if the system language is Spanish
            messagebox.showerror("Error", "No se pudo instalar el módulo 'requests'. Por favor, instálalo manualmente.")
        else: # Error message if the system language is not Spanish
            messagebox.showerror("Error", "Couldn't install the 'requests' module. Please install it manually.")
        sys.exit(1)

# Try to get the updated code
try:
    code = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/1-stable/main.py") # Program permalink
    with open(CODE_PATH, 'wb') as writecode:
        writecode.write(code.content) # Write the downloaded code
    if os.path.exists(ICON_PATH):
        pass # If the icon exists, do nothing
    else:
        icon = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/3-launcher/1-stable-channel/icon.ico") # Icon permalink
        with open(ICON_PATH, 'wb') as writeicon:
            writeicon.write(icon.content) # Write the downloaded icon
    os.system(f"start cmd /c python {CODE_PATH}") # Run the program
except Exception: # If the program can't get the code, the icon or can't run the program
    if os.path.isfile(CODE_PATH):
        os.system(f"start cmd /c python {CODE_PATH}") # Run the program
    else:
        if system_lang.startswith('es') or system_lang.startswith('Spanish'): # Error message if the system language is Spanish
            messagebox.showerror("Error", "Conéctate a internet para obtener la última versión del Canal Estable de SSTools4MC.")
        else: # Error message if the system language is not Spanish
            messagebox.showerror("Error", "Connect to the internet to get the latest version of SSTools4MC Stable Channel.")