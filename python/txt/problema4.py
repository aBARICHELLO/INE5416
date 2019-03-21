import math

x, y, z = str(input()).split()
x = int(x)
y = int(y)
z = int(z)
bhaskara = lambda x, y, z: -y + math.sqrt(math.pow(y, 2) - 4 * x)
print(bhaskara(x, y, z))