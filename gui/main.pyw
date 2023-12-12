import tkinter as tk
import webbrowser
from PIL import Image, ImageTk
import os

# Color palettes
appdata_path = os.getenv('APPDATA')
sstools_folder_path = os.path.join(appdata_path, "SSTools4MC")
conf_access = f"{sstools_folder_path}\\config.sst"
if os.path.exists(conf_access):
  with open(conf_access, 'r') as file:
    for line in file:
      line = line.strip()
      if line and not line.startswith('#'):
        key, value = line.split('=')
        conf[key.strip()] = value.strip()
  if conf["theme"] == "dark":
    bg_color = "#1A1A1A"  # rgb(26, 26, 26)
    button_color = "#D3D3D3"  # rgb(211, 211, 211)
    text_color = "white"  # White
  elif conf["theme"] == "black":
    bg_color = "black"  # Black
    button_color = "white"  # White
    text_color = "black"  # Black
  elif conf["theme"] == "light":
    bg_color = "white"  # White
    button_color = "white"  # White
    text_color = "black"  # Black
  else:
    bg_color = "#1A1A1A"  # rgb(26, 26, 26)
    button_color = "#D3D3D3"  # rgb(211, 211, 211)
    text_color = "white"  # White
    conf["theme"] = "dark"
    with open(conf_access, 'w') as file:
      for key, value in conf.items():
        file.write(f'{key}={value}\n')
else:
  """asdasd"""







# Variables que sirven para verificar si las subventanas están abiertas o no
ventana_quienes_somos_abierta = False
ventana_quienes_somos = None
ventana_fase_inscripcion_abierta = False
ventana_fase_inscripcion = None
ventana_empresas_abierta = False
ventana_empresas = None

