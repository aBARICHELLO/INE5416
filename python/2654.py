#  -*- coding: utf -8  -*-
lines = int(input())
columns = []
for i in range(0, lines):
    line, p, k, d = str(input()).split()
    p = int(p)
    k = int(k)
    d = int(d)
    columns.append([line, p, k, d])

print(columns)