#input
ataqueraw = input()
#process
secciones = ataqueraw.split("*")
limpieza = []
for elementos in secciones:
  if elementos != "":
    limpieza.append(elementos)
for niccage in limpieza:
  if "N" in niccage:
    atk = niccage
    break
ataque = []
for letra in atk: # type: ignore
  ataque.append(letra)
abejitas = 0
for abejas in ataque:
  if "b" in abejas:
    abejitas += 1
  else:
    abejitas = abejitas
#output
if abejitas > 5:
  print(f"Nic Cage no lo consiguió, {abejitas} abejas pudieron superarlo")
else:
  print(f"Nic Cage ha sobrevivido al ataque de {abejitas} abejas")
