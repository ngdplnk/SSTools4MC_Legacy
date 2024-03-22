### SSTools4MC Launcher ###
###########################

import requests
import os
import subprocess
from tkinter import messagebox

APPDATA = os.environ.get("APPDATA")
PROGRAM_PATH = os.path.join(APPDATA, "TLSoftware", "SSTools4MC") # type: ignore
ASSETS_PATH = os.path.join(PROGRAM_PATH, "assets")
CODE_PATH = os.path.join(PROGRAM_PATH, "main.py")
ICON_PATH = os.path.join(PROGRAM_PATH, "assets", "icon.ico")

os.makedirs(PROGRAM_PATH, exist_ok=True)
os.makedirs(ASSETS_PATH, exist_ok=True)

try:
    code = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/1-release/main.py")
    with open(CODE_PATH, 'wb') as writecode:
        writecode.write(code.content)
    if os.path.exists(ICON_PATH):
        pass
    else:
        icon = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/1-release/icon.ico")
        with open(ICON_PATH, 'wb') as writeicon:
            writeicon.write(icon.content)
    if os.name == 'nt':  # Windows
        subprocess.Popen(["start", "cmd", "/k", "python", CODE_PATH], shell=True)
    else:  # Linux and other Unix-like systems
        subprocess.Popen(["gnome-terminal", "--", "python3", CODE_PATH])
except Exception:
    if os.path.isfile(CODE_PATH):
        if os.name == 'nt':  # Windows
            subprocess.Popen(["start", "cmd", "/k", "python", CODE_PATH], shell=True)
        else:  # Linux and other Unix-like systems
            subprocess.Popen(["gnome-terminal", "--", "python3", CODE_PATH])
    else:
        messagebox.showerror("Error", "Conéctate a internet para obtener la última versión del programa.")
