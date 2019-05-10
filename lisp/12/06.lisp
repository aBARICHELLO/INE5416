(defun occurrencesList(l x)
    (if (null l)
        0
        (if (= (car l) x)
            (+ 1 (occurrencesList (cdr l) x))
            (occurrencesList (cdr l) x)
        )
    )
)

(defun main()
    (setq l (list 10 0 0 0 0)) ;; 4
    (write-line (write-to-string (occurrencesList l 0)))
)

(main)
