{--
import math
a, b, c = str(input()).split()
a = float(a)
b = float(b)
c = float(c)
delta = lambda a, b, c: (b**2) - 4*a*c
bhaskara = lambda a, b, c: ((-b + sqrt(delta(a,b,c)))/(2 * a), (-b - sqrt(delta(a,b,c)))/(2 * a)) if delta(a,b,c) > 0 else ((-b + sqrt(delta(a,b,c)))/(2 * a), None) if delta == 0 else (None, None)
print(bhaskara(a,b,c))
--}

main = do
    xStr <- getLine
    let n = (read xStr :: Float)
    let res = fib n
    print res

delta a b c = (b ^ 2) - 4 * a * c
bhask a b c = ((-b + sqrt(delta a b c))) / (2 * a)
