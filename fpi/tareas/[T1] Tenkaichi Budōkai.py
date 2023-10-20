# FUNDAMENTOS DE PROGRAMACIÓN PARA INGENIERÍA/FUNDAMENTOS DE COMPUTACIÓN Y PROGRAMACIÓN
# SECCIÓN DEL CURSO: 0-C-2
# PROFESOR DE TEORÍA: ALEJANDRO CISTERNA
# PROFESOR DE LABORATORIO: CÉSAR RIVERA
#
# AUTOR
# NOMBRE: Nicolás Lucas Anselmo Valdés Rodríguez
# RUT: 21.756.280-5
# CARRERA: Ingeniería Civil Informática
# Programa que desarrolla las fases de preselección de participantes, sorteo de combates y combates en el torneo de Tenkaichi Budokai, coronando al campeón del torneo como "El más fuerte bajo el cielo"


# PRESELECCIÓN
def parte_1():  # Función propia que contiene el proceso de preselección del torneo. Creada para poder minimizar el código al momento de trabajar y que se vea más ordenado
  global participantes_seleccionados  # Se hace global la variable de "participantes_seleccionados"
  global cupos  # Se hace global la variable de "cupos"
  preseleccion = int(input())  # Input para la cantidad de preseleccionados
  cupos = int(input())  # Input para la cantidad de cupos disponibles en el torneo
  participantes1 = []  # Creación de lista para almacenar participantes al momento de ordenarlos
  
  for _ in range(preseleccion):  # Bucle donde se ingresan los participantes y sus fuerzas dependiendo de la cantidad de preseleccionados ingresada en la variable "preseleccion"
    name, fuerza = input().split(",")  # Input para los participantes y sus fuerzas
    if fuerza == "MAQUINA DESTRUIDA":  # Si la fuerza ingresada es MAQUINA DESTRUIDA, se le asignará como valor 999 para poder comparar y ordenar más adelante
      fuerza = 999
    else:  # La fuerza, de no ser MAQUINA DESTRUDA (999), se convierte a un integer
      fuerza = int(fuerza)
    participantes1.append([name,fuerza])  # Se añade el nombre y la fuerza corresponiente a un participante. Luego, se repite el bucle
  
  def orden(participante):  # Definición de función propia que sirve para poder ordenar a los participantes cuando es llamada como key en un sort correspondiente
    return participante[1]
  
  participantes1.sort(key=orden,reverse=True)  # Se ordenan los participantes de forma descendente, usando como key la función previamente definida
  participantes_seleccionados = participantes1[:cupos]  # A la variable de "participantes_seleccionados" se le asignan los participantes ordenados, desde el primero almacenado hasta el límite de cupos disponibles que fue ingresado en un principio
  print("Y los participantes seleccionados son:")  # Print parte 1
  for participante in participantes_seleccionados:  # Bucle para la segunda parte del print
    print(participante[0]) # Print que muestra al participante seleccionado guiándose de la variable "participante" del bucle en el que se encuentra, para ir mostrando a los participantes seleccionados uno por uno
  
  # Código desechado
  """participantes2 = []  # Creación de lista para participantes ordenados
  puntaje_check = []  #Creación de lista para ordenar puntajes en preselección
  
  i = 0
  while i < preseleccion:  # Bucle de ingreso de participantes, separando entre nombre y puntaje
    participantes1.append(input().split(","))
    i += 1
  
  for participante in participantes1: # Bucle de extracción de puntajes desde la lista de participantes para la preselección para ser analizados en otra lista
    puntaje_check.append(participante[1])
  
  for i in range(len(puntaje_check)):
    if puntaje_check[i] == "MAQUINA DESTRUIDA":
      puntaje_check[i] = 999
  
  puntaje_check = [int(numero) for numero in puntaje_check]
  puntaje_check = sorted(puntaje_check,key=abs,reverse=True)
  
  i = 0
  while i < len(puntaje_check):
    for puntaje in puntaje_check:
      if puntaje in participantes1[i]:
        participantes2.append(participantes1[i])
  
  
  print(participantes2)
  """

