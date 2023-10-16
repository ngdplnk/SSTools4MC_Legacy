#prices
PRECIO_POR_RANGO = [5, 10, 40, 90, 160, 250, 360, 490, 640, 810]
#input
hechizos = input()
#process
hechizos = hechizos.split(", " and ",")
hechizos = [int(hechizo) for hechizo in hechizos]
i = 0
po = 15
while i < len(hechizos):
  po += (hechizos[i] * PRECIO_POR_RANGO[i])
  i += 1
#output
print(f"El libro tiene un costo de {po} po.")