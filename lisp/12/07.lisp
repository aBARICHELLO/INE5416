(defun getNList(l x)
    (if (or (null l))
        -1
        (if (= x 0)
            (car l)
            (getNList (cdr l) (- x 1))
        )
    )
)

(defun main()
    (setq l (list 10 0 0 0 0))
    (write-line (write-to-string (getNList l 0))) ;; 10
)

(main)
