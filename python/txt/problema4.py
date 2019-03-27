import math
<<<<<<< Updated upstream
a, b, c = str(input()).split()
a = float(a)
b = float(b)
c = float(c)
delta = lambda a, b, c: (b**2) - 4*a*c
bhaskara = lambda a, b, c: ((-b + sqrt(delta(a,b,c)))/(2 * a), (-b - sqrt(delta(a,b,c)))/(2 * a)) if delta(a,b,c) > 0 else ((-b + sqrt(delta(a,b,c)))/(2 * a), None) if delta == 0 else (None, None)
print(bhaskara(a,b,c))
=======

x, y, z = str(input()).split()
x = int(x)
y = int(y)
z = int(z)
bhaskara = lambda x, y, z: if  -y + math.sqrt(math.pow(y, 2) - 4 * x)
print(bhaskara(x, y, z))
>>>>>>> Stashed changes
