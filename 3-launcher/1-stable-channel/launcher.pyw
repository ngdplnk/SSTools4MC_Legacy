#### SSTools4MC Stable Channel Launcher  ####
####        DEVELOPED BY NGDPLNK         ####

import requests
import os
import locale
from tkinter import messagebox

APPDATA = os.environ.get("APPDATA")
PROGRAM_PATH = os.path.join(APPDATA, "SSTools4MC") # type: ignore
ASSETS_PATH = os.path.join(PROGRAM_PATH, "assets")
CODE_PATH = os.path.join(PROGRAM_PATH, "main.py")
ICON_PATH = os.path.join(ASSETS_PATH, "icon.ico")

os.makedirs(PROGRAM_PATH, exist_ok=True)
os.makedirs(ASSETS_PATH, exist_ok=True)

system_lang = locale.getlocale()[0]
system_lang = str(system_lang)

try:
    code = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/1-stable/main.py")
    with open(CODE_PATH, 'wb') as writecode:
        writecode.write(code.content)
    if os.path.exists(ICON_PATH):
        pass
    else:
        icon = requests.get("https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/3-launcher/1-stable-channel/icon.ico")
        with open(ICON_PATH, 'wb') as writeicon:
            writeicon.write(icon.content)
    os.system(f"start cmd /c python {CODE_PATH}")
except Exception:
    if os.path.isfile(CODE_PATH):
        os.system(f"start cmd /c python {CODE_PATH}")
    else:
        if system_lang.startswith('es') or system_lang.startswith('Spanish'):
            messagebox.showerror("Error", "Conéctate a internet para obtener la última versión del Canal Estable de SSTools4MC.")
        else:
            messagebox.showerror("Error", "Connect to the internet to get the latest version of SSTools4MC Stable Channel.")