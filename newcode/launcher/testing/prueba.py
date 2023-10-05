props = "server.properties"

with open(props, "r") as lectura:
    lineas = lectura.readlines()
    
for i in range(0,len(lineas)-1):
    if lineas[i] == "online-mode=true" or lineas[i] == "online-mode=false":
        online = i
        print(online)