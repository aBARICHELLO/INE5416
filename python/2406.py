# -*- coding: utf-8 -*-
repeat = int(input())

while repeat > 0:
    a = input()
    stack = []
    string = ''
    setFalse = 0

    if a == '':
        string = 'S'
    else:
        count = 0
        for i in a:
            if i == '(':
                stack.append(')')
            elif i == '[':
                stack.append(']')
            elif i == '{':
                stack.append('}')
            elif (i == ')') or (i == ']') or (i == '}'):
                if not stack:
                    setFalse = 1
                    break
                else:
                    b = stack.pop()
                    if i != b:
                        setFalse = 1
                        break
            count = count + 1
        if len(stack) != 0:
            setFalse = 1
        else:
            string = 'S'

    if setFalse == 1:
        string = 'N'
    print(string)
    repeat = repeat -1
