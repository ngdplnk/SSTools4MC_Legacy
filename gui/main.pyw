### THINGS TO FIX ###
## Nothing for now
##################################################
### THINGS TO ADD ###
## Server start menu
# - Server start button
# - Server RAM selection
# - Server RAM saving for later
# - Server JAR selection (not sure)
## Server manage menu
# - Port nogui program options
# - Add more options
## License and Extras menu
# - Add more themes
#########

import tkinter as tk
import webbrowser
from PIL import Image, ImageTk
import os

# Global variables
global running

# Conditional variables
running = False

# Theme selection
def theme(rt=False):
  global bg_color
  global button_color
  global buttontxt_color
  global text_color
  global appdata_path
  global sstools_folder_path
  global cfg_access
  appdata_path = os.getenv("APPDATA")
  sstools_folder_path = os.path.join(appdata_path, "SSTools4MC") # type: ignore
  cfg_access = os.path.join(sstools_folder_path, "cfg.sst")
  cfg = {}
  if not rt:
    if os.path.exists(sstools_folder_path):
      if os.path.exists(cfg_access):
        with open(cfg_access, 'r') as file:
          for line in file:
            line = line.strip()
            if line and not line.startswith('#'):
              key, value = line.split('=')
              cfg[key.strip()] = value.strip()
        if cfg["theme"] == "dark":
          bg_color = "#1A1A1A"  # rgb(26, 26, 26)
          button_color = "#D3D3D3"  # rgb(211, 211, 211)
          buttontxt_color = "#1A1A1A"  # rgb(26, 26, 26)
          text_color = "white"  # White
          main()
        elif cfg["theme"] == "light":
          bg_color = "white"  # White
          button_color = "white"  # White
          buttontxt_color = "black"  # Black
          text_color = "black"  # Black
          main()
        else:
          cfg["theme"] = "dark"
          with open(cfg_access, 'w') as file:
            for key, value in cfg.items():
              file.write(f'{key}={value}\n')
          bg_color = "#1A1A1A"  # rgb(26, 26, 26)
          button_color = "#D3D3D3"  # rgb(211, 211, 211)
          buttontxt_color = "#1A1A1A"  # rgb(26, 26, 26)
          text_color = "white"  # White
          main()
      else:
        with open(cfg_access, 'w') as archivo:
          archivo.write('theme=dark\n')
        theme()
    else:
      os.makedirs(sstools_folder_path)
      with open(cfg_access, 'w') as archivo:
        archivo.write('theme=dark\n')
      theme()
  else:
    if os.path.exists(sstools_folder_path):
      if os.path.exists(cfg_access):
        with open(cfg_access, 'r') as file:
          for line in file:
            line = line.strip()
            if line and not line.startswith('#'):
              key, value = line.split('=')
              cfg[key.strip()] = value.strip()
        if cfg["theme"] == "dark":
          return "Light"
        elif cfg["theme"] == "light":
          return "Dark"
        else:
          return "Dark"
      else:
        with open(cfg_access, 'w') as archivo:
          archivo.write('theme=dark\n')
        theme(rt=True)
    else:
      os.makedirs(sstools_folder_path)
      with open(cfg_access, 'w') as archivo:
        archivo.write('theme=dark\n')
      theme(rt=True)

# Check if fullscreen is enabled
def fullscreen():
  global appdata_path
  global sstools_folder_path
  global cfg_access
  appdata_path = os.getenv("APPDATA")
  sstools_folder_path = os.path.join(appdata_path, "SSTools4MC") # type: ignore
  cfg_access = os.path.join(sstools_folder_path, "cfg.sst")
  cfg = {}
  if os.path.exists(sstools_folder_path):
    if os.path.exists(cfg_access):
      with open(cfg_access, 'r') as file:
        for line in file:
          line = line.strip()
          if line and not line.startswith('#'):
            key, value = line.split('=')
            cfg[key.strip()] = value.strip()
      try:
        if cfg["fullscreen"] == "true":
          return True
        elif cfg["fullscreen"] == "false":
          return False
        else:
          cfg["fullscreen"] = "false"
          with open(cfg_access, 'w') as file:
            for key, value in cfg.items():
              file.write(f'{key}={value}\n')
          return False
      except KeyError:
        cfg["fullscreen"] = "false"
        with open(cfg_access, 'w') as file:
          for key, value in cfg.items():
            file.write(f'{key}={value}\n')
        return False
    else:
      with open(cfg_access, 'w') as archivo:
        archivo.write('fullscreen=false\n')
      fullscreen()
  else:
    os.makedirs(sstools_folder_path)
    with open(cfg_access, 'w') as archivo:
      archivo.write('fullscreen=false\n')
    fullscreen()

# START SERVER MENU
def startserver_menu():
  pass

