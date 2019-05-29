(defun maior(a)
    (setq m (aref a 0 0)) ;; aref permite acessar uma posição i j da matriz, neste caso acesso a posição 0,0 da matriz a
    (dotimes (i 3) ;; dotimes permite realizar um número fixo de iterações
        (dotimes (j 3)
            (if (> (aref a i j) m)
                (setq m (aref a i j))
            )
        )
    )

)

;; essa funcao aceita entradas com repetição mais que 3 vezes
;; esse problema tenta ser resolvido na função limpa3mais
;; que remove os elementos que se repetiram mais de 2 vezes
(defun duasVezes(l m n)
    (if (not (null l))
        (if (is_in_list2 (car l) l)
            (append (list(car l)) (duasVezes (cdr l) m n))
            (duasVezes (cdr l) m n)
        )
    )
)

(defun limpa3mais (listaOriginal listaDuasVezes)
    (if (not (null listaOriginal))
        (if (maisQueDois (car listaOriginal) listaOriginal)
            (limpa3mais (cdr listaOriginal) (removeRepetidos listaDuasVezes (car listaOriginal)))
            (limpa3mais (cdr listaOriginal) listaDuasVezes)
        )
        listaDuasVezes
    )
)

(defun removeRepetidos(lista n)
    (if (not (null lista))
        (if (= (car lista) n)
            (append (removeRepetidos (cdr lista) n))
            (append (list(car lista)) (removeRepetidos (cdr lista) n))
        )
    )
)

;; matrix to array
(defun flatten(a m n)
    (setq l '())
    (dotimes (i m)
        (dotimes (j n)
            (setq l (append l (list (aref a i j))))
        )
    )
    l
)

(defun is_in_list(x a)
    (not (null (member x a)))
)

(defun occurrencesList(l x)
    (if (null l)
        0
        (if (= (car l) x)
            (+ 1 (occurrencesList (cdr l) x))
            (occurrencesList (cdr l) x)
        )
    )
)

;; is in list two times
(defun is_in_list2(x l)
    (= 2 (occurrencesList l x))
)

(defun maisQueDois(x l)
    (> 2 (occurrencesList l x))
)

;; Para essa questão transformamos a matrix em uma lista!
(defun main()
    (setq matrix3x3 (make-array '(3 3) :initial-contents '(
        (0 1 2)
        (3 4 5)
        (6 7 8)
    )))

    (setq repeated_matrix (make-array '(3 3) :initial-contents '(
        (7 7 1)
        (7 5 5)
        (0 0 6)
    )))

    ;; (write-line (write-to-string (flatten matrix3x3 3 3)))
    (write-line (write-to-string (flatten repeated_matrix 3 3)))

    ;; (write-line (write-to-string (is_in_list 8 (flatten repeated_matrix 3 3))))
    ;; (write-line (write-to-string (is_in_list 0 (flatten repeated_matrix 3 3))))

    ;; (write-line (write-to-string (is_in_list2 0 (flatten repeated_matrix 3 3))))
    ;; (write-line (write-to-string (is_in_list2 7 (flatten repeated_matrix 3 3))))

    (write-line (write-to-string (duasVezes (flatten repeated_matrix 3 3) 3 3)))
    ;; (write-line (write-to-string (duasVezes magic_square 3 3)))
)

(main)
