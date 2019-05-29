(defun mediaDisciplina(p1 p2 p3 t1 t2 t3 ex)
    (+
        (* (/ (+ p1 p2 p3) 3) 0.5)
        (* (/ (+ t1 t2 t3) 3) 0.4)
        (* ex 0.1)
    )
)

(defun main()
    (write-line (write-to-string (mediaDisciplina 6 6 6 6 6 6 6)))
)

(main)
