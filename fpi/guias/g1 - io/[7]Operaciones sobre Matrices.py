#INPUT
#matrix1
print("Matriz 1:")
matrix1_a = float(input())
matrix1_b = float(input())
matrix1_c = float(input())
matrix1_d = float(input())
#matrix2
print("Matriz 2:")
matrix2_a = float(input())
matrix2_b = float(input())
matrix2_c = float(input())
matrix2_d = float(input())
#PROCESS
#sum
sum_a = round((matrix1_a+matrix2_a),2)
sum_b = round((matrix1_b+matrix2_b),2)
sum_c = round((matrix1_c+matrix2_c),2)
sum_d = round((matrix1_d+matrix2_d),2)
#mult
mult_a = round(((matrix1_a*matrix2_a)+(matrix1_b*matrix2_c)),2)
mult_b = round(((matrix1_a*matrix2_b)+(matrix1_b*matrix2_d)),2)
mult_c = round(((matrix1_c*matrix2_a)+(matrix1_d*matrix2_c)),2)
mult_d = round(((matrix1_c*matrix2_b)+(matrix1_d*matrix2_d)),2)
#det
det1 = round(((matrix1_a*matrix1_d)-(matrix1_c*matrix1_b)),2)
det2 = round(((matrix2_a*matrix2_d)-(matrix2_c*matrix2_b)),2)
#OUTPUT
print(f"La suma de las matrices es\n{sum_a} {sum_b}\n{sum_c} {sum_d}\nLa multiplicación de las matrices es\n{mult_a} {mult_b}\n{mult_c} {mult_d}\nLos determinantes de las matrices son {det1} y {det2}")