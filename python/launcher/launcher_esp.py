#MÓDULOS
import os
import re
import time
import sys
import ctypes
import subprocess
import webbrowser
import requests

#LIMPIAR CONSOLA
def limpiar_consola():
    if os.name == 'nt':#WINDOWS
        os.system('cls')
    else:#LINUX O MACOS
        os.system('clear')

#NOMBRE VENTANA
if sys.platform.startswith('win32'):#WINDOWS
    ctypes.windll.kernel32.SetConsoleTitleW("Lanzador de Servidores para Minecraft")
elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'):#LINUX O MACOS
    sys.stdout.write(f"\x1b]2;Lanzador de Servidores para Minecraft\x07")

#VERSIÓN
def version():
    global versioon
    limpiar_consola()
    def verslist():
        url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/python/launcher/verslist.py"
        response = requests.get(url)
        if response.status_code == 200:
            codigo = response.text
            try:
                exec(codigo)
            except Exception as e:
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nError al ejecutar el código:", str(e))
                input("\nPresiona ENTER para continuar.")
                version()
        else:
            input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo se pudo obtener el archivo desde GitHub.\n\nPresiona ENTER para continuar.")
            version()
    verss = "versions"
    if os.path.exists(verss):
        directorio = "versions"
        directorio = os.path.abspath(directorio)
        contenido = os.listdir(directorio)
        carpetas = [item for item in contenido if os.path.isdir(os.path.join(directorio, item))]
        if carpetas:
            actualvers = max(carpetas, key=lambda x: tuple(map(int, x.split("."))))
        else:
            limpiar_consola()
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo podemos saber cuál es la versión de tu Servidor.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de poder acceder a este menú.\n")
            input("Presiona ENTER para continuar.")
            return
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Servidor está en la versión",actualvers)
        print("")
        versinput = input("Puedes cambiar a la versión que desees de la lista, pero recuerda que\nsi vuelves a una versión antigua puedes corromper tu Servidor para siempre.\n\n(L) Ver Lista de Versiones Disponibles\n(N) Volver al Menú Principal\n\nSelecciona una opción o escribe la versión nueva para el Servidor= ")
        versioon = versinput
        try:    
            if versinput.lower() == 'l':
                verslist()
            elif versinput.lower() == 'n':
                return
            else:
                url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/python/launcher/verslinks.py"
                response = requests.get(url)
                if response.status_code == 200:
                    codigo = response.text
                    try:
                        exec(codigo)
                    except Exception as e:
                        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nError al ejecutar el código:", str(e))
                        input("\nPresiona ENTER para continuar.")
                        version()
                else:
                    input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo se pudo obtener el archivo desde GitHub.\n\nPresiona ENTER para continuar.")
                    version()
        except ValueError:
            version()
    else:
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa carpeta de versiones aún no existe.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de poder acceder a este menú.\n")
        input("Presiona ENTER para continuar.")

