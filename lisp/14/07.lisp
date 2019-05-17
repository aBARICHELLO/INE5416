(defun filter(fn l)
    (if (not (null l))
        (if (funcall fn (car l))
            (append (list (car l)) (filter fn (cdr l)))
            (filter fn (cdr l))
        )
    )
)

(defun main ()
    (write-line (write-to-string
        (filter (function (lambda (x) (= 1 (mod x 2)))) '(0 1 2 3 4 5))
    ))
)

(main)
