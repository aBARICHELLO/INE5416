(defun pow(x y)
    (if (= 0 y)
        1
        (expt x y)
    )
)

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (pow x y)))
)

(main)
