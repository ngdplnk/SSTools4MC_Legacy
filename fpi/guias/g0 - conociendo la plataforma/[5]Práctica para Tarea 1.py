#ESTE CÓDIGO CORRESPONDE A LA SOLUCIÓN ENTREGADA EN REPLIT
#NO ES DE MI AUTORÍA, CRÉDITOS A QUIEN CORRESPONDAN

# Constantes
EXTRA_TAX = ['vinos', 'cigarros', 'bebidas alcohólicas', 'cosas de furros']

# Entrada
# Petición y Separación de productos
bought_products = []
i = 1
product = input()
while product != "FIN LECTURA":
    line = product.split(',')
    if len(line) != 4:
        print("Error de ingreso en producto:", i)
    else:
        line[2] = int(line[2]) # type: ignore
        line[3] = int(line[3]) # type: ignore
        if line[3] < 1:
            print("Error de ingreso en producto:", i)
        else:
            bought_products.append(line)
        
    i += 1
    product = input()
    
# Petición y Separación de descuentos
discounts = []
discount_cats = []
i = 1
discount = input()
while discount != "FIN DESCUENTOS":
    line = discount.split(',')
    if len(line) != 3:
        print("Error de ingreso en descuento:", i)
    else:
        line[2] = int(line[2]) # type: ignore
        if not 0 <= line[2] <= 99:
            print("Error de ingreso en descuento:", i)
        else:
            discounts.append(line)
            discount_cats.append(line[1])
    
    i += 1
    discount = input()

# Procesamiento
# Cálculo de total
total_discounts = [0.]*len(discount_cats)
invoice_total = 0
for product in bought_products:
    cat = product[1]
    discount_value = 0.
    i = 0
    cat_index = -1
    while i < len(discounts) and cat_index == -1:
        discount = discounts[i]
        if discount[0] == "por producto" and discount[1] == cat:
            discount_value = discount[2]/100.
            cat_index = discount_cats.index(cat)
        else:
            i += 1
    
    price = product[2] * product[3]
    
    if cat in EXTRA_TAX:
        tax = 1.25
    else:
        tax = 1.2
    
    price *= tax
    
    if cat_index != -1:
        price_discount = price * discount_value
        total_discounts[cat_index] += price_discount
    else:
        price_discount = 0
    
    invoice_total += price - price_discount
    
for discount in discounts:
    if discount[0] == "al total":
        cat_index = discount_cats.index(discount[1])
        price_discount = invoice_total*(discount[2]/100.)
        
        invoice_total -= price_discount
        total_discounts[cat_index] = price_discount

# print([f"{c}, {d}" for c, d in zip(discount_cats, total_discounts)])
# print(invoice_total)
for i in range(len(discount_cats)):
    print(f"Con el descuento '{discount_cats[i]}', te ahorraste ${total_discounts[i]}")

print(f'El total de su boleta es de ${invoice_total}, impuestos incluidos')
print(f'Esta compra acumula {int(round(invoice_total/100))} oso puntos')
print('Gracias, vuelva prontos')
