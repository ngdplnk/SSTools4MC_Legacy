# Input
inpstring = input()
# Process
i = 0
while i < len(inpstring):
  salida = inpstring[:i] + inpstring[i].upper() + inpstring[i+1:]
  print(salida)  # Output
  i += 1