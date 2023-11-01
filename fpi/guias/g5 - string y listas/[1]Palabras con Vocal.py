#Entrada
lista = []
while len(lista) < 10:
    lista.append(input("Ingrese una palabra: "))
#Salida
i = 0
while i < len(lista):
  if lista[i][0].lower() in "áaeéiíoóuú":
    print(lista[i])
  i += 1