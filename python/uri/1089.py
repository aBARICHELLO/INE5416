#  -*- coding: utf -8  -*-
while True:
    number = int(input())
    if number == 0:
        break
    h = [int(x) for x in input().split()]
    h.append(h[0])
    h.append(h[1])
    pic = 0
    for i in range(1, number+1):
        if h[i] < h[i+1] and h[i] < h[i-1]:
            pic = pic + 1
        elif h[i] > h[i-1] and h[i] > h[i+1]:
            pic = pic + 1
    print(pic)