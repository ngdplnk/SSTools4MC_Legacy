#nefibonacci function
def nega(inp):
  if inp == 1:
    return 1
  elif inp == 0:
    return 0
  elif inp < 0:
    result = [0] * (abs(inp)+1)
    result[0] = 0
    result[1] = 1
    for i in range(2,abs(inp)+1):
      result[i] = result[i-2] - result[i-1]
    return result[-1]
#input
inp = int(input())
#process
final = nega(inp)
#output
print(final)