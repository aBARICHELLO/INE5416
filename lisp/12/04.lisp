(defun _min(x y)
    (if (< x y)
        x
        y
    )
)

(defun _max(x y)
    (if (> x y)
        x
        y
    )
)

(defun minList(l)
    (if (null (cdr l))
        (car l)
        (_min (car l) (minList (cdr l)))
    )
)

(defun maxList(l)
    (if (null (cdr l))
        (car l)
        (_max (car l) (maxList (cdr l)))
    )
)

(defun diffMinMax(l)
    (- (maxList l) (minList l))
)

(defun main()
    (setq l (list 5 5 -5 5 5)) ;; 10
    (write-line (write-to-string (diffMinMax l)))
)

(main)
