(defun mdc (x y)
    (mdc_recursive (max x y) (min x y))
)

(defun mdc_recursive (x y)
    (if (= (mod x y) 0)
        y
        (mdc_recursive y (mod x y))
    )
)

(defun main ()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (mdc x y)))
)

(main)
