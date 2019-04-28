import Matrices

main = do
    -- TESTS
    print emptyMatrix
    print testMatrix
    print ((get testMatrix 0 0) == 0 && (get testMatrix 3 3) == 8)