#CONFIGURACIÓN
def config():
    limpiar_consola()
    props = "server.properties"
    if os.path.exists(props):
        limpiar_consola()
        online = None
        onlinetxt = None
        hc = None
        hci = None
        hcf = None
        pvp = None
        pvpi = None
        pvpf = None
        global modo
        modo = None
        global dificultad
        dificultad = None
        cantprops = None
        linea_30 = "."
        with open(props, "r") as lectura:
            lineas = lectura.readlines()
        if len(lineas) >= 7:
            linea_7_1 = lineas[6]
            if "debug=false" in linea_7_1:
                lineas[6] = ""
            elif "debug=true" in linea_7_1:
                lineas[6] = ""
        if len(lineas) >= 23:
            linea_23 = lineas[22]
            if "hellworld=false" in linea_23:
                lineas[22] = ""
            elif "hellworld=true" in linea_23:
                lineas[22] = ""
        if len(lineas) >= 41:
            linea_41 = lineas[40]
            if "previews-chat=false" in linea_41:
                lineas[40] = ""
            elif "previews-chat=true" in linea_41:
                lineas[40] = ""
        if len(lineas) >= 54:
            linea_54 = lineas[53]
            if "snooper-enabled=false" in linea_54:
                lineas[53] = ""
            elif "snooper-enabled=true" in linea_54:
                lineas[53] = ""
        if len(lineas) >= 61:
            linea_61 = lineas[60]
            if "texture-pack=" in linea_61:
                lineas[60] = ""
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
        if len(lineas) >= 35:
            linea_35 = lineas[34]
            if "online-mode=true" in linea_35:
                online = False
            elif "online-mode=false" in linea_35:
                online = True
        if online == True:
            onlinetxt = "ONLINE"
        elif online == False:
            onlinetxt = "OFFLINE"
        if len(lineas) >= 39:
            linea_39 = lineas[38]
            if "pvp=true" in linea_39:
                pvp = False
            elif "pvp=false" in linea_39:
                pvp = True
        if pvp == True:
            pvpi = "ACTIVAR"
            pvpf = "PvP ACTIVADO"
        elif pvp == False:
            pvpi = "DESACTIVAR"
            pvpf = "PvP DESACTIVADO"
        if len(lineas) >= 21:
            linea_21 = lineas[20]
            if "hardcore=false" in linea_21:
                hc = True
            elif "hardcore=true" in linea_21:
                hc = False
        if hc == True:
            hci = "ACTIVAR"
            hcf = "Modo Extremo ACTIVADO"
        elif hc == False:
            hci = "DESACTIVAR"
            hcf = "Modo Extremo DESACTIVADO"
        if len(lineas) >= 18:
            linea_18 = lineas[17]
            if "gamemode=survival" in linea_18:
                modo = "SUPERVIVENCIA"
            elif "gamemode=0" in linea_18:
                modo = "SUPERVIVENCIA"
            elif "gamemode=creative" in linea_18:
                modo = "CREATIVO"
            elif "gamemode=1" in linea_18:
                modo = "CREATIVO"
            elif "gamemode=adventure" in linea_18:
                modo = "AVENTURA"
            elif "gamemode=2" in linea_18:
                modo = "AVENTURA"
            elif "gamemode=spectator" in linea_18:
                modo = "ESPECTADOR"
            elif "gamemode=3" in linea_18:
                modo = "ESPECTADOR"
        if len(lineas) >= 7:
            linea_7 = lineas[6]
            if "difficulty=peaceful" in linea_7:
                dificultad = "PACÍFICO"
            elif "difficulty=0" in linea_7:
                dificultad = "PACÍFICO"
            elif "difficulty=easy" in linea_7:
                dificultad = "FÁCIL"
            elif "difficulty=1" in linea_7:
                dificultad = "FÁCIL"
            elif "difficulty=normal" in linea_7:
                dificultad = "NORMAL"
            elif "difficulty=2" in linea_7:
                dificultad = "NORMAL"
            elif "difficulty=hard" in linea_7:
                dificultad = "DIFÍCIL"
            elif "difficulty=3" in linea_7:
                dificultad = "DIFÍCIL"
        if len(lineas) >= 30:
            linea_30 = lineas[29]
            cantprops = re.findall(r'\d+', linea_30)
        with open(props, "w") as propsupd:
            propsupd.writelines(lineas)
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguración del Servidor\n")
        print("(1) Cambiar a Modo",onlinetxt)
        print("(2)",hci,"Modo Extremo\n(3)",pvpi,"PvP\n(4) Cambiar Modo de Juego\n(5) Cambiar Dificultad\n(6) Cambiar máximo de Jugadores\n(7) Volver al Menú Principal\n")
        confsel = input("Selecciona una opción= ")
        if confsel == "1":
            limpiar_consola()
            if online == True:
                lineas[34] = "online-mode=true\n"
            elif online == False:
                lineas[34] = "online-mode=false\n"
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nModo Cambiado a",onlinetxt)
            time.sleep(1.5)
            config()
        elif confsel == "2":
            limpiar_consola()
            if hc == True:
                lineas[20] = "hardcore=true\n"
            elif hc == False:
                lineas[20] = "hardcore=false\n"
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n")
            print(hcf)
            time.sleep(1.5)
            config()
        elif confsel == "3":
            limpiar_consola()
            if pvp == True:
                lineas[38] = "pvp=true\n"
            elif pvp == False:
                lineas[38] = "pvp=false\n"
            with open(props, "w") as propsupd:
                propsupd.writelines(lineas)
            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n")
            print(pvpf)
            time.sleep(1.5)
            config()
        elif confsel == "4":
            def juego():
                global modo
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego actual es",modo)
                print("")
                modosel = input("(1) Supervivencia\n(2) Creativo\n(3) Aventura\n(4) Espectador\n(5) Volver Atrás\n(6) Volver al menú principal\n\nElige un el nuevo Modo de Juego= ")
                if modosel == "1":
                    lineas[17] = "gamemode=0\n"
                    modo = "SUPERVIVENCIA"
                elif modosel == "2":
                    lineas[17] = "gamemode=1\n"
                    modo = "CREATIVO"
                elif modosel == "3":
                    lineas[17] = "gamemode=2\n"
                    modo = "AVENTURA"
                elif modosel == "4":
                    lineas[17] = "gamemode=3\n"
                    modo = "ESPECTADOR"
                elif modosel == "5":
                    config()
                elif modosel == "6":
                    return
                else:
                    juego()
                with open(props, "w") as propsupd:
                    propsupd.writelines(lineas)
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a Modo",modo)
                time.sleep(1.5)
                config()
            juego()
        elif confsel == "5":
            def difconf():
                global dificultad
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad actual es",dificultad)
                print("")
                difsel = input("(1) Pacífico\n(2) Fácil\n(3) Normal\n(4) Difícil\n(5) Volver Atrás\n(6) Volver al menú principal\n\nElige la nueva Dificultad= ")
                if difsel == "1":
                    lineas[6] = "difficulty=0\n"
                    dificultad = "PACÍFICO"
                elif difsel == "2":
                    lineas[6] = "difficulty=1\n"
                    dificultad = "FÁCIL"
                elif difsel == "3":
                    lineas[6] = "difficulty=2\n"
                    dificultad = "NORMAL"
                elif difsel == "4":
                    lineas[6] = "difficulty=3\n"
                    dificultad = "DIFÍCIL"
                elif difsel == "5":
                    config()
                elif difsel == "6":
                    return
                else:
                    difconf()
                with open(props, "w") as propsupd:
                    propsupd.writelines(lineas)
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nCambiado a Dificultad",dificultad)
                time.sleep(1.5)
                config()
            difconf()
        elif confsel == "6":
            def playerscant():
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite actual de Jugadores es",cantprops)
                print("")
                cantnueva = input("Escribe el nuevo límite de Jugadores para el Servidor= ")
                try:
                    entero = int(cantnueva)
                    if entero <= 0 or entero > 1024:
                        playerscant()
                    else:
                        cantmod = re.sub(r'\d+',str(entero),linea_30)
                        lineas[29] = cantmod
                        with open(props, "w") as propsupd:
                            propsupd.writelines(lineas)
                        limpiar_consola()
                        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLímite de Jugadores Cambiado a",entero)
                        time.sleep(1.5)
                        config()
                except ValueError:
                    playerscant()
            playerscant()
        elif confsel == "7":
            return
        else:
            config()
    else:
        limpiar_consola()
        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl archivo de configuración aún no existe.\nDebes iniciar correctamente el Servidor al menos 1 vez antes de configurar.\n")
        input("Presiona ENTER para continuar.")

