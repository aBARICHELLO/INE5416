(defun _map(fn l)
    (if (null l)
        ()
        (cons (funcall fn (car l)) (_map fn (cdr l)))
    )
)

(defun main ()
    (write-line (write-to-string (_map (function (lambda (x) (= 0 (mod x 2)))) '(0 1 2 3 4 5))))
)

(main)