# SUBMENÚ EMPRESAS ADHERIDAS
def mostrar_empresas_adheridas():
  global ventana_empresas_abierta
  global ventana_empresas

  # Verificar si la ventana ya está abierta
  if ventana_empresas_abierta and ventana_empresas.winfo_exists():
    ventana_empresas.lift()
  else:
    ventana_empresas_abierta = True
    ventana_empresas = tk.Toplevel(root)

  ventana_empresas.iconbitmap("assets\\icon.ico")  # Icono de la ventana  
  ventana_empresas.title("Empresas Adheridas")  # Título de la ventana

  # Eliminar todo de la ventana de Empresas Adheridas
  for widget in ventana_empresas.winfo_children():
    widget.destroy()

  # Paleta de colores
  color_fondo = '#637E76'  # rgb(99, 126, 118)
  color_titulo = 'white'  # Color blanco
  color_descripcion = 'white'  # Color blanco
  color_botones = '#FFEFE8'  # rgb(255, 239, 232)

  # Colocar fondo
  ventana_empresas.configure(bg=color_fondo)

  # Tamaño mínimo de la ventana
  ventana_empresas.minsize(600, 600)

  # Tamaño actual de la ventana
  ventana_empresas.geometry("600x600")

  # Marco principal
  marco = tk.Frame(ventana_empresas, bg=color_fondo)
  marco.place(relx=0.5, rely=0.5, anchor='center')

  # Título
  fuente_titulo = ("Arial", 20, "bold")
  titulo = tk.Label(marco, text="Empresas Adheridas", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
  titulo.pack(pady=5)

  # Descripción
  descripcion_texto = "Aquí podrás encontrar la lista de empresas adheridas a la plataforma. ¡Te invitamos a visitar sus páginas!"
  descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
  descripcion.pack(pady=5)
	
  # Muetra la información de Ecocitex
  def mostrar_ecocitex():
    # Limpia la ventana
    for widget in ventana_empresas.winfo_children():
        widget.destroy()
    
		# Paleta de colores
    color_fondo = '#637E76'  # rgb(99, 126, 118)
    color_titulo = 'white'  # Color blanco
    color_descripcion = 'white'  # Color blanco
    color_botones = '#FFEFE8'  # rgb(255, 239, 232)
    
    # Título de la ventana
    ventana_empresas.title("Ecocitex")

    # Colocar fondo
    ventana_empresas.configure(bg=color_fondo)

    # Tamaño mínimo de la ventana
    ventana_empresas.minsize(600, 650)

    # Tamaño actual de la ventana
    ventana_empresas.geometry("600x650")

    # Marco principal
    marco = tk.Frame(ventana_empresas, bg=color_fondo)
    marco.place(relx=0.5, rely=0.5, anchor='center')

    # Título
    fuente_titulo = ("Arial", 20, "bold")
    titulo = tk.Label(marco, text="Ecocitex", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
    titulo.pack(pady=5)

    # Cargar la imagen
    imagen_eco = Image.open("assets\\eco.png")
    imagen_eco = imagen_eco.resize((450, 200))  # Tamaño de la imagen
    imagen_eco = ImageTk.PhotoImage(imagen_eco)

    # Mostrar la imagen
    label_imagen = tk.Label(marco, image=imagen_eco)
    label_imagen.image = imagen_eco
    label_imagen.pack(pady=5)

    # Descripción
    descripcion_texto = 'Ecocitex se encarga de recolectar ropa en desuso para luego vender la que esté en buen estado y reciclar la que no lo esté haciendo "lana".\n\n"Mitigamos 5,8 toneladas de co2 equivalente por cada tonelada de ropa que reciclamos"'
    descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
    descripcion.pack(pady=5)
    
    # Volver atrás
    def volver():
      mostrar_empresas_adheridas()

    # Abre la página web de la empresa
    def abrir_pagina_web():
      webbrowser.open("https://www.ecocitex.cl/")

    # Botón abrir página
    boton_abrir_pagina = tk.Button(marco, text="Abrir página web de Ecocitex", command=abrir_pagina_web, height=2, width=40, bg=color_botones)
    boton_abrir_pagina.pack(padx=10,pady=10, side=tk.LEFT)      

    # Botón volver
    boton_volver = tk.Button(marco, text="Volver", command=volver, height=2, width=20, bg=color_botones)
    boton_volver.pack(pady=10, side=tk.RIGHT)

	# Botón Ecocitex
  boton_ecocitex = tk.Button(marco, text="Ecocitex", command=mostrar_ecocitex, height=3, width=20, bg=color_botones)
  boton_ecocitex.pack(pady=3)

  # Muestra la información de Renueva tu clóset
  def mostrar_renueva_tu_closet():
    # Limpia la ventana
    for widget in ventana_empresas.winfo_children():
        widget.destroy()
    
		# Paleta de colores
    color_fondo = '#637E76'  # rgb(99, 126, 118)
    color_titulo = 'white'  # Color blanco
    color_descripcion = 'white'  # Color blanco
    color_botones = '#FFEFE8'  # rgb(255, 239, 232)
    
    # Título de la ventana
    ventana_empresas.title("Renueva tu clóset")

    # Color del fondo
    ventana_empresas.configure(bg=color_fondo)

    # Tamaño mínimo de la ventana
    ventana_empresas.minsize(600, 650)

    # Tamaño actual de la ventana
    ventana_empresas.geometry("600x650")

    # Marco principal
    marco = tk.Frame(ventana_empresas, bg=color_fondo)
    marco.place(relx=0.5, rely=0.5, anchor='center')

    # Título
    fuente_titulo = ("Arial", 20, "bold")
    titulo = tk.Label(marco, text="Renueva tu clóset", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
    titulo.pack(pady=5)

    # Cargar la imagen
    imagen_eco = Image.open("assets\\rtc.png")
    imagen_eco = imagen_eco.resize((250, 350))  # Tamaño de la imagen
    imagen_eco = ImageTk.PhotoImage(imagen_eco)

    # Mostrar la imagen
    label_imagen = tk.Label(marco, image=imagen_eco)
    label_imagen.image = imagen_eco
    label_imagen.pack(pady=5)

    # Descripción
    descripcion_texto = 'Renueva tu clóset es una comunidad online donde mujeres comparten, compran y venden su ropa, contribuyendo a la moda circular.\n\n"Somos un marketplace en donde puedes publicar la ropa usada que tengas en buen estado con la finalidad de conseguir un cliente potencial para ella."'
    descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
    descripcion.pack(pady=5)
    
    # Vuelve atrás
    def volver():
      mostrar_empresas_adheridas()

    # Abre la página web
    def abrir_pagina_web():
      webbrowser.open("https://www.renuevatucloset.cl/home")

    # Botón abrir página
    boton_abrir_pagina = tk.Button(marco, text="Abrir página web de Renueva tu clóset", command=abrir_pagina_web, height=2, width=40, bg=color_botones)
    boton_abrir_pagina.pack(padx=10,pady=10, side=tk.LEFT)      

    # Botón volver
    boton_volver = tk.Button(marco, text="Volver", command=volver, height=2, width=20, bg=color_botones)
    boton_volver.pack(pady=10, side=tk.RIGHT)

  # Botón Renueva tu clóset
  boton_renueva_tu_closet = tk.Button(marco, text="Renueva tu clóset", command=mostrar_renueva_tu_closet, height=3, width=20, bg=color_botones)
  boton_renueva_tu_closet.pack(pady=3)

  # Muestra la información de Vestuá
  def mostrar_vestua():
    # Limpia la ventana
    for widget in ventana_empresas.winfo_children():
        widget.destroy()
    
		# Paleta de colores
    color_fondo = '#637E76'  # rgb(99, 126, 118)
    color_titulo = 'white'  # Color blanco
    color_descripcion = 'white'  # Color blanco
    color_botones = '#FFEFE8'  # rgb(255, 239, 232)
    
    # Título de la ventana
    ventana_empresas.title("Vestuá")

    # Color de fondo
    ventana_empresas.configure(bg=color_fondo)

    # Tamaño mínimo de la ventana
    ventana_empresas.minsize(600, 650)

    # Tamaño actual de la ventana
    ventana_empresas.geometry("600x650")

    # Marco principal
    marco = tk.Frame(ventana_empresas, bg=color_fondo)
    marco.place(relx=0.5, rely=0.5, anchor='center')

    # Título
    fuente_titulo = ("Arial", 20, "bold")
    titulo = tk.Label(marco, text="Vestuá", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
    titulo.pack(pady=5)

    # Cargar la imagen
    imagen_eco = Image.open("assets\\ves.png")
    imagen_eco = imagen_eco.resize((250, 250))  # Tamaño de la imagen
    imagen_eco = ImageTk.PhotoImage(imagen_eco)

    # Mostrar la imagen
    label_imagen = tk.Label(marco, image=imagen_eco)
    label_imagen.image = imagen_eco
    label_imagen.pack(pady=5)

    # Descripción
    descripcion_texto = 'Vestuá se encarga de recolectar, revisar, publicar y revender ropa en desuso, contribuyendo a la moda circular.\n\n"Creamos una plataforma que no solo te permite conseguir las prendas de tus sueños, sino que te sumerge en un mundo de estilo y moda circular que te dejará maravillada."'
    descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
    descripcion.pack(pady=5)
    
    # Vuelve atrás
    def volver():
      mostrar_empresas_adheridas()

    # Abre la página web
    def abrir_pagina_web():
      webbrowser.open("https://www.vestua.cl/store")

    # Botón abrir página
    boton_abrir_pagina = tk.Button(marco, text="Abrir página web de Vestuá", command=abrir_pagina_web, height=2, width=40, bg=color_botones)
    boton_abrir_pagina.pack(padx=10,pady=10, side=tk.LEFT)      

    # Botón volver
    boton_volver = tk.Button(marco, text="Volver", command=volver, height=2, width=20, bg=color_botones)
    boton_volver.pack(pady=10, side=tk.RIGHT)

  # Botón Vestuá
  boton_vestua = tk.Button(marco, text="Vestuá", command=mostrar_vestua, height=3, width=20, bg=color_botones)
  boton_vestua.pack(pady=3)

  # Muestra la información de Nostalgic
  def mostrar_nostalgic():
    # Limpia la ventana
    for widget in ventana_empresas.winfo_children():
        widget.destroy()
    
		# Paleta de colores
    color_fondo = '#637E76'  # rgb(99, 126, 118)
    color_titulo = 'white'  # Color blanco
    color_descripcion = 'white'  # Color blanco
    color_botones = '#FFEFE8'  # rgb(255, 239, 232)
    
    # Título de la ventana
    ventana_empresas.title("Nostalgic")

    # Color de fondo
    ventana_empresas.configure(bg=color_fondo)

    # Tamaño mínimo de la ventana
    ventana_empresas.minsize(600, 650)

    # Tamaño actual de la ventana
    ventana_empresas.geometry("600x650")

    # Marco principal
    marco = tk.Frame(ventana_empresas, bg=color_fondo)
    marco.place(relx=0.5, rely=0.5, anchor='center')

    # Título
    fuente_titulo = ("Arial", 20, "bold")
    titulo = tk.Label(marco, text="Nostalgic", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
    titulo.pack(pady=5)

    # Cargar la imagen
    imagen_eco = Image.open("assets\\nos.png")
    imagen_eco = imagen_eco.resize((250, 280))  # Tamaño de la imagen
    imagen_eco = ImageTk.PhotoImage(imagen_eco)

    # Mostrar la imagen
    label_imagen = tk.Label(marco, image=imagen_eco)
    label_imagen.image = imagen_eco
    label_imagen.pack(pady=5)

    # Descripción
    descripcion_texto = 'Siendo la primera cadena de tiendas de segunda mano en Sudamerica, Nostalgic contribuye de forma directa a la moda circular.\n\n"Pocos saben que detrás de esta gran selección de tesoros también hay una gran filosofía que es La clave del Slow Fashion. RECICLA, REDUCE, REUTILIZA"'
    descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
    descripcion.pack(pady=5)
    
    # Vuelve atrás
    def volver():
      mostrar_empresas_adheridas()

    # Abre la página web
    def abrir_pagina_web():
      webbrowser.open("https://nostalgic.cl/")

    # Botón abrir página
    boton_abrir_pagina = tk.Button(marco, text="Abrir página web de Nostalgic", command=abrir_pagina_web, height=2, width=40, bg=color_botones)
    boton_abrir_pagina.pack(padx=10,pady=10, side=tk.LEFT)      

    # Botón volver
    boton_volver = tk.Button(marco, text="Volver", command=volver, height=2, width=20, bg=color_botones)
    boton_volver.pack(pady=10, side=tk.RIGHT)

  # Botón Nostalgic
  boton_nostalgic = tk.Button(marco, text="Nostalgic", command=mostrar_nostalgic, height=3, width=20, bg=color_botones)
  boton_nostalgic.pack(pady=3)

  # Muestra la información de Paris ropa x ropa
  def mostrar_paris_ropaxropa():
    # Limpia la ventana
    for widget in ventana_empresas.winfo_children():
        widget.destroy()
    
		# Paleta de colores
    color_fondo = '#637E76'  # rgb(99, 126, 118)
    color_titulo = 'white'  # Color blanco
    color_descripcion = 'white'  # Color blanco
    color_botones = '#FFEFE8'  # rgb(255, 239, 232)
    
    # Título de la ventana
    ventana_empresas.title("Paris ropa x ropa")

    # Color de fondo
    ventana_empresas.configure(bg=color_fondo)

    # Tamaño mínimo de la ventana
    ventana_empresas.minsize(600, 650)

    # Tamaño actual de la ventana
    ventana_empresas.geometry("600x650")

    # Marco principal
    marco = tk.Frame(ventana_empresas, bg=color_fondo)
    marco.place(relx=0.5, rely=0.5, anchor='center')

    # Título
    fuente_titulo = ("Arial", 20, "bold")
    titulo = tk.Label(marco, text="Paris ropa x ropa", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
    titulo.pack(pady=5)

    # Cargar la imagen
    imagen_eco = Image.open("assets\\rxr.png")
    imagen_eco = imagen_eco.resize((250, 280))  # Tamaño de la imagen
    imagen_eco = ImageTk.PhotoImage(imagen_eco)

    # Mostrar la imagen
    label_imagen = tk.Label(marco, image=imagen_eco)
    label_imagen.image = imagen_eco
    label_imagen.pack(pady=5)

    # Descripción
    descripcion_texto = 'Es un proyecto de reciclaje textil de Paris, que desde el año 2013 ha reciclado más de 1.000 toneladas de ropa, evitando que ésta llegue a vertederos y aportando a la moda circular.\n\n"Trae a Paris la ropa que ya no puedas reutilizar y nosotros nos encargaremos de reciclarla junto a Retex y Ecofiber empresas chilenas de reciclaje textil."'
    descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
    descripcion.pack(pady=5)
    
    # Vuelve atrás
    def volver():
      mostrar_empresas_adheridas()

    # Abre la página web
    def abrir_pagina_web():
      webbrowser.open("https://www.paris.cl/sostenibilidad/iniciativas/ropa-por-ropa/")

    # Botón abrir página
    boton_abrir_pagina = tk.Button(marco, text="Abrir página web de Paris ropa x ropa", command=abrir_pagina_web, height=2, width=40, bg=color_botones)
    boton_abrir_pagina.pack(padx=10,pady=10, side=tk.LEFT)      

    # Botón volver
    boton_volver = tk.Button(marco, text="Volver", command=volver, height=2, width=20, bg=color_botones)
    boton_volver.pack(pady=10, side=tk.RIGHT)

  # Botón Paris ropa x ropa
  boton_paris_ropaxropa = tk.Button(marco, text="Paris ropa x ropa", command=mostrar_paris_ropaxropa, height=3, width=20, bg=color_botones)
  boton_paris_ropaxropa.pack(pady=3)

  # Muestra la información de HyM
  def mostrar_hym():
    # Limpia la ventana
    for widget in ventana_empresas.winfo_children():
        widget.destroy()
    
		# Paleta de colores
    color_fondo = '#637E76'  # rgb(99, 126, 118)
    color_titulo = 'white'  # Color blanco
    color_descripcion = 'white'  # Color blanco
    color_botones = '#FFEFE8'  # rgb(255, 239, 232)
    
    # Título de la ventana
    ventana_empresas.title("H&M: Let's close the loop")

    # Color de fondo
    ventana_empresas.configure(bg=color_fondo)

    # Tamaño mínimo de la ventana
    ventana_empresas.minsize(600, 650)

    # Tamaño actual de la ventana
    ventana_empresas.geometry("600x650")

    # Marco principal
    marco = tk.Frame(ventana_empresas, bg=color_fondo)
    marco.place(relx=0.5, rely=0.5, anchor='center')

    # Título
    fuente_titulo = ("Arial", 20, "bold")
    titulo = tk.Label(marco, text="H&M: Let's close the loop", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
    titulo.pack(pady=5)

    # Cargar la imagen
    imagen_eco = Image.open("assets\\hym.png")
    imagen_eco = imagen_eco.resize((450, 200))  # Tamaño de la imagen
    imagen_eco = ImageTk.PhotoImage(imagen_eco)

    # Mostrar la imagen
    label_imagen = tk.Label(marco, image=imagen_eco)
    label_imagen.image = imagen_eco
    label_imagen.pack(pady=5)

    # Descripción
    descripcion_texto = 'Es un programa de H&M que se encarga de la recogida de ropa en desuso, con cajas de reciclaje en sus tiendas de todo el mundo.\n\n"Entrega la bolsa con las prendas usadas en caja. Y si eres miembro de H&M, recibirás un cupón digital de agradecimiento que podrás utilizar en tu próxima compra. ¡Fácil!"'
    descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
    descripcion.pack(pady=5)
    
    # Vuelve atrás
    def volver():
      mostrar_empresas_adheridas()

    # Abre la página web
    def abrir_pagina_web():
      webbrowser.open("https://www2.hm.com/es_es/sostenibilidad-en-hm/our-work/close-the-loop.html")

    # Botón abrir página
    boton_abrir_pagina = tk.Button(marco, text="Abrir página web de H&M: Let's close the loop", command=abrir_pagina_web, height=2, width=40, bg=color_botones)
    boton_abrir_pagina.pack(padx=10,pady=10, side=tk.LEFT)      

    # Botón volver
    boton_volver = tk.Button(marco, text="Volver", command=volver, height=2, width=20, bg=color_botones)
    boton_volver.pack(pady=10, side=tk.RIGHT)

	# Botón H&M
  boton_hym = tk.Button(marco, text="H&M: Let's close the loop", command=mostrar_hym, height=3, width=20, bg=color_botones)
  boton_hym.pack(pady=3)

  # Cierra la ventana actual
  def cerrar_ventana():
    global ventana_empresas_abierta
    ventana_empresas_abierta = False
    root.lift()
    ventana_empresas.destroy()

  # Botón cerrar
  boton_volver = tk.Button(marco, text="Cerrar", command=cerrar_ventana, height=2, width=20, bg=color_botones)
  boton_volver.pack(pady=10)

# SUBMENÚ QUIÉNES SOMOS
def mostrar_quienes_somos():
  global ventana_quienes_somos_abierta
  global ventana_quienes_somos

  # Verificar si la ventana ya está abierta
  if ventana_quienes_somos_abierta and ventana_quienes_somos.winfo_exists():
    ventana_quienes_somos.lift()
  else:
    ventana_quienes_somos_abierta = True
    ventana_quienes_somos = tk.Toplevel(root)
  
  ventana_quienes_somos.iconbitmap("assets\\icon.ico")  # Icono de la ventana
  ventana_quienes_somos.title("¿Quiénes Somos?")  # Título de la ventana

  # Paleta de colores
  color_fondo = '#637E76'  # rgb(99, 126, 118)
  color_titulo = 'white'  # Color blanco
  color_descripcion = 'white'  # Color blanco
  color_botones = '#FFEFE8'  # rgb(255, 239, 232)

  # Color de fondo
  ventana_quienes_somos.configure(bg=color_fondo)

  # Tamaño mínimo de la ventana
  ventana_quienes_somos.minsize(600, 500)

  # Tamaño actual de la ventana
  ventana_quienes_somos.geometry("600x500")

  # Marco principal
  marco = tk.Frame(ventana_quienes_somos, bg=color_fondo)
  marco.place(relx=0.5, rely=0.5, anchor='center')

  # Título
  fuente_titulo = ("Arial", 20, "bold")
  titulo = tk.Label(marco, text="¿Quiénes Somos?", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
  titulo.pack(pady=5)

  # Descripción
  descripcion_texto = "Con la creciente importancia de la moda circular y la necesidad de promover prácticas sostenibles en la industria de la moda, proponemos la implementación de una interfaz para brindar servicios de publicidad a empresas que estén comprometidas con la moda circular de una forma accesible, sencilla y efectiva."
  descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
  descripcion.pack(pady=5)

  # Cierra la ventana actual
  def cerrar_ventana():
    global ventana_quienes_somos_abierta
    ventana_quienes_somos_abierta = False
    root.lift()
    ventana_quienes_somos.destroy()

  # Botón cerrar
  boton_volver = tk.Button(marco, text="Cerrar", command=cerrar_ventana, height=2, width=20, bg=color_botones)
  boton_volver.pack(pady=10)

# SUBMENÚ FORMULARIO Y FASE DE INSCRIPCIÓN
def mostrar_fase_inscripcion():
  global ventana_fase_inscripcion_abierta
  global ventana_fase_inscripcion

  # Verificar si la ventana ya está abierta
  if ventana_fase_inscripcion_abierta and ventana_fase_inscripcion.winfo_exists():
    ventana_fase_inscripcion.lift()
  else:
    ventana_fase_inscripcion_abierta = True
    ventana_fase_inscripcion = tk.Toplevel(root)
  
  ventana_fase_inscripcion.iconbitmap("assets\\icon.ico")  # Icono de la ventana
  ventana_fase_inscripcion.title("Fase de Inscripción")  # Título de la ventana

  # Paleta de colores
  color_fondo = '#637E76'  # rgb(99, 126, 118)
  color_titulo = 'white'  # Color blanco
  color_descripcion = 'white'  # Color blanco
  color_botones = '#FFEFE8'  # rgb(255, 239, 232)

  # Color de fondo
  ventana_fase_inscripcion.configure(bg=color_fondo)

  # Tamaño mínimo de la ventana
  ventana_fase_inscripcion.minsize(600, 500)

  # Tamaño actual de la ventana
  ventana_fase_inscripcion.geometry("600x500")

  # Marco principal
  marco = tk.Frame(ventana_fase_inscripcion, bg=color_fondo)
  marco.place(relx=0.5, rely=0.5, anchor='center')

  # Título
  fuente_titulo = ("Arial", 20, "bold")
  titulo = tk.Label(marco, text="Formulario y Fase de Inscripción", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
  titulo.pack(pady=5)

  # Descripción
  descripcion_texto = "En este formulario podrás aplicar para que tu empresa sea ingresada en nuestra plataforma. Luego de que lo hagas, tus respuestas serán revisadas y, de ser necesario, nos contactaremos contigo para solicitarte información adicional.\n\nEl formulario consiste en preguntas simples que no te tomarán más de 2 minutos."
  descripcion = tk.Label(marco, text=descripcion_texto, font=("Arial", 12), wraplength=400, bg=color_fondo, fg=color_descripcion)
  descripcion.pack(pady=5)

  # Cierra la ventana
  def cerrar_ventana():
    global ventana_fase_inscripcion_abierta
    ventana_fase_inscripcion_abierta = False
    root.lift()
    ventana_fase_inscripcion.destroy()

  # Abre el formulario
  def abrir_formulario():
    webbrowser.open("https://forms.gle/bpKGFmG6SyqSooni6")

  # Botón abrir formulario
  boton_abrir_formulario = tk.Button(marco, text="Abrir Formulario en el Navegador", command=abrir_formulario, height=2, width=40, bg=color_botones)
  boton_abrir_formulario.pack(padx=10,pady=10, side=tk.LEFT)      

  # Botón cerrar
  boton_volver = tk.Button(marco, text="Cerrar", command=cerrar_ventana, height=2, width=20, bg=color_botones)
  boton_volver.pack(pady=10, side=tk.LEFT)

# EXIT MENU
def exit_menu():
  # Clears the window
  for widget in root.winfo_children():
    widget.destroy()

  # Paleta de colores
  color_fondo = '#637E76'  # rgb(99, 126, 118)
  color_titulo = 'white'  # Color blanco

  # Título de la ventana
  root.title("Gracias por usar nuestro programa :)")

  # Color de fondo
  root.configure(bg=color_fondo)

  # Marco principal
  marco = tk.Frame(root, bg=color_fondo)
  marco.place(relx=0.5, rely=0.5, anchor='center')

  # Título
  fuente_titulo = ("Arial", 24, "bold")
  titulo = tk.Label(marco, text="Gracias por usar nuestro programa :)\nPrefiere la Moda Circular", font=fuente_titulo, bg=color_fondo, fg=color_titulo)
  titulo.pack(pady=5)

  # Cerrar el programa después de 1.8 segundos
  root.after(1800, root.destroy)

# MAIN MENU
def main():
  global root

  root = tk.Tk()
  root.iconbitmap("assets\\icon.ico")  # Icon
  root.title("SSTools4MC")  # Window title

  # Set BG
  root.configure(bg=bg_color)

  # Min window size
  root.minsize(600, 450)

  # Set window size
  root.geometry("800x450")

  # Main frame
  frame = tk.Frame(root, bg=bg_color)
  frame.place(relx=0.5, rely=0.5, anchor='center')

  # Title
  title_font = ("Arial", 30, "bold")
  title = tk.Label(frame, text="SSTools4MC", font=title_font, bg=bg_color, fg=text_color)
  title.pack(pady=5)

  # Subtitle
  subtitle_text = "Brindamos publicidad a empresas que estén comprometidas con la moda circular."
  subtitle = tk.Label(frame, text=subtitle_text, font=("Arial", 12), wraplength=600, bg=bg_color, fg=text_color)
  subtitle.pack(pady=5)

  # "Start Server" button
  start_button = tk.Button(frame, text="Start Server", command=startserver_menu, height=3, width=20, bg=button_color, fg=text_color)
  start_button.pack(pady=5)

  # "Manage Server" button
  manage_button = tk.Button(frame, text="Manage Server", command=manageserver_menu, height=3, width=20, bg=button_color, fg=text_color)
  manage_button.pack(pady=5)

  # "License and Extras" button
  extras_button = tk.Button(frame, text="License and Extras", command=licensextras_menu, height=3, width=20, bg=button_color, fg=text_color)
  extras_button.pack(pady=5)

  # "Exit" button
  exit_button = tk.Button(frame, text="Exit", command=exit_menu, height=3, width=20, bg=button_color, fg=text_color)
  exit_button.pack(pady=5)

  root.mainloop()

# CODE START
main()
