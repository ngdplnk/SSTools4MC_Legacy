#input
inp = input("Operación:\n")
#process
p1 = inp.split(" ")
p2 = p1[0]
p3 = p1[1]
operacion = p2[0]
if "-" in p2[1]:
  op1 = p2[1]+p2[2:]
  op1 = int(op1)
else:
  op1 = p2[1:]
  op1 = int(op1)
if "-" in p3[0]:
  op2 = p3[0]+p3[1:]
  op2 = int(op2)
else:
  op2 = p3[0:]
  op2 = int(op2)
#output
if "+" in operacion:
  print(op1+op2)
elif "-" in operacion and "-" in p3[0]:
  print(f"-{op1-op2}")
elif "-" in operacion:
  print(op1-op2)
elif "*" in operacion:
  print(op1*op2)
elif "/" in operacion:
  print(op1//op2)
else:
  print("Operación inválida")
    
