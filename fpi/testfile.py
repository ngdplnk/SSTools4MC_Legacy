def nega(inp):
  if inp == 1:
    return 1
  elif inp == 0:
    return 0
  elif inp < 0:
    return nega(inp + 2) - nega(inp + 1)

inp = int(input())
final = nega(inp)
print(final)