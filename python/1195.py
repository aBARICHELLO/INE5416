#  -*- coding: utf -8  -*-
from sys import stdout as w


class Node:
    def __init__(self, val):
        self.l = None
        self.r = None
        self.v = val

class Tree:
    def __init__(self):
        self.root = None
        self.buf = ""

    def getRoot(self):
        return self.root

    def add(self, val):
        if self.root == None:
            self.root = Node(val)
        else:
            self._add(val, self.root)

    def _add(self, val, node):
        if val < node.v:
            if node.l != None:
                self._add(val, node.l)
            else:
                node.l = Node(val)
        else:
            if node.r != None:
                self._add(val, node.r)
            else:
                node.r = Node(val)

    def printTree(self):
        if self.root != None:
            self._printTree(self.root)

    def printBuf(self):
        print(self.buf)
        self.buf = ""

    def printTreeLeft(self):
        if self.root != None:
            self._printTreeLeft(self.root)

    def printTreeRight(self):
        if self.root != None:
            self._printTreeRight(self.root)

    def _printTree(self, node):
        if node != None:
            self._printTree(node.l)
            self.buf += str(node.v) + " "
            self._printTree(node.r)

    def _printTreeLeft(self, node):
        if node != None:
            self.buf += str(node.v) + " "
            self._printTreeLeft(node.l)
            self._printTreeLeft(node.r)

    def _printTreeRight(self, node):
        if node != None:
            self._printTreeRight(node.l)
            self._printTreeRight(node.r)
            self.buf += str(node.v) + " "


cases = int(input())
for i in range(0, cases):
    elements = int(input())
    data = str(input()).split()
    tree = Tree()
    for el in data:
        tree.add(int(el))
    print("Case " + str(i + 1) + ":")
    w.write("Pre.: ")
    tree.printTreeLeft()
    tree.printBuf()

    w.write("In..: ")
    tree.printTree()
    tree.printBuf()

    w.write("Post: ")
    tree.printTreeRight()
    tree.printBuf()

    print()
