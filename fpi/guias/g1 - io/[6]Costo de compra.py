#input
name1 = input()
price1 = round((float(input())),2)
qty1 = round((float(input())),0)
name2 = input()
price2 = round((float(input())),2)
qty2 = round((float(input())),0)
#process
finalprice1 = round((price1*qty1),2)
finalprice2 = round((price2*qty2),2)
totalprice = finalprice1+finalprice2
totaliva = totalprice-(totalprice/1.19)
#output
print(f"El total para {name1} es {finalprice1}.\nEl total para {name2} es {finalprice2}.\nEl valor total de la compra es {round(totalprice,2)}, con {round(totaliva,2)} en impuestos.")