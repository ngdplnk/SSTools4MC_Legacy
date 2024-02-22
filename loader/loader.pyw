### SSTools4MC Program Loader ###
#################################

# MODULES
import os
import requests
import subprocess
from tkinter import messagebox

# APPDATA PATH
APPDATA = os.environ.get("APPDATA")

# Check internet connection
def check_internet_connection():
    try:
        requests.get("http://www.github.com", timeout=3)
        return True
    except requests.ConnectionError:
        return False

# Update program from GitHub
def download_file(url, destination):
    try:
        response = requests.get(url)
        with open(destination, 'wb') as file:
            file.write(response.content)
    except Exception as e:
        messagebox.showerror("Error", "Error al actualizar. Intentando usar versión local del programa.")

        # File path
        main_path = os.path.join(APPDATA, "TLSoftware", "PyInventory", "main.pyw") # type: ignore
        
        # Verify if the program is installed
        if os.path.exists(main_path):
            # Run the program
            subprocess.run(["python", main_path], check=True, shell=False)
        else:
            # Show error message
            messagebox.showerror("Error", "El programa no está instalado en este equipo. Por favor, conéctate a internet para obtener la última versión disponible.")

# What to do if theres internet connection or not
if check_internet_connection():
    # GitHub URLs
    main_url = "https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/nogui/newcode/launcher/code_esp.py"
    icon_url = "https://raw.githubusercontent.com/ngdplnk/SSTools4MC/main/nogui/newcode/launcher/icon.ico"

    # Install path and file name
    inst_path = os.path.join(APPDATA, "TLSoftware", "SSTools4MC") # type: ignore
    assets_folder = os.path.join(inst_path, "assets")
    os.makedirs(assets_folder, exist_ok=True)

    main_path = os.path.join(inst_path, "main.pyw")
    icon_path = os.path.join(assets_folder, "icon.ico")

    # Download files from GitHub
    download_file(main_url, main_path)
    download_file(icon_url, icon_path)

    # Run the program
    subprocess.run(["python", main_path], check=True, shell=False)
else:
    # File path
    main_path = os.path.join(APPDATA, "TLSoftware", "PyInventory", "main.pyw") # type: ignore

    # Verify if the program is installed
    if os.path.exists(main_path):
        # Run the program
        subprocess.run(["python", main_path], check=True, shell=False)
    else:
        # Show error message
        messagebox.showerror("Error", "El programa no está instalado en este equipo. Por favor, conéctate a internet para obtener la última versión disponible.")
