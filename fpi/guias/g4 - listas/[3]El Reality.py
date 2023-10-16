#input
name_list = input().split(",")
#variables
vote_count = {}
vote = []
votes = []
#process
def votings():
  global max_votes
  global number
  for name in name_list:
    vote.append(input().split(f"{name} vota por "))
  c = 0
  while c < len(vote):
    vote[c].pop(0)
    c += 1
  m = 0
  while m < len(vote):
    votes.append(vote[m][0])
    m += 1
  for new in votes:
    vote_count[new] = 0
  for asd in votes:
    vote_count[asd] += 1
  max_votes = max(vote_count,key=vote_count.get) # type: ignore
  number = vote_count[max_votes]
  if list(vote_count.values()).count(number) > 1:
    max_votes = next(part for part in name_list if vote_count[part] == number)
  #output
  print(f"Con {number} votos, la/el participante {max_votes} deja la casa estudio!")
#run
votings()


"""i = 0
votes = []
while i < len(name_list):
  votes.append(input().split(" vota por "))
  i += 1
print(votes)"""