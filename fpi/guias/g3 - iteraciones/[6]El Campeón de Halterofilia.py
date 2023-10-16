#input
N = int(input())
#variables
best_competitor = 1
best_score = 0
#process
for i in range(1,N+1):
  snatch_scores = [int(input()) for _ in range(3)]
  clean_and_jerk_scores = [int(input()) for _ in range(3)]
  best_snatch = max(snatch_scores)
  best_clean_and_jerk = max(clean_and_jerk_scores)
  total_score = best_snatch+best_clean_and_jerk
  if total_score > best_score:
    best_competitor = i
    best_score = total_score
#output
print(f"El competidor {best_competitor} ha ganado con {best_score} kg.")

"""
compet = int(input())
punt = []
punt2 = []
puntmax = 3
mpuntos = 0
win = 0

for i in range(compet):
  snatch = [int(input()) for _ in range(3)]
  clandjerk = [int(input()) for _ in range(3)]

i = 0
while i < compet * 3:
  punt.append(int(input()))
  i += 1

for x in range(0,len(punt),puntmax):
  puntos = punt[x:x + puntmax]
  punt2.append(puntos)

for m, competidor in enumerate(punt2,start=1):
  snatch = competidor[0:3]
  clandjerk = competidor[3:]
  puntaje = sum(snatch) + sum(clandjerk)
  if puntaje > mpuntos:
    mpuntos = puntaje
    win = m

print(f"El competidor {win} ha ganado con {mpuntos} kg.")



--------



compet = int(input())
puntajes = []
mpuntos = 0
ganador = 0

for i in range(compet):
  snatch = [int(input()) for _ in range(3)]
  clandjerk = [int(input()) for _ in range(3)]

  

i = 0
while i < compet*3:
  punt.append(int(input()))
  i += 1
for x in range(0,len(punt),puntmax):
  puntos = punt[x:x+puntmax]
  punt2.append(puntos)

mpuntos = 0
win = 0
for m, competidor in enumerate(punt2,start=1):
  snatch = competidor[0:3]
  clandjerk = competidor[3:]
  puntaje = sum(snatch)+sum(clandjerk)
  if puntaje > mpuntos:
    mpuntos = puntaje
    win = m
print(f"El competidor {win} ha ganado con {mpuntos} kg.")
"""