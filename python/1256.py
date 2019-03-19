# -*- coding: utf-8 -*-

inp = int(input())
skip = False
for i in range(0, inp):
    inp -= 1
    m, c = [int(x) for x in input().split()]

    _hash = {str(x) : [] for x in range(m)}

    entr = [int(x) for x in input().split()]

    if skip:
        print()

    for i in entr:
        rem = i % m
        _hash[str(rem)].append(int(i))

    for i in _hash:
        print("%d -> " % int(i), end = "")
        for j in _hash[i]:
            print("%d -> " % j, end = "")
        print("\\")
    skip = True
