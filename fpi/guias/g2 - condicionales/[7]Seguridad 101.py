  lenerr = True
for vermin in inp:
  if vermin.islower():
    min = True
    break
  else:
    min = False
for vermay in inp:
  if vermay.isupper():
    may = True
    break
  else:
    may = False
for verletra in inp:
  if verletra.isalpha():
    letra = True
    break
  else:
    letra = False
for verdig in inp:
  if verdig.isdigit():
    dig = True
    break
  else:
    dig = False
for vercoma in inp:
  if vercoma == ",":
    coma = True
    break
  else:
    coma = False
for verpyc in inp:
  if verpyc == ";":
    pyc = True
    break
  else:
    pyc = False
if lenerr == True:
  res.append("Debe tener 8 caracteres.")
elif min == False:
  res.append("Debe tener al menos una minúscula.")
elif may == False:
  res.append("Debe tener al menos una mayúscula.")
elif letra == False:
  res.append("Debe tener al menos una letra.")
elif dig == False:
  res.append("Debe tener al menos un dígito.")
elif coma == False:
  res.append("Debe tener al menos una coma.")
elif pyc == False:
  res.append("Debe tener al menos un punto y coma.")
elif 0 < len(res):
  for testing in res:
    print(test)
else:
  print("Su password cumple con todas las reglas.")

'''
