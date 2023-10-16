#input
students = input("Ingrese los datos de los alumnos: ").split(";")
#dictionary
best_students = {}
#process
for student in students:
  data = student.split(",")
  rut = data[0]
  edad = int(data[1])
  carrera = data[2]
  notas = [float(nota) for nota in data[3:6]]
  promedio = round(sum(notas) / len(notas),1)
  if carrera not in best_students or promedio > best_students[carrera][1]:
    best_students[carrera] = (rut, promedio)
#output
for carrera, (rut, promedio) in best_students.items():
  print(f"{carrera}: {rut} ({promedio})")


""" if carrera in best_students:
    if promedio > best_students[carrera][0]:
      best_students[carrera] = (promedio, rut)
    else:
      best_students[carrera] = (promedio, rut)
for carrera in students:
  data = carrera.split(",")
  carrera = data[2]
  if carrera in best_students:
    promedio, rut = best_students[carrera]
    print(f"{carrera}: {rut} ({promedio})")"""



"""carreras = {}

for student in students:
  data = student.split(",")
  rut, edad, carrera, nota1, nota2, nota3 = data
  prom = round(((float(nota1)+float(nota2)+float(nota3))/3),1)
  if carrera in carreras:
    if prom > carreras[carrera][0]:
      carreras[carrera] = (prom, rut)
    else:
      carreras[carrera] = (prom, rut)

#SOLUCIONAR PROBLEMA DEBAJO DE ESTE COMENTARIO
#AL PARECER HAY QUE CREAR UN NUEVO STRING CON ESTA INFORMACIÓN QUE SE ESTARÍA IMPRIMIENDO EN EL LOOP
#NO SÉ CUÁL SEA EL PROBLEMA EN REALIDAD, PERO ESPERO PODER ARREGLARLO MAÑANA
#SEGÚN LO QUE PUDE HACER HASTA AHORA Y SEGÚN LO QUE CREO, DEBERÍA FUNCIONAR, PERO NO ES ASÍ :C
for carrera, (prom, rut) in carreras.items():
  print(f"{carrera}: {rut} ({prom})")
"""
"""i = 0
while i < len(students_input):
  data_input = students_input[i].split(",")

for data in data_input:
  rut = data_input[data][0]

print(rut)"""