# MANAGE SERVER MENU
def manageserver_menu():
  # Clears the window
  for widget in root.winfo_children():
    widget.destroy()

  # Window title
  root.title("Server Management")

  # Set BG
  root.configure(bg=bg_color)

  # Main frame
  frame = tk.Frame(root, bg=bg_color)
  frame.place(relx=0.5, rely=0.5, anchor='center')

  # Title
  title_font = ("Arial", 30, "bold")
  title = tk.Label(frame, text="Server Management", font=title_font, bg=bg_color, fg=text_color)
  title.pack(pady=5)

  # Check if server.properties exists
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
  else:
    # Subtitle
    subtitle_text = "The server configuration files do not exist yet or are not available.\nYou must start the server properly at least once before you can configure it\n"
    subtitle = tk.Label(frame, text=subtitle_text, font=("Arial", 12), wraplength=600, bg=bg_color, fg=text_color)
    subtitle.pack(pady=5)

    # "Return to Main Menu" button
    main_button = tk.Button(frame, text="Return to Main Menu", command=main, height=3, width=30, bg=button_color, fg=buttontxt_color)
    main_button.pack(pady=5)

# LICENSE AND EXTRAS MENU
def licensextras_menu():
  global ntheme
  global screenmode
  # Clears the window
  for widget in root.winfo_children():
    widget.destroy()

  # Window title
  root.title("License and Extras")

  # Min window size
  root.minsize(450, 620)

  # Set window size
  root.geometry("450x620")

  # Set BG
  root.configure(bg=bg_color)

  # Main frame
  frame = tk.Frame(root, bg=bg_color)
  frame.place(relx=0.5, rely=0.5, anchor='center')

  # Title
  title_font = ("Arial", 30, "bold")
  title = tk.Label(frame, text="License and Extras", font=title_font, bg=bg_color, fg=text_color)
  title.pack(pady=5)

  # Subtitle
  subtitle_text = "SSTools4MC PRIVATE BUILD\nBETA 2 FOR V2.0\n-------------------------------------\n\nMIT License - Copyright © 2023 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n"
  subtitle = tk.Label(frame, text=subtitle_text, font=("Arial", 12), wraplength=600, bg=bg_color, fg=text_color)
  subtitle.pack(pady=5)

  # Check current theme
  def new_theme():
    global bg_color
    global button_color
    global buttontxt_color
    global text_color
    global ntheme
    cfg = {}
    if os.path.exists(sstools_folder_path):
      if os.path.exists(cfg_access):
        with open(cfg_access, 'r') as file:
          for line in file:
            line = line.strip()
            if line and not line.startswith('#'):
              key, value = line.split('=')
              cfg[key.strip()] = value.strip()
        if ntheme == "Dark":
          cfg["theme"] = "dark"
          with open(cfg_access, 'w') as file:
            for key, value in cfg.items():
              file.write(f'{key}={value}\n')
          bg_color = "#1A1A1A"  # rgb(26, 26, 26)
          button_color = "#D3D3D3"  # rgb(211, 211, 211)
          buttontxt_color = "#1A1A1A"  # rgb(26, 26, 26)
          text_color = "white"  # White
          licensextras_menu()
        elif ntheme == "Light":
          cfg["theme"] = "light"
          with open(cfg_access, 'w') as file:
            for key, value in cfg.items():
              file.write(f'{key}={value}\n')
          bg_color = "white"  # White
          button_color = "white"  # White
          buttontxt_color = "black"  # Black
          text_color = "black"  # Black
          licensextras_menu()
      else:
        with open(cfg_access, 'w') as archivo:
          archivo.write('theme=dark\n')
        ntheme = "Dark"
        new_theme()
    else:
      os.makedirs(sstools_folder_path)
      with open(cfg_access, 'w') as archivo:
        archivo.write('theme=dark\n')
      ntheme = "Dark"
      new_theme()

  # "Change Theme" button
  ntheme = theme(True)
  ntheme_button = tk.Button(frame, text=f"Set theme to {ntheme}", command=new_theme, height=3, width=30, bg=button_color, fg=buttontxt_color)
  ntheme_button.pack(pady=5)

  # Change screen mode
  def new_screenmode():
    global screenmode
    cfg = {}
    if os.path.exists(sstools_folder_path):
      if os.path.exists(cfg_access):
        with open(cfg_access, 'r') as file:
          for line in file:
            line = line.strip()
            if line and not line.startswith('#'):
              key, value = line.split('=')
              cfg[key.strip()] = value.strip()
        if screenmode == "Fullscreen":
          cfg["fullscreen"] = "true"
          with open(cfg_access, 'w') as file:
            for key, value in cfg.items():
              file.write(f'{key}={value}\n')
          root.attributes('-fullscreen', True)
          licensextras_menu()
        elif screenmode == "Windowed":
          cfg["fullscreen"] = "false"
          with open(cfg_access, 'w') as file:
            for key, value in cfg.items():
              file.write(f'{key}={value}\n')
          root.attributes('-fullscreen', False)
          licensextras_menu()
      else:
        with open(cfg_access, 'w') as archivo:
          archivo.write('fullscreen=false\n')
        screenmode = "Windowed"
        new_screenmode()
  
  # "Change Screen Mode" button
  if fullscreen():
    screenmode = "Windowed"
  else:
    screenmode = "Fullscreen"
  screenmode_button = tk.Button(frame, text=f"Set window mode to {screenmode}", command=new_screenmode, height=3, width=30, bg=button_color, fg=buttontxt_color)
  screenmode_button.pack(pady=5)

  # Open GitHub Repo
  def view_repo():
    webbrowser.open("https://github.com/NGDPLNk/SSTools4MC")
  
  # "Open GitHub Repo" button
  repo_button = tk.Button(frame, text="Open GitHub Repo", command=view_repo, height=3, width=30, bg=button_color, fg=buttontxt_color)
  repo_button.pack(pady=5)

  # Open Text Formatting for MOTD's
  def view_motdsformat():
    webbrowser.open("https://minecraft.wiki/w/Formatting_codes")
  
  # "Open Text Formatting for MOTD's" button
  motd_button = tk.Button(frame, text="Open Text Formatting for MOTD's", command=view_motdsformat, height=3, width=30, bg=button_color, fg=buttontxt_color)
  motd_button.pack(pady=5)

  # Open License
  def view_license():
    webbrowser.open("https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE")
  
  # "Open License" button
  license_button = tk.Button(frame, text="Open License", command=view_license, height=3, width=30, bg=button_color, fg=buttontxt_color)
  license_button.pack(pady=5)

  # "Return to Main Menu" button
  main_button = tk.Button(frame, text="Return to Main Menu", command=main, height=3, width=30, bg=button_color, fg=buttontxt_color)
  main_button.pack(pady=5)

