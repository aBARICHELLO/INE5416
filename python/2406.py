#  -*- coding: utf -8  -*-
class Stack:
    def __init__(self):
        self.stack = []

    def add(self, dataval):
        if dataval not in self.stack:
            self.stack.append(dataval)
            return True
        else:
            return False

    def peek(self):
        try:
            a = self.stack[0]
        except Exception:
            return None
        return a

    def remove(self):
        if len(self.stack) <= 0:
            return None
        else:
            return self.stack.pop()


def isbalanced(line):
    stack = Stack()
    for char in line:
        if char == "(" or char == "[" or char == "{":
            stack.add(char)
        if stack.peek() == None:
            return False
        if char == ")":
            a = stack.peek()


cases = int(input())
for i in range(0, cases):
    line = str(input())
    print(line)
    if isbalanced(line):
        print("s")
    else:
        print("N")

