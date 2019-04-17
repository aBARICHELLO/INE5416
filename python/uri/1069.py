#  -*- coding: utf -8  -*-
cases = int(input())
for i in range(0, cases):
    inp = str(input())
    inp = inp.replace(".", "")
    diamonds = 0
    while inp.find("<>") != -1:
        inp = inp.replace("<>", "", 1)
        diamonds = diamonds + 1
    print(diamonds)
