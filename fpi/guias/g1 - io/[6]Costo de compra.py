
n1 = input()
p1 = round((float(input())),2)
c1 = round((float(input())),0)
n2 = input()
p2 = round((float(input())),2)
c2 = round((float(input())),0)
pf1 = round((p1*c1),2)
pf2 = round((p2*c2),2)
pt = pf1+pf2
ivat = pt-(pt/1.19)
print(f"El total para {n1} es {pf1}.\nEl total para {n2} es {pf2}.\nEl valor total de la compra es {round(pt,2)}, con {round(ivat,2)} en impuestos.")