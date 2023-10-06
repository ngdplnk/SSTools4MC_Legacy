ok = False
while ok == False:
  try:
    ingreso = input()
    if ingreso[0].isspace():
      ok = False
    else:
      ingreso = float(ingreso)
      print(f"Se ha obtenido el número: {ingreso}")
      ok = True
  except ValueError:
    print("¡Error de ingreso!")