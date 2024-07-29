### SSTools4MC - Development Version 2 ###
###    Developed by @ngdplnk - 2024    ###

# This is the internal development version of SSTools4MC.
# It is not recommended to use this version. You can use the stable version or the original development variant instead.

## Things to consider before using this version: ##
# - This version is not stable and may contain bugs.
# - This version will be developed for Windows in mind. Don't expect it to work on other operating systems.
# - This version may contain features that are not available in the stable version.
# - This version may not contain features that are available in the stable version.

## Things to do: ##
# - Placeholder**

## Things to fix: ##
# - Placeholder**

###############################################

## Importing required modules
import os
import locale

## Paths
PROGRAM_PATH = os.path.join(os.getenv('APPDATA'), 'SSTools4MC') # type: ignore
CONFIG_PATH = os.path.join(PROGRAM_PATH, 'config.sstools') # type: ignore

## Variables
CFG = {}

## Functions
# Set window title
def window_title(title: str):
    os.system(f'title {title}')
# Set up configs
def setup_config():
    if not os.path.exists(CONFIG_PATH):
        lang = locale.getdefaultlocale()[0]
        if lang.startswith('es'): # type: ignore
            with open(CONFIG_PATH, 'w') as f:
                f.write('#SSTools4MC Configuration File\nlanguage=es')
            CFG = {'language': 'es'}
        else:
            with open(CONFIG_PATH, 'w') as f:
                f.write('#SSTools4MC Configuration File\nlanguage=en')
            CFG = {'language': 'en'}
    else:
        CFG = {}
        with open(CONFIG_PATH, 'r') as file:
          for line in file:
            line = line.strip()
            if line and not line.startswith('#'):
              key, value = line.split('=')
              CFG[key.strip()] = value.strip()
# Clear screen
def cls():
    os.system('cls')

## Spanish language
def spanish():
    def main_menu():
        window_title('SSTools4MC - Versión de Desarrollo 2')
        cls()
        print('SSTools4MC - Versión de Desarrollo 2')
        print('1. Iniciar servidor')
        print('2. Herramientas')
        print('3. Condiguración')
        print('4. Salir')
        choice = input('Ingrese su elección: ')
        if choice == '1':
            start_menu()
        elif choice == '2':
            tools_menu()
        elif choice == '3':
            settings_menu()
        elif choice == '4':
            exit()
        else:
            main_menu()
    
    def start_menu():
        window_title('SSTools4MC - Iniciar servidor')
        cls()
        print('SSTools4MC - Iniciar servidor')
        print('Estás a punto de iniciar tu servidor de Minecraft.')
        print('Por favor, ingresa la cantudad de RAM que deseas asignar al servidor (Gigabytes).')
        ram = input('RAM: ')
        try:
            ram = int(ram)
        except ValueError:
            start_menu()


    def tools_menu():
        pass

    def settings_menu():
        pass

    def exit():
        cls()
        print('Goodbye!')
        input('Press Enter to exit...')
        os._exit(0)

    main_menu()

## English language
def english():
    def main_menu():
        cls()
        print('SSTools4MC - Development Version 2')
        print('1. Start a server')
        print('2. Tools')
        print('3. Settings')
        print('4. Exit')
        choice = input('Enter your choice: ')
        if choice == '1':
            start_menu()
        elif choice == '2':
            tools_menu()
        elif choice == '3':
            settings_menu()
        elif choice == '4':
            exit()
        else:
            main_menu()
    
    def start_menu():
        pass

    def tools_menu():
        pass

    def settings_menu():
        pass

    def exit():
        cls()
        print('Goodbye!')
        input('Press Enter to exit...')
        os._exit(0)

    main_menu()

## Program start
setup_config()
if CFG['language'] == 'es':
    spanish()
else:
    english()