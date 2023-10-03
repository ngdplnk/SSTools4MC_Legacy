#input
algr = float(input("Ingrese los gramos por litro de sangre: "))
#process n output
if 0.0 <= algr < 0.1:
  print("BIEN")
elif 0.1 <= algr < 0.2:
  print("HAPPY")
elif 0.2 <= algr < 0.3:
  print("AL LÍMITE")
elif 0.3 <= algr < 0.5:
  print("BAJO LA INFLUENCIA DEL ALCOHOL")
elif 0.5 <= algr < 0.8:
  print("LLAMANDO AL EX")
elif 0.8 <= algr < 1.0:
  print("ESTADO DE EBRIEDAD")
elif 1.0 <= algr < 3.0:
  print("DANDO JUGO")
elif 3.0 <= algr < 4.0:
  print("ESCUCHO BORROSO")
elif 4.0 <= algr:
  print("¿HAY UN MÉDICO EN LA SALA?")
else:
  print("MEDICIÓN ERRONEA")
