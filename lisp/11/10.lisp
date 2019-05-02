;; if      (x > y) && (x > z) then x
;; else if (y > x) && (y > z) then y
;; else     z

(defun greater(x y z)
    (cond
        ((and (> x y) (> x z)) x)
        ((and (> y x) (> y z)) y)
        (t z)
    )
)

(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))
    (write-line (write-to-string (greater a b c)))
)

(main)
