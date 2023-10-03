#input
name = input("Nombre: ")
homew1 = float(input("Tarea 1: "))
homew2 = float(input("Tarea 2: "))
homew3 = float(input("Tarea 3: "))
controls = float(input("Controles: "))
guides = float(input("Guías: "))
#process
finalmark = (round(homew1,1)*0.1)+(round(homew2,1)*0.2)+(round(homew3,1)*0.3)+(round(controls,1)*0.15)+(round(guides,1)*0.25)
#output
print(f"{name}, tu promedio es {round(finalmark,1)}")