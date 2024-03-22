### SSTools4MC Launcher ###
###########################

import requests
import os
import subprocess
from tkinter import messagebox

APPDATA = os.environ.get("APPDATA")
PROGRAM_PATH = os.path.join(APPDATA, "TLSoftware", "SSTools4MC") # type: ignore
FILE_PATH = os.path.join(PROGRAM_PATH, "main.py")
ICON_PATH = os.path.join(PROGRAM_PATH, "assets", "icon.ico")

os.makedirs(PROGRAM_PATH, exist_ok=True)

try:
    response = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/%5B1%5D%20release/main.py")
    with open(FILE_PATH, 'wb') as file:
        file.write(response.content)
    print(ICON_PATH)
    if os.path.exists(ICON_PATH):
        subprocess.run(["python", FILE_PATH], shell=True)
    else:
        icon = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/%5B1%5D%20release/icon.ico")
        with open(ICON_PATH, 'wb') as file:
            file.write(icon.content)
        subprocess.run(["python", FILE_PATH], shell=True)
except Exception:
    if os.path.isfile(FILE_PATH):
        subprocess.run(["python", FILE_PATH], shell=True)
    else:
        messagebox.showerror("Error", "Conéctate a internet para obtener la última versión del programa.")
