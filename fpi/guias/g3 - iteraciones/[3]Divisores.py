#input
numero = int(input())
divisores = []
#process
for calc in range(1,numero+1):
    if numero % calc == 0:
      divisores.insert(0,calc)
for div in divisores:
  print(div) #output