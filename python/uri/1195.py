#  -*- coding: utf -8  -*-
class Node:
    def __init__(self, val):
        self.l = None
        self.r = None
        self.v = val

class Tree:
    def __init__(self):
        self.root = None
        self.buf = ""

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

    def printBuf(self):
        print(self.buf)
        self.buf = ""

    def printTree(self, node):
        if node != None:
            self.printTree(node.l)
            self.buf += " %s" % str(node.v)
            self.printTree(node.r)

    def printTreeLeft(self, node):
        if node != None:
            self.buf += " %s" % str(node.v)
            self.printTreeLeft(node.l)
            self.printTreeLeft(node.r)

    def printTreeRight(self, node):
        if node != None:
            self.printTreeRight(node.l)
            self.printTreeRight(node.r)
            self.buf += " %s" % str(node.v)


cases = int(input())
for i in range(0, cases):
    elements = int(input())
    data = str(input()).split()
    tree = Tree()
    for el in data:
        tree.add(int(el))
    print("Case %d:" % (i + 1))
    print("Pre.:", end="")
    tree.printTreeLeft(tree.root)
    tree.printBuf()

    print("In..:", end="")
    tree.printTree(tree.root)
    tree.printBuf()

    print("Post:", end="")
    tree.printTreeRight(tree.root)
    tree.printBuf()
    print()
