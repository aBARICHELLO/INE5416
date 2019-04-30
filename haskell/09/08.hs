import Matrices

main = do
    -- Matrices module tests
    print emptyMatrix
    print identityMatrix
    print ((get identityMatrix 0 0) == 0 && (get identityMatrix 3 3) == 8)

    -- // 8A //
    print (elementSum emptyMatrix)
    print (elementSum identityMatrix)

    -- // 8B //
    print (sumMatrix emptyMatrix emptyMatrix)
    print (sumMatrix identityMatrix identityMatrix)
