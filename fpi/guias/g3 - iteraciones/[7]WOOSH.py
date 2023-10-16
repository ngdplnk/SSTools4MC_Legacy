#def hechizo process
def verhechizo(hechizo):
  vocales = 'aeiou'
  hechizo = hechizo.replace(" ","").lower()
  hechizovocales = "".join(v for v in hechizo if v in vocales)
  if hechizovocales == "".join(sorted(hechizovocales)):
    return "pulentus"
  elif hechizovocales == "".join(sorted(hechizovocales,reverse=True)):
    return "bacanus"
  else:
    return "cumast"
#input
hechizo = input()
#process
result = verhechizo(hechizo)
#output
print(result)


"""
def ver_hechizo(hechizo):
  vocals = "aeiou"
  hechizo = hechizo.replace(" ","").lower()
  vocalshechizo = set(v for v in hechizo if v in vocals)
  if vocalshechizo == sorted(vocalshechizo,reverse=True):
    return "bacanus"
  if set(vocalshechizo) == set(vocals):
    return "pulentus"
  else:
    return "cumast"
hechizo = input()
result = ver_hechizo(hechizo)
print(result)
"""