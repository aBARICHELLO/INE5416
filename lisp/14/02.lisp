;; (\x y z -> if ((x + y + z) / fromIntegral 3) >= 6.0 then True else False)

(defun main()
    (setq x (read))
    (setq y (read))
    (setq z (read))
    (write-line (write-to-string (
        (lambda (x y z)
        (>= (/ (+ x y z) 3) 6)) x y z
    )))
)

(main)
