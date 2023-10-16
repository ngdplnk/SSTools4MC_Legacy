#variables
check = False
serie = []
uncomplete = False
#process
def verify_serie():
  global check
  global serie
  global uncomplete
  while check == False:
    #input
    serie.append(input("Ingrese un número entero o ingrese 'FIN' para terminar: "))
    if "FIN" in serie:
      check = True
      serie.remove("FIN")
  serie = [int(numero) for numero in serie]
  i = min(serie)
  while i < max(serie):
    if i not in serie:
      uncomplete = True
      break
    i +=1
  #output
  if uncomplete == False:
    print("Serie completa")
  else:
    print("Serie incompleta")
#run
verify_serie()