#INICIO
def ram():
    limpiar_consola()
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPuedes volver al Menú Principal con 'N', o")
    rammount = input("Ingresa los GB de RAM para asignar al Servidor= ")
    try:    
        if rammount.lower() == 'n':
            return
        else:
            gbs = int(rammount)
            if gbs <= 0 or gbs > 1024:
                ram()
            else:
                eula_archivo = "eula.txt"
                eula = "eula=true"
                with open(eula_archivo, "w") as reemplazo:
                    reemplazo.write(eula)
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n")
                print("Iniciando el Server con",gbs,"GB de RAM")
                comando_java = f"java -Xmx{gbs}G -Xms{gbs}G -jar server.jar nogui"
                comando_final = str(comando_java)
                subprocess.run(comando_final, shell=True)
                input("\nPresiona ENTER para continuar.")
                limpiar_consola()
                print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nServidor Cerrado\n\nPuedes revisar el registro en la carpeta 'logs'\n")
                input("Presiona ENTER para continuar.")
    except ValueError:
        ram()

#LICENCIA
def about():
    limpiar_consola()
    url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
    print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSe abrira la informacion sobre Licencia mas reciente en el navegador\n")
    print(url)
    print("")
    input("Presiona ENTER para continuar.")
    webbrowser.open(url)

#SALIDA
def exiit():
    limpiar_consola()
    print("--------------------------------------------\nGracias por usar esta Herramienta\nMIT License - Copyright (c) 2023 NGDPL Nk\n--------------------------------------------\n")
    time.sleep(1)
    sys.exit()

#MENÚ PRINCIPAL
#REAGREGAR OPCIONES CUANDO SEAN AÑADIDAS COMPLETAMENTE Y ERRORES SOLUCIONADOS
while True:
    limpiar_consola()
    seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMenú Principal\n\n(1) Iniciar Servidor\n(2) Licencia\n(3) Salir\n\nSelecciona una opción= ")    
    if seleccion == "1":
        ram()
    elif seleccion == "4":
        config()
    elif seleccion == "5":
        version()
    elif seleccion == "2":
        about()
    elif seleccion == "3":
        exiit()
