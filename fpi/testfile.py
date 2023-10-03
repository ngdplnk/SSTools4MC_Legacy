#input
number = input()
#process n output
if number.isdigit():
  number = float(number)
  if number%2 == 0:
    print("par")
  else:
    print("impar")
else:
  print("El número no es entero.")