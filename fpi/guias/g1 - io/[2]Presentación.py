#input
namelastname = input("Nombre: ")
birth = int(input("Año de nacimiento: "))
#process
name = namelastname.split(" ")
age = 2023 - birth
#output
print(f"Hola, {name[0]}. Tienes {age} años.")