#  -*- coding: utf -8  -*-

while True:
    line = int(input())
    if line == 0: break

    start = []
    for i in range(1, line + 1):
        start.append(i)

    res = []
    while len(start) > 1:
        res.append(start.pop(0))
        start.insert(len(start) - 1, start.pop(0))

    print("Discarded cards: " + str(res).replace("[","").replace("]",""))
    print("Remaining card: " + str(start[0]))
