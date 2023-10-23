# FUNDAMENTOS DE PROGRAMACIÓN PARA INGENIERÍA/FUNDAMENTOS DE COMPUTACIÓN Y PROGRAMACIÓN
# SECCIÓN DEL CURSO: 0-L-8  
# PROFESOR DE TEORÍA: ALEJANDRO CISTERNA  
# PROFESOR DE LABORATORIO: CÉSAR RIVERA
#  
# AUTOR  
# NOMBRE: Nicolás Lucas Anselmo Valdés Rodríguez  
# RUT: 21.756.280-5
# CARRERA: Ingeniería Civil Informática  
# Programa que dado un número en una base numérica, indica si ese número es o no pandigital en su base.

# INPUT
datos1 = input().split(",")  # Input de los números y su base numérica, que se separan por una ","
datos = [dato.split(" ") for dato in datos1]  # Se separan los números de su base dentro de la lista "datos"

# FUNCIONES PARA CADA BASE
# Cada una verifica si existen en el número los elementos necesarios o no para que este sea pandigital. Devuelve "True" si el número de ingreso es pandigital y de lo contrario devuelve "False".
def base_2(data):
  if "0" in data:
    if "1" in data:
      return(True)
    else:
      return(False)
  else:
    return(False)

def base_3(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        return(True)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_4(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          return(True)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_5(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            return(True)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_6(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              return(True)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_7(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                return(True)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_8(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  return(True)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_9(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    return(True)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_10(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      return(True)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_11(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      if "A" in data:
                        return(True)
                      else:
                        return(False)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_12(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      if "A" in data:
                        if "B" in data:
                          return(True)
                        else:
                          return(False)
                      else:
                        return(False)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_13(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      if "A" in data:
                        if "B" in data:
                          if "C" in data:
                            return(True)
                          else:
                            return(False)
                        else:
                          return(False)
                      else:
                        return(False)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_14(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      if "A" in data:
                        if "B" in data:
                          if "C" in data:
                            if "D" in data:
                              return(True)
                            else:
                              return(False)
                          else:
                            return(False)
                        else:
                          return(False)
                      else:
                        return(False)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_15(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      if "A" in data:
                        if "B" in data:
                          if "C" in data:
                            if "D" in data:
                              if "E" in data:
                                return(True)
                              else:
                                return(False)
                            else:
                              return(False)
                          else:
                            return(False)
                        else:
                          return(False)
                      else:
                        return(False)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

def base_16(data):
  if "0" in data:
    if "1" in data:
      if "2" in data:
        if "3" in data:
          if "4" in data:
            if "5" in data:
              if "6" in data:
                if "7" in data:
                  if "8" in data:
                    if "9" in data:
                      if "A" in data:
                        if "B" in data:
                          if "C" in data:
                            if "D" in data:
                              if "E" in data:
                                if "F" in data:
                                  return(True)
                                else:
                                  return(False)
                              else:
                                return(False)
                            else:
                              return(False)
                          else:
                            return(False)
                        else:
                          return(False)
                      else:
                        return(False)
                    else:
                      return(False)
                  else:
                    return(False)
                else:
                  return(False)
              else:
                return(False)
            else:
              return(False)
          else:
            return(False)
        else:
          return(False)
      else:
        return(False)
    else:
      return(False)
  else:
    return(False)

# PROCESS
# Bucle de While que verifica cada número dependiendo de su base entregada de la lista "datos", llamando a la función correspondiente previamente definida y luego muestra si este es pandigital o no. Este proceso se repite hasta pasar por todos los números ingresados incialmente en "datos1"
i = 0
while i < len(datos1):
  if datos[i][1] == "2":
    if base_2(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_2(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "3":
    if base_3(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_3(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "4":
    if base_4(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_4(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "5":
    if base_5(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_5(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "6":
    if base_6(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_6(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "7":
    if base_7(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_7(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "8":
    if base_8(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_8(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "9":
    if base_9(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_9(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "10":
    if base_10(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_10(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "11":
    if base_11(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_11(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "12":
    if base_12(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_12(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "13":
    if base_13(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_13(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "14":
    if base_14(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_14(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "15":
    if base_15(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_15(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1
  elif datos[i][1] == "16":
    if base_16(datos[i][0]) == True:
      print(f"{datos1[i]} es pandigital")
    elif base_16(datos[i][0]) == False:
      print(f"{datos1[i]} no es pandigital")
    i += 1

# CÓDIGO DESECHADO
"""for datito in datos:
  if datito[1] == "2":
    if base_2(datito[0]) == True:
      print("es pandigital")
    elif base_2(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "3":
    if base_3(datito[0]) == True:
      print("es pandigital")
    elif base_3(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "4":
    if base_4(datito[0]) == True:
      print("es pandigital")
    elif base_4(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "5":
    if base_5(datito[0]) == True:
      print("es pandigital")
    elif base_5(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "6":
    if base_6(datito[0]) == True:
      print("es pandigital")
    elif base_6(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "7":
    if base_7(datito[0]) == True:
      print("es pandigital")
    elif base_7(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "8":
    if base_8(datito[0]) == True:
      print("es pandigital")
    elif base_8(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "9":
    if base_9(datito[0]) == True:
      print("es pandigital")
    elif base_9(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "10":
    if base_10(datito[0]) == True:
      print("es pandigital")
    elif base_10(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "11":
    if base_11(datito[0]) == True:
      print("es pandigital")
    elif base_11(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "12":
    if base_12(datito[0]) == True:
      print("es pandigital")
    elif base_12(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "13":
    if base_13(datito[0]) == True:
      print("es pandigital")
    elif base_13(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "14":
    if base_14(datito[0]) == True:
      print("es pandigital")
    elif base_14(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "15":
    if base_15(datito[0]) == True:
      print("es pandigital")
    elif base_15(datito[0]) == False:
      print("no es pandigital")
  elif datito[1] == "16":
    if base_16(datito[0]) == True:
      print("es pandigital")
    elif base_16(datito[0]) == False:
      print("no es pandigital")"""