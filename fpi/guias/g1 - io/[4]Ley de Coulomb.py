#input
charge1 = float(input())
charge2 = float(input())
distance = float(input())
#process
coulomb = 8.987 * (10 ** 9)
force = coulomb * ((charge1 * charge2) / (distance ** 2))
#output
print(round(force, 2))