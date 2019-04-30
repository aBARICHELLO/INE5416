import Matrices

main = do
    -- Matrices module tests
    print emptyMatrix
    print identityMatrix
    print ((get identityMatrix 0 0) == 1)
    print ((get identityMatrix 0 1) == 0)

    print "Exercises:"

    -- // 8A //
    print (elementSum emptyMatrix)
    print (elementSum identityMatrix)

    -- // 8B //
    print (sumMatrix emptyMatrix emptyMatrix)
    print (sumMatrix identityMatrix identityMatrix)
