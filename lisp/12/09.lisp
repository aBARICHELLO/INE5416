(defun invertList(l)
    (if (null l)
        ()
        (append (invertList (cdr l)) (list (car l)))
    )
)

(defun main()
    (setq l (list 10 9 8 7 6 5))
    (write-line (write-to-string (invertList l))) ;; 5 6 7 8 9 10
)

(main)
