(defun greaterThanZero(x)
    (> x 0)
)

(defun _map(fn l)
    (if (null l)
        ()
        (cons (funcall fn (car l)) (_map fn (cdr l)))
    )
)

(defun main()
    (setq l (list 10 -9 8 -7 6 5))
    (write-line (write-to-string (_map (function greaterThanZero) l))) ;; T NIL T NIL T T
)

(main)
