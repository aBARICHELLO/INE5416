# -*- coding: utf-8 -*-
# flag = 0
# flag1 = 0
num = [] #int num[1001];

n = int(input())
while True:
    if n == 0: break
    j = 1
    flag = 0
    flag1 = 0
    stack = []
    num = str(input())
    print(num.split())
    for i in range(0, len(num)):
        if num[i] == 0:
            flag = 1
            print()
            break

    i = 1
    while True:
        if i > n: break
        if flag1 == 1: break
        if flag == 1: break
        while True:
            if len(stack) != 0 and stack[0] == num[i]:
                stack.pop()
                break
            elif j <= n:
                stack.append(j)
                j += 1
                if stack[0] == num[i]:
                    stack.pop()
                    break
            else:
                flag = 1
                break
        i += 1

    if flag == 1: break
    if len(stack) == 0:
        print("Yes")
    else:
        print("No")
