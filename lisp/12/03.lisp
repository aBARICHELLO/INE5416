(defun minList(l)
    (if (null (cdr l))
        (car l)
        (_min (car l) (minList (cdr l)))
    )
)

(defun _min(x y)
    (if (< x y)
        x
        y
    )
)

(defun main()
    (setq l (list 5 5 -5 5 5)) ;; -5
    (write-line (write-to-string (minList l)))
)

(main)
