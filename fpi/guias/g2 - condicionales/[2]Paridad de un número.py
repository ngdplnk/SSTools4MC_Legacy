#input
number = input()
#process n output
try:
  number = int(number)
  if number%2 == 0:
    print("par")
  else:
    print("impar")
except ValueError:
  print("El número no es entero.")
