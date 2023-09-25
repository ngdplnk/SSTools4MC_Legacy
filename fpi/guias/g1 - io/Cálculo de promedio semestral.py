# Escriba su código acá
n = input("Nombre: ")
t1 = float(input("Tarea 1: "))
t2 = float(input("Tarea 2: "))
t3 = float(input("Tarea 3: "))
c = float(input("Controles: "))
g = float(input("Guías: "))
nf = (round(t1,1)*0.1)+(round(t2,1)*0.2)+(round(t3,1)*0.3)+(round(c,1)*0.15)+(round(g,1)*0.25)
print(f"{n}, tu promedio es {round(nf,1)}")