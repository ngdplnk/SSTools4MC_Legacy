# Input
filas = int(input("Ingrese la cantidad de filas: "))
colum = int(input("Ingrese la cantidad de columnas: "))
datos = input("Ingrese los datos: ")
elem = list(map(int,datos.split(",")))
# Process
matriz_orig = [elem[i*colum:i*colum+colum] for i in range(filas)]
matriz_reflvert = matriz_orig[::-1]
matriz_reflhori = [fila[::1][::-1] for fila in matriz_orig]
# Output
print(f"Matriz Original:\n{matriz_orig}\nMatriz Reflejada Verticalmente:\n{matriz_reflvert}\nMatriz Reflejada Horizontalmente:\n{matriz_reflhori}")

# CÓDIGO DESECHADO
"""fila = {}

i = 1
while i <= filas:
  s = 0
  while s < colum:
    fila[i].append(datos[0])
    datos = datos.pop(0)
    s += 1
  i += 1

print(fila)"""