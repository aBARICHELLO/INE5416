(defun is_div(x y)
    (= 0 (mod x y))
)

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (is_div x y)))
)

(main)
