# -*- coding: utf-8 -*-

class Stack(object):
    def __init__(self, limit = 100):
        self.stack = []
        self.limit = limit

    # for printing the stack contents
    def __str__(self):
        return ' '.join([str(i) for i in self.stack])

    # for pushing an element on to the stack
    def push(self, data):
        if len(self.stack) >= self.limit:
            print('Stack Overflow')
        else:
            self.stack.append(data)

    # for popping the uppermost element
    def pop(self):
        if len(self.stack) <= 0:
            return -1
        else:
            return self.stack.pop()

    # for peeking the top-most element of the stack
    def peek(self):
        if len(self.stack) <= 0:
            return -1
        else:
            return self.stack[len(self.stack) - 1]

    # to check if stack is empty
    def isEmpty(self):
        return self.stack == []

    # for checking the size of stack
    def size(self):
        return len(self.stack)

def match(a, b):
    if a == "(" and b == ")":
        return True
    elif a == "{" and b == "}":
        return True
    elif a == "[" and b == "]":
        return True
    else:
        return False

def isbalanced(line):
    stack = Stack()
    valid = True
    for char in line:
        if char == "(" or char == "[" or char == "{":
            stack.push(char)

        if char == "}" or char == "]" or char == ")":
            element = stack.peek()
            if stack.isEmpty() or not match(element, char):
                valid = False
            else:
                stack.pop()


    if valid and stack.isEmpty():
        print("S")
    else:
        print("N")


cases = int(input())
for i in range(0, cases):
    line = str(input())
    isbalanced(line)
