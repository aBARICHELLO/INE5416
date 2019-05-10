(defun sumList(l)
    (if (null l)
        0
        (+ (car l) (sumList (cdr l)))
    )
)

(defun main()
    (setq l (list 5 5 5 5 5)) ;; 25
    (write-line (write-to-string (sumList l)))
)

(main)
