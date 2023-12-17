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

# SUBMENÚ EMPRESAS ADHERIDAS
def startserver_menu():
  pass

# SUBMENÚ QUIÉNES SOMOS
def manageserver_menu():
  pass

# LICENSE AND EXTRAS MENU
def licensextras_menu():
  global ntheme
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
  subtitle_text = "SSTools4MC Release v2.0\n-------------------------------------\n\nMIT License - Copyright © 2023 NGDPL Nk\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n"
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
  ntheme_button = tk.Button(frame, text=f"Change to {ntheme} Theme", command=new_theme, height=3, width=30, bg=button_color, fg=buttontxt_color)
  ntheme_button.pack(pady=5)

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

  # Min window size
  root.minsize(600, 450)

  # Set window size
  root.geometry("800x450")

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

  root.iconbitmap("assets\\icon.ico")  # Icon
  root.title("SSTools4MC")  # Window title

  # Clears the window
  for widget in root.winfo_children():
    widget.destroy()

  # Set BG
  root.configure(bg=bg_color)

  # Min window size
  root.minsize(600, 450)

  # Maximize window size
  root.attributes("-fullscreen", True)

  ### COMMENT FOR LATER
  ## Think clearly about the design of the window
  # Its necessary to make it fullscreen?
  # Or maybe a fixed size window?
  ##################################################

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



# PROGRAM START
theme()
