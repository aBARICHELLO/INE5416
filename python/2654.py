#  -*- coding: utf -8  -*-
#wrong
lines = int(input())
columns = []
for i in range(0, lines):
    line, p, k, d = str(input()).split()
    p = int(p)
    k = int(k)
    d = int(d)
    columns.append([line, p, k, d])

powerful = {"name": "", "value": 0}
tie = []
for god in columns:
    if god[1] > powerful["value"]:
        powerful["name"] = god[0] #update name
        powerful["value"] = god[1]
    elif god[1] == powerful["value"]:
        tie.append(powerful)
        tie.append()
print(powerful["name"])
