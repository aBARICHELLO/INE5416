(defun operate(op x y)
    (cond
        ((eq op '+) (+ x y))
        ((eq op '-) (- x y))
        ((eq op '*) (* x y))
        ((eq op '/) (/ x y))
        (t "Unexpected operator")
    )
)

(defun main()
    (setq op (read))
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (operate op x y)))
)

(main)