# EL SORTEO
def parte_2():  # Función propia que contiene el proceso del sorteo del orden de los participantes en el torneo. Creada para poder minimizar el código al momento de trabajar y que se vea más ordenado
  global participantes_seleccionados  # Se hace global "participantes_seleccionados" para poder utilizar esta variable más adelante
  global cupos  # Se hace global "cupos" para poder utilizar esta variable más adelante
  global mapa_de_competidores  # Se hace global "mapa_de_competidores" para poder utilizar este diccionario más adelante
  global sorteo  # Se hace global "sorteo" para poder utilizar esta variable más adelante

  mapa_de_competidores = {}  # Se crea el diccionario "mapa_de_competidores" que contendrá dentro a los competidores ordenados como variables más adelante

  sorteo = input().split(",")  # Input de los números del sorteo correspondientes para cada participante en orden, separado por una "," que luego son separados por esta en una lista llamada "sorteo"
  sorteo = [int(numero) for numero in sorteo]  # Reorden de la lista "sorteo" para transformar sus valores de str a int
  
  i = 0
  for competidor in participantes_seleccionados:  # Bucle que ordena a los participantes
    mapa_de_competidores[sorteo[i]] = competidor[0]  # Se ordena a los participantes dependiendo del valor ingresado, en orden, en el input de "sorteo" definido previamente
    i += 1  # Se suma 1 a la variable "i" y se repite el bucle hasta pasar por todos los elementos de la variable "participantes_seleccionados"

  print("\nYa tenemos los combates!!!!!")  # Print parte 1
  i = 1
  while i < len(sorteo):  # Bucle para la parte 2 del print
    print(f"{mapa_de_competidores[i]} vs {mapa_de_competidores[i+1]}")  # Print que muestra en pantalla cada competidor y su contrincante, en orden, a partir de la variable "i"
    i += 2  # Se suma 2 a la variable "i" para que se muestren correctamente los nombres de los competidores sin que se repitan en cada repetición del bucle, y se repite el bucle hasta que se cumpla la condición

  # Código desechado
  """participante = []
  participantes = []
  
  for participant in participantes_seleccionados:
    participantes.append(participant[0])

  sorteo = input().split(",")
  sorteo = [int(numero) for numero in sorteo]
  
  i = 0
  while i < cupos:
    participante.append(i)
    i += 1
  
  i = 0
  while i < len(sorteo):
    participante[0] = participantes[i]
    i += 1

  print("Ya tenemos los combates!!!!!")

  i = 0
  while i < cupos-1:
    if i == 0:
      print(f"{participante[i]} vs {participante[i+1]}")
      i += 1
    else:
      print(f"{participante[i+1]} vs {participante[i+2]}")
      i += 1"""
  
  """participante = []
  participantes = []

  for participante in participantes_seleccionados:
    participantes.append(participante[0])
  
  sorteo = input().split(",")
  sorteo = [int(numero) for numero in sorteo]

  i = 0
  while i < cupos:
    participante.append(i)
    i += 1
  
  i = 0
  while i < cupos:
    x = sorteo[i]
    participante[int(x)] = participantes[i]
    i += 1

  print("Ya tenemos los combates!!!!!")
  
  i = 0
  while i < cupos-1:
    if i == 0:
      print(f"{participante[i]} vs {participante[i+1]}")
      i += 1
    else:
      print(f"{participante[i+1]} vs {participante[i+2]}")
      i += 1"""
  
  
  """participantes = []
  
  for participante in participantes_seleccionados:
    participantes.append(participante[0])
  
  sorteo = input().split(",")

  i = 0
  while i < cupos:
  """    

  
  """sorteo = input().split(",")
  mapa_de_participantes = {i+1: participantes_seleccionados[i][0] for i in range(cupos)}
  print("\nYa tenemos los combates!!!!!")
  for i in range(0,cupos,2):
    participante1 = mapa_de_participantes[int(sorteo[i])]
    participante2 = mapa_de_participantes[int(sorteo[i+1])]
    print(f"{participante1} vs {participante2}")"""

# TENKAICHI BUDOKAI
def parte_3():  # Función propia que contiene el proceso del combate final de los participantes en el torneo. Creada para poder minimizar el código al momento de trabajar y que se vea más ordenado
  global mapa_de_competidores  # Se hace global "mapa_de_competidores" para poder usar este diccionario más adelante
  global cupos  # Se hace global "cupos" para poder usar esta variable más adelante
  global sorteo  # Se hace global "sorteo" para poder usar esta variable más adelante

  competidores = []  # Se crea la lista "competidores" para luego poder llenar con los competidores

  i = 1
  while i <= len(sorteo):  # Bucle para agregar los competidores a la lista definida previamente
    competidores.append(mapa_de_competidores[i])  # Se agrega un competidor "i" desde el diccionario "mapa_de_competidores" a la lista "competidores" para poder trabajar de forma más cómoda
    i += 1  # Se suma 1 a i y se repite el bucle hasta que se cumpla la condición específica

  def calcular_poder_oculto(nombre):  # Se define la función propia "calcular_poder_oculto" donde su entrada será un nombre de un participante y devolverá el cálculo del poder oculto de este
    total = sum(ord(letra) for letra in nombre)  # A la variable "total" se le asigna el valor de la suma de la función ord aplicada a cada una de las letras del nombre del participante ingresado al momento de llamar a la función
    return total // len(nombre)  # Se devuelve como resultado de la ejecución de la función la división entera entre el valor de la variable total y el largo del nombre del participante ingresado al momento de llamar a la función. Luego, se sale de la función

  print("\nY se lleva a cabo el torneo:")  # Print parte 1
  while 1 < len(competidores):  # Bucle que se ejecuta hasta que quede solo un competidor en pie, y que contiene dentro el proceso del combate y sus prints correspondientes
    ganadores = []  # Se crea la lista "ganadores" para ir añadiendo a los ganadores de cada ronda
    i = 0  # De alguna forma, "i" podría definir la cantidad de rondas jugadas, pero al mismo tiempo no, ya que luego subirá de 2 en 2
    while i < len(competidores):  # Bucle que contiene el combate de cada ronda y los prints correspondientes a cada una
      participante1 = competidores[i]  # Se define la variable "participante1" como el elemento "i" de la lista "competidores"
      participante2 = competidores[i+1]  # Se define la variable "participante2" como el elemento "i+1" de la lista "competidores"
      poder1 = calcular_poder_oculto(participante1)  # Se calcula el poder de "participante1" llamando y haciendo uso de la función "calcular_poder_oculto" previamente definida y se guarda este valor en la variable "poder1"
      poder2 = calcular_poder_oculto(participante2)  # Se calcula el poder de "participante2" llamando y haciendo uso de la función "calcular_poder_oculto" previamente definida y se guarda este valor en la variable "poder2"
      if poder1 > poder2:  # Se comprueba si el poder del primer participante es mayor que el del segundo, y de ser así, se ejecutan las siguientes 2 líneas
        ganadores.append(participante1)  # Se agrega el primer participante a la lista de ganadores
        print(f"{participante1} vs {participante2} -> Gana  {participante1}")  # Print correspondiente
      elif poder1 < poder2:  # De no ser verdadera la anterior comprobaión, se comprueba si el poder del primer participante es menor que el del segundo, y de ser así, se ejecutan las 2 siguientes líneas
        ganadores.append(participante2)  # Se agrega el segundo participante a la lista de ganadores
        print(f"{participante1} vs {participante2} -> Gana  {participante2}")  # Print correspondiente
      elif poder1 == poder2: # De no ser verdaderas ninguna de las comprobaciones anteriores, se comprueba si ambos poderes, el del primer y el del segundo participante, son iguales, y de ser así, se ejecuta una nueva comprobación escrita en las siguientes líneas
        if poder1 % 2 == 0 and poder2 % 2 == 0:  # Dado lo anterior, se comprueba si el poder del primer y del segundo participante son pares, y de ser así, se ejecutan las 2 siguientes líneas
          ganadores.append(participante1)  # Se agrega el primer participante a la lista de ganadores
          print(f"{participante1} vs {participante2} -> Gana  {participante1}")  # Print correspondiente
        else:  # De no ser verdadera la comprobación anterior, se ejecutan las 2 siguientes líneas
          ganadores.append(participante2)  # Se agrega al segundo participante a la lista de ganadores
          print(f"{participante1} vs {participante2} -> Gana  {participante2}")  # Print correspondiente
      i += 2  # Se suma 2 a "i" para poder realizar 'la siguiente ronda'.
    competidores = ganadores  # Tras completar todas las rondas (ya pasaron todos los participantes 1 vez), la lista de competidores es limpiada sobreescribiendo con la lista de los últimos ganadores. Se repite el bucle hasta que, tras este paso, quede solo 1 ganador
  
  print(f"Y el campeon y poseedor del título del mas fuerte bajo el cielo es: {competidores[0]} !!!!!")  # Print final que mustra al campeón y poseedor del título del más fuerte bajo el cielo

  # Código desechado
  """competidores = []
  
  for compet in mapa_de_competidores:
    competidores.append(compet)

  print(competidores)"""
  """competidor = {}
  
  i = 0
  for compet in mapa_de_competidores:
    print(compet)"""

parte_1()  # Ejecuta el código definido como el desarrollo de la parte 1 de la tarea
parte_2()  # Ejecuta el código definido como el desarrollo, en conjunto con la función anterior, de la parte 2 de la tarea
parte_3()  # Ejecuta el código definido como el desarrollo, en conjunto con las dos funciones anteriores, de la parte 3 de la tarea