# EXIT MENU
def exit_menu():
  # Clears the window
  for widget in root.winfo_children():
    widget.destroy()

  # Window title
  root.title("Thank you for using this tool")

  # Set BG
  root.configure(bg=bg_color)

  # Main frame
  frame = tk.Frame(root, bg=bg_color)
  frame.place(relx=0.5, rely=0.5, anchor='center')

  # Title
  title_font = ("Arial", 24, "bold")
  title = tk.Label(frame, text="Thank you for using this tool\nMIT License - Copyright © 2023 NGDPL Nk", font=title_font, bg=bg_color, fg=text_color)
  title.pack(pady=5)

  # Close program after 1.8 seconds
  root.after(1800, root.destroy)

# MAIN MENU
def main():
  global root
  global running
  
  # Check if return from another menu
  if not running:
    running = True
    root = tk.Tk()
    root.state("zoomed")

  root.iconbitmap("assets\\icon.ico")  # Icon
  root.title("SSTools4MC")  # Window title

  # Clears the window
  for widget in root.winfo_children():
    widget.destroy()

  # Set BG
  root.configure(bg=bg_color)
  
  if fullscreen():
    root.attributes('-fullscreen', True)
  else:
    # Min window size
    root.minsize(850, 500)

    # Set window size
    root.geometry("850x500")

  # Main frame
  frame = tk.Frame(root, bg=bg_color)
  frame.place(relx=0.5, rely=0.5, anchor='center')

  # Title
  title_font = ("Arial", 30, "bold")
  title = tk.Label(frame, text="SSTools4MC", font=title_font, bg=bg_color, fg=text_color)
  title.pack(pady=5)

  # Subtitle
  subtitle_text = "Welcome to SSTools4MC, a tool that allows you to manage your Minecraft server in a simple way\n\nPlease select an option below\n"
  subtitle = tk.Label(frame, text=subtitle_text, font=("Arial", 12), wraplength=600, bg=bg_color, fg=text_color)
  subtitle.pack(pady=5)

  # "Start Server" button
  start_button = tk.Button(frame, text="Start Server", command=startserver_menu, height=3, width=20, bg=button_color, fg=buttontxt_color)
  start_button.pack(pady=5)

  # "Manage Server" button
  manage_button = tk.Button(frame, text="Manage Server", command=manageserver_menu, height=3, width=20, bg=button_color, fg=buttontxt_color)
  manage_button.pack(pady=5)

  # "License and Extras" button
  extras_button = tk.Button(frame, text="License and Extras", command=licensextras_menu, height=3, width=20, bg=button_color, fg=buttontxt_color)
  extras_button.pack(pady=5)

  # "Exit" button
  exit_button = tk.Button(frame, text="Exit", command=exit_menu, height=3, width=20, bg=button_color, fg=buttontxt_color)
  exit_button.pack(pady=5)

  root.mainloop()

########################
# PROGRAM START
theme()
