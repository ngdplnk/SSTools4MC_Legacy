#input
number_input = input("Ingrese los números separados por espacios: ").split(" ")
number_input = [int(number) for number in number_input]
distance_input = int(input("Ingrese la distancia: "))
#variable
pairs = 0
#process
for i in number_input:
  for x in number_input:
    if abs(i - x) == distance_input:
      pairs +=1
#output
print(int(pairs/2))