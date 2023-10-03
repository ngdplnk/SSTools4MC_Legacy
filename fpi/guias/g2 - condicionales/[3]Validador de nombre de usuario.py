#input
name = input("Usuario: ")
#process n output
if 6 >= len(name) or 32 <= len(name):
  print("Inválido.")
else:
  if name[0].isupper() and name[1:].islower():
    print("Válido.")
  else:
    print("Inválido.")
