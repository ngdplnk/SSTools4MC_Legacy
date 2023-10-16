#input
values1 = input("Ingrese los valores 1: ").split(" ")
values2 = input("Ingrese los valores 2: ").split(" ")
#variables
values = []
values_final = []
#process
def diferencia():
  global values
  global values_final
  for num in values1:
    if num not in values2:
      values.append(num)
  for numb in values2:
    if numb not in values1:
      values.append(numb)
  values = [int(numero) for numero in values]
  values = sorted(values,key=abs)
  values = [str(numer) for numer in values]
  value_display = " ".join(values)
  #output
  print(value_display)
#run
diferencia()