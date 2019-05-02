(defun approved(x y z)
    (not (< (/ (+ x y z) 3) 6))
)

(defun main()
    (setq x (read))
    (setq y (read))
    (setq z (read))
    (write-line (write-to-string (approved x y z)))
)

(main)
