(defun useless_abs(x)
    (if (< x 0)
        (- x)
        x
    )
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (useless_abs x)))
)

(main)
