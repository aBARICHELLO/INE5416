(defun searchList(l x)
    (if (null l)
        NIL
        (if (= (car l) x)
            T
            (searchList (cdr l) x)
        )
    )
)

(defun main()
    (setq l (list 10 0 0 0 0))
    (write-line (write-to-string (searchList l 101)))
)

(main)
