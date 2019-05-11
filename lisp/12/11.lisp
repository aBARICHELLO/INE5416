(defun getNList(l x)
    (if (null l)
        -1
        (if (= x 0)
            (car l)
            (getNList (cdr l) (- x 1))
        )
    )
)

(defun firstElementsList(l x)
    (sliceList l 0 (- x 1))
)

(defun sliceList(l x y)
    (if (/= x y)
        (append (list (getNList l x)) (sliceList l (+ x 1) y))
        (list (getNList l y))
    )
)

(defun main()
    (setq l (list 0 11 12 10 0))
    (write-line (write-to-string (firstElementsList l 3))) ;; 0 11 12
)

(main)
