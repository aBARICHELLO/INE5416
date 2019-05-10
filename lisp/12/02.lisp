(defun sumList(l)
    (if (null l)
        0
        (+ (car l) (sumList (cdr l)))
    )
)

(defun lengthList(l)
    (if (null l)
        0
        (+ 1 (lengthList (cdr l)))
    )
)

(defun average(l)
    (if (null l)
        0
        (/ (sumList l) (lengthList l))
    )
)

(defun main()
    (setq l (list 5 5 5 5 5)) ;; 5
    (write-line (write-to-string (average l)))
)

(main)
