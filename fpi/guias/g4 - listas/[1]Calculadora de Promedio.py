#input
numbers = input().split(";")
#process
numbers = [int(x) for x in numbers]
mult = 1
for n in numbers:
  mult *= n
media_geo = round((mult**(1/len(numbers))),2)
#output
print(f"El promedio es {media_geo}.")


"""
# Procesamiento
total = 0

for number in numbers:
    total += number

mean = total / len(numbers)

# Salida
print("El promedio es " + str(mean) + ".")
"""