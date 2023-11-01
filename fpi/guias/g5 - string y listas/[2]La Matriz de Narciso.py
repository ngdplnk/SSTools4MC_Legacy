# Input
a1 = int(input("Ingrese un número: "))
a2 = int(input("Ingrese un número: "))
a3 = int(input("Ingrese un número: "))
b1 = int(input("Ingrese un número: "))
b2 = int(input("Ingrese un número: "))
b3 = int(input("Ingrese un número: "))
c1 = int(input("Ingrese un número: "))
c2 = int(input("Ingrese un número: "))
c3 = int(input("Ingrese un número: "))
# Matrix Process
matriz_orig = [[a1,a2,a3],[b1,b2,b3],[c1,c2,c3]]
matriz_refl = [[c1,c2,c3],[b1,b2,b3],[a1,a2,a3]]
matriz_reflver = [[a3,a2,a1],[b3,b2,b1],[c3,c2,c1]]
# Output
print(f"Matriz Original:\n{matriz_orig}\nMatriz Reflejada Verticalmente:\n{matriz_refl}\nMatriz Reflejada Horizontalmente:\n{matriz_reflver}")