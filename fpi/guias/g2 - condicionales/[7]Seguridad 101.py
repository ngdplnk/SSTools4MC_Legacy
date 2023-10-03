#input
inp = input()
#list
lista = []
#processing
#LENGHT
if len(inp) == 8:
  lenerr = False
else:
  lenerr = True
#LOWERCASE
for minusc in inp:
  if minusc.islower():
    minerr = False
    break
  else:
    minerr = True
#UPPERCASE
for mayusc in inp:
  if mayusc.isupper():
    mayerr = False
    break
  else:
    mayerr = True
#LETTER
for letra in inp:
  if letra.isalpha():
    letraerr = False
    break
  else:
    letraerr = True
#DIGIT
for digit in inp:
  if digit.isdigit():
    digiterr = False
    break
  else:
    digiterr = True
#COMMA
for coma in inp:
  if coma == ",":
    comaerr = False
    break
  else:
    comaerr = True
#DOTCOMMA
for puntocoma in inp:
  if puntocoma == ";":
    puntocomaerr = False
    break
  else:
    puntocomaerr = True
#checking
if minerr == True:
  lista.append("Debe tener al menos una minúscula.")
if mayerr == True:
  lista.append("Debe tener al menos una mayúscula.")
if letraerr == True:
  lista.append("Debe tener al menos una letra.")
if digiterr == True:
  lista.append("Debe tener al menos una dígito.")
if comaerr == True:
  lista.append("Debe tener al menos una coma.")
if puntocomaerr == True:
  lista.append("Debe tener al menos una punto y coma.")
if lenerr == False and minerr == False and mayerr == False and letraerr == False and digiterr == False and comaerr == False and puntocomaerr == False:
  relleno = "."
#output
if lenerr == True:
  print("Debe tener 8 caracteres.")
elif len(lista) > 0:
  for errores in lista:
    print(errores)
else:
  print("Su password cumple con todas las reglas.")


'''
inp = input()

min = False
may = False
letra = False
dig = False
coma = False
pyc = False
res = []

if len(inp) == 8:
  lenerr = False
else:
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