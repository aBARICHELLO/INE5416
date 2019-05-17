;; matrices.lisp

(defun maior(a)
    (setq m (aref a 0 0)) ;; aref permite acessar uma posição i j da matriz, neste caso acesso a posição 0,0 da matriz a
    (dotimes (i 3) ;; dotimes permite realizar um número fixo de iterações
        (dotimes (j 3)
            (if (> (aref a i j) m)
                (setq m (aref a i j))
            )
        )
    )
    m
)

(defun sum_line(matrix line)
    (setq sum 0)
    (setq n (array-dimension matrix 0))

    (dotimes (j n)
        (setq sum (+ sum (aref matrix line j)))
    )
    sum
)

(defun sum_column(matrix column)
    (setq sum 0)
    (setq n (array-dimension matrix 0))

    (dotimes (i n)
        (setq sum (+ sum (aref matrix i column)))
    )
    sum
)

(defun sum_primary_diagonal(matrix)
    (setq sum 0)
    (setq n (array-dimension matrix 0))

    (dotimes (i n)
        (setq sum (+ sum (aref matrix i i)))
    )
    sum
)

(defun sum_secondary_diagonal(matrix)
    (setq sum 0)
    (setq n (array-dimension matrix 0))

    (dotimes (i n)
        (setq sum (+ sum (aref matrix i (- (- n 1) i))))
    )
    sum
)

;;
;; Magic square functions
;;

(defun is_magic_square(matrix)
    (and
        (is_magic_square_lines matrix)
        (is_magic_square_columns matrix)
        (is_magic_square_diagonals matrix)
    )
)

(defun is_magic_square_lines(matrix)
    (setq line_sum 0)
    (setq sum_first (sum_line matrix 0))
    (setq n (array-dimension matrix 0))

    (dotimes (i (- n 1))
        (setq line_sum (sum_line matrix (+ i 1)))
        (if (/= line_sum sum_first)
            (return NIL)
            (setq line_sum 0)
        )
    )
    (= line_sum 0)
)

(defun is_magic_square_columns(matrix)
    (setq column_sum 0)
    (setq sum_first (sum_line matrix 0))
    (setq n (array-dimension matrix 0))

    (dotimes (i (- n 1))
        (setq column_sum (sum_line matrix (+ i 1)))
        (if (/= column_sum sum_first)
            (return NIL)
            (setq column_sum 0)
        )
    )
    (= column_sum 0)
)

(defun is_magic_square_diagonals(matrix)
    (=
        (sum_primary_diagonal matrix)
        (sum_secondary_diagonal matrix)
    )
)

(defun main()
    (setq matrix3x3 (make-array '(3 3) :initial-contents '(
        (0 1 2)
        (3 4 5)
        (6 7 8)
    )))

    (setq magic_square (make-array '(3 3) :initial-contents '(
        (2 7 6)
        (9 5 1)
        (4 3 8)
    )))

    ;; Original tests
    ;; (write-line (write-to-string matrix3x3)) ;; imprimindo uma matriz
    ;; (write-line (write-to-string (aref matrix3x3 0 0)))
    ;; (write-line (write-to-string (aref matrix3x3 1 1)))
    ;; (write-line (write-to-string (maior matrix3x3))) ;; passando uma matriz como parâmetro
    ;; (setf (aref matrix3x3 0 1) 33) ;; alterando o elemento da posição 0,1 para 33
    ;; (write-line (write-to-string (maior matrix3x3)))
    ;; (write-line (write-to-string (sum_line magic_square 0)))
    ;; (write-line (write-to-string (sum_line magic_square 1)))
    ;; (write-line (write-to-string (sum_line magic_square 2)))
    ;; (write-line (write-to-string (sum_column magic_square 0)))
    ;; (write-line (write-to-string (sum_column magic_square 1)))
    ;; (write-line (write-to-string (sum_column magic_square 2)))
    ;; (write-line (write-to-string (sum_primary_diagonal magic_square)))
    ;; (write-line (write-to-string (sum_secondary_diagonal magic_square)))

    (write-line (write-to-string (is_magic_square matrix3x3)))
    (write-line (write-to-string (is_magic_square magic_square)))
)

(main)
