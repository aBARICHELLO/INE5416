inpt = []
while True:
    try:
        inpt.append(int(input()))
    except EOFError:
        break
even = lambda x: True if x % 2 == 0 else False
l = lambda lst: list(map(even, inpt))
print(l(inpt))
