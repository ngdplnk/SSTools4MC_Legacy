'''
act = round((float(input("Ingrese el promedio de actividades en clases: "))),1)
gui = round((float(input("Ingrese el promedio de guías: "))),1)
t1 = round((float(input("Ingrese la nota de la tarea 1: "))),1)
t2 = round((float(input("Ingrese la nota de la tarea 2: "))),1)
t3 = round((float(input("Ingrese la nota de la tarea 3: "))),1)
ch = input("Tienes falta al código de honor (YES/NO): ")

promedio = round(((act*0.15)+(gui*0.25)+(t1*0.1)+(t2*0.2)+(t3*0.3)),1)

if ch == "YES" or ch == "yes":
  

'''
#input
activities = float(input("Ingrese el promedio de actividades en clases: "))
guides = float(input("Ingrese el promedio de guías: "))
hw1 = float(input("Ingrese la nota de la tarea 1: "))
hw2 = float(input("Ingrese la nota de la tarea 2: "))
hw3 = float(input("Ingrese la nota de la tarea 3: "))
honorcode = input("Tienes falta al código de honor (YES/NO): ")
#process
total = (activities * 0.15) + (guides * 0.25) + (hw1 * 0.1) + (hw2 * 0.2) + (hw3 * 0.3)
#output
if total >= 3.95:
  total = round(total,1)
  print(f"Aprobado/a {total}")
elif 2.94 < total < 3.95 and honorcode == "NO":
  exam = ((3.95 - (total * 0.6))/0.4)+0.05
  exam = round(exam,1)
  print(f"Debe rendir examen y necesita al menos un {exam}")
elif 2.94 < total < 3.95 and honorcode == "YES":
  total = round(total,1)
  print(f"Reprobado/a {total}")
elif total > 3.94:
  total = round(total,1)
  print(f"Aprobado/a {total}")
else:
  total = round(total,1)
  print(f"Reprobado/a {total}")
