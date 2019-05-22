(defun is_palindrome(l)
    (if (null l)
        T
        (and
            (last_equals_n (cdr l) (car l))
            (is_palindrome (pop_back (cdr l)))
        )
    )
)

(defun last_equals_n(l n)
    (if (null l)
        NIL
        (if (null (cdr l))
 (setq start_x 1000)
(setq dec 10)

(defun main ()
    (write-line (write-to-string (recursive_dec ())))
)

(main)
           (= (car (last l)) n)
            (last_equals_n (cdr l) n)
        )
    )
)

(defun pop_back(l)
    (if (null (cdr l))
        ()
        (cons (car l) (pop_back (cdr l)))
    )
)

(defun main()
    (write-line (write-to-string (is_palindrome '(1 2 3 3 2 1))))
    (write-line (write-to-string (is_palindrome '(2 2 3 3 2 1))))
    (write-line (write-to-string (is_palindrome '(3 2 3 3 2 1))))
)

(main)
