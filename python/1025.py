#  -*- coding: utf -8  -*-
case = 0
while True:
    index, q = [int(x) for x in input().split()]
    if index == q == 0:
        break

    case += 1
    marble = [0]

    while index > 0:
        index -= 1
        marble.append(int(input()))
    marble.sort()
    print("CASE# " + str(case) + ":")
    while q > 0:
        q -= 1
        index = int(input())
        if index in marble:
            print(str(index) + " found at " + str(marble.index(index)))
        else:
            print(str(index) + " not found")
