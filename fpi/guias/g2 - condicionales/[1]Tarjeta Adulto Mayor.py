#input
gender = input("Ingrese su género: ")
age = int(input("Ingrese su edad: "))
#process n output
if gender == "Mujer" or "mujer":
  elderly = age >= 60
  if elderly == True:
    print("Ud. califica para la tarjeta de tercera edad.")
  else:
    print("Ud. no califica para la tarjeta de tercera edad.")
else:
  elderly = age >= 65
  if elderly == True:
    print("Ud. califica para la tarjeta de tercera edad.")
  else:
    print("Ud. no califica para la tarjeta de tercera edad.")