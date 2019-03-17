#  -*- coding: utf -8  -*-
lines = int(input())
columns = []
for i in range(0, lines):
    line, p, k, d = str(input()).split()
    p = int(p)
    k = int(k)
    d = int(d)
    columns.append([line, p, k, d])

def power(e):
    return int(e[1])

def killed(e):
    return int(e[2])

def death(e):
    return int(e[3])

columns.sort(reverse=True, key=power)
print(columns[0][0])
