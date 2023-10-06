#initial vars
poder = 1
listo = False
#loop
while listo == False:
  chat = input() #input
  #process
  if chat == "LEEEEEEEEEROY JENKINS!":
    print(f"AL ATAQUE!!!, CON PODER DE: {poder}") #output
    listo = True
  else:
    poder = poder*2 