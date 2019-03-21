x, y, z = str(input()).split()
x = int(x)
y = int(y)
z = int(z)
values = [x, y, z]
m = lambda x, y, z: x if x > y and x > z else y if y > x and y > z else z
print(m(x, y, z))
