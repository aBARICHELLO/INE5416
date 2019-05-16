;; (\x y -> (x && not y) || (not x && y))

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string ((lambda (x y) (or (and x (not y)) (and (not x) y))) x y) ))
)

(main)
