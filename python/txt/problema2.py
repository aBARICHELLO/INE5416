x, y, z = str(input()).split()
x = int(x)
y = int(y)
z = int(z)
result = lambda a, b, c: "y" if (a + b + c / 3) > 6 else "n"
print(result(x, y, z))