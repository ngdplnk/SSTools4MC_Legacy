#input
altura = int(input("Ingrese la altura del cilindro: "))
radio = int(input("Ingrese el radio de la base del cilindro: "))
#process
area = (2*3.14*(radio**2))+(2*3.14*radio*altura)
areabase = 3.14*(radio**2)
areamanto = 2*3.14*radio*altura
area = 2*areabase+areamanto
#output
print(f"(TEST 30pts)\nEl área del cilindro es: {area}")