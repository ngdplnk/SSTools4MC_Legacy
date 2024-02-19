### SSTools4MC Program Loader and Updater ###
# This script is the main program loader and updater for SSTools4MC.
# It will check for updates and download them if needed.

# MODULES
import os
import sys
import requests
from tkinter import messagebox

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
        print("Error:", e)
        messagebox.showerror("Error", "Error al actualizar. Usando versión local del programa.")

# Main function
def main():
    # Call check_internet_connection function
    if check_internet_connection():
        # GitHub URL
        file_url = "https://raw.githubusercontent.com/tu_usuario/tu_repositorio/master/programa.py"
        
        # Install path
        install_path = os.path.join("program files", "TLSoftware")
        os.makedirs(install_path, exist_ok=True)
        
        # File name
        file_name = os.path.join(install_path, "programa.py")
        
        # Download file from GitHub
        download_file(file_url, file_name)
        
        # Run the program
        os.system(f"python {file_name}")
    else:
        # Verify if the program is installed
        if os.path.exists("program files/TLSoftware/programa.py"):
            # Run the program
            os.system("python program\ files/TLSoftware/programa.py")
        else:
            # Show error message
            messagebox.showerror("Error", "El programa no está instalado en este equipo. Por favor, conéctate a internet para obtener la última versión disponible.")

if __name__ == "__main__":
    main()
