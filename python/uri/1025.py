#  -*- coding: utf-8  -*-
import bisect
def find_in_bissect(number, arr):
    index = (bisect.bisect_left(arr, number))
    if index < len(arr) and arr[index] == number:
       return index + 1
    else:
       return -1
sequence = 1
while True:
    n, q = list(map(int,input().split()))
    if n == 0 and q == 0:
        break
    print("CASE# %d:" % sequence)
    sequence += 1
    l = []
    for i in range(n+q):
        if i < n:
            l.append(int(input()))
        if i == (n-1):
            l.sort()
        if i >= n:
            i = int(input())
            index = find_in_bissect(i, l)

            if index == -1:
                print(str(i) + " not found")
            else:
                print(str(i) + " found at " + str(index))

