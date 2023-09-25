#5 de Septiembre de 2023
"\n es para saltos de línea"
"\t es para tabulaciones"
#en el caso de querer hacer una suma de números asigandos a variables a partir de la entrada del usuario, se debe usar:
"a = int(input('texto de la entrada'))"
#no se recomienda hacer operaciones anidadas ya que si existe un error se puede debuggear de manera más simple (por líneas separadas)
#FUNCIONES
#la función print():
#- recibe elementos separados por comas
#- muestra el texto en pantalla
#- salida: se entrega none

#la función input():
#- recibe texto ingresado al usuario
#- espera a que el usuario presione ENTER y toma todo lo escrito por él
#- entrega solo valores de str()

#STRING
#str()
#se declaran con comillas simples o dobles, abriendo y cerrando siempre con las mismas comillas.
#no permite saltos de línea manuales, pero se puede usar \n
#para concatenar strings, se puede hacer uso de + (solo entre strings) o * (solo entre un string y un número)

#INDEXACIÓN
#se puede acceder a un carácter aprticular del string utilizando indexación
"texto = 'hola mundo'"
"print(texto[2])"
"'l'"

#tener en consideración que la tabla de valores manejada por python inicia desde 0, por lo que las posiciones se cuentan desde ese número
#no se pueden indexar números int() ni float()
#los strings se pueden indexar en valores negativos, partiendo como [-1] la última letra de este, hacia atrás

#MÉTODOS DE LOS STRINGS
"<string>.<método>(<parámetros>)"
#un ejemplo de esto puede ser
"t = 'hola'"
"print(t.upper())"
"'HOLA'"

#.lower devuelve el string en minúsculas
#.upper devuelve el string en mayúsculas
#.islower devuelve True si todas las letras son minúsculas
#.isupper devuelve True si todas las letras son mayúsculas
#.isdigit devuelve True si el string está compuesto sólo por números ENTEROS POSITIVOS

#6 de Septiembre de 2023

#PREGUNTA 3 TEST DE ENTRADA
#a = 8
#if a % 3 == 0:
    #print("a es múltiplo de 3")
#if a % 2 == 0:
    #print("a es par")
#else:
    #print("a no es múltiplo de 3 ni divisible por 2")

#OPERADORES DE COMPARACIÓN
#MAYOR >
#MAYOR O IGUAL >=
#MENOR <
#MENOR O IGUAL <=
#IGUAL ==
#DISTINTO !=

#OPERADORES LÓGICOS
#La negación "not" invierte el valor de verdad
"not 50 > 4 -> not True -> False"
#La conjunción "and" resulta verdadero si y solo si todas las sub-expresiones son verdaderas
"x > y and y <= z"
#La disyunción "or" resulta verdadero si al menos una de las sub-expresiones es verdadera
"x != y or x <= z or y < z"

#se recomienda utilizar "and" en vez de usar comparaciones triples:
"a < b < c queda mejor como a < b and b < c"
#de esta forma no hay ambigüedades al momento de realizar las comparaciones

#SENTECIA IF
#condiciona la ejecución de un bloque de sentencias a que una expresiín booleana retorne True
#puede ser utilizado como "if", "if-else", "if-elif-else"


#LAB PROGRAMACIÓN 25-09
#13.1 Fortalecer la resiliencia y la capacidad de adaptación a los riesgos relacionados con el clima y los desastres naturales en todos los países
#13.2 Incorporar medidas relativas al cambio climático en las políticas, estrategias y planes nacionales
#13.3 Mejorar la educación, la sensibilización y la capacidad humana e institucional respecto de la mitigación del cambio climático, la adaptación a él, la reducción de sus efectos y la alerta temprana
#13.a Cumplir el compromiso de los países desarrollados que son partes en la Convención Marco de las Naciones Unidas sobre el Cambio Climático de lograr para el año 2020 el objetivo de movilizar conjuntamente 100.000 millones de dólares anuales procedentes de todas las fuentes a fin de atender las necesidades de los países en desarrollo respecto de la adopción de medidas concretas de mitigación y la transparencia de su aplicación, y poner en pleno funcionamiento el Fondo Verde para el Clima capitalizándolo lo antes posible
#13.b Promover mecanismos para aumentar la capacidad para la planificación y gestión eficaces en relación con el cambio climático en los países menos adelantados y los pequeños Estados insulares en desarrollo, haciendo particular hincapié en las mujeres, los jóvenes y las comunidades locales y marginadas
#* Reconociendo que la Convención Marco de las Naciones Unidas sobre el Cambio Climático es el principal foro intergubernamental internacional para negociar la respuesta mundial al cambio climático.

"Tarea: diferencia entre meta y objetivo"

#Determinar a cuál de las metas apuntar la solución
"objetivo 13.3"

#Especificar población objetivo
"estudiantes de educación básica y media, de 10 a 18 años"

#Elaborar un plan de acción (de 5 a 15 acciones) a implementar para entender el problema
"conocer el entorno educativo y su aporte contra el cambio climático; conocer el perfil tecnológico de los estudiantes; realizar un test de conocimiento sobre el cambio climático a los estudiantes; investigar situación comunal con respecto al cambio climático; analizar los datos para poder adaptar nuestro programa y realizar un piloto"